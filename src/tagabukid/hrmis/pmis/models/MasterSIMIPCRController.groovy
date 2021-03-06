import com.rameses.osiris2.common.*;
import com.rameses.rcp.common.*;
import com.rameses.rcp.annotations.*;
import com.rameses.osiris2.client.*;
import java.rmi.server.*;
          
class MasterSIMIPCRController extends CRUDController {
        
    @Caller
    def caller;
    def qualityitem;
    def successindicatorquality
    def selectedQuality
    def type
    def qualitybaseline
    def timelinessbaseline
    def efficiencybaseline
    
    @Service("TagabukidSIMService")
    def simsvc
    
    @Service("TagabukidPMISSuccessIndicatorTitleVerificationService")
    def verifySvc
    
    @Service("PersistenceService")
    def persistenceSvc;
    
    String entityName = "sim";
    def node;
    boolean showConfirmOnSave = false;

    public String getServiceName() {
        return caller.getServiceName();
    }
            
    public String getTitle() {
        return caller.getTitle();
    }  
            
    public String getPrefixId() {
        return caller.getPrefixId();
    }
            
    public def getAccountService() {
        return caller.simService;
    }

    Map createEntity() {
        def m = [parentid:node.objid, type:'ip',qualities:[],timeliness:[],efficiency:[],];
        m.parent = [code:node.code, title: node.title];
        //        m.qualities  = [[rating:5],[rating:4],[rating:3],[rating:2],[rating:1]]
        //        m.timeliness = [[rating:5],[rating:4],[rating:3],[rating:2],[rating:1]]
        //        m.efficiency = [[rating:5],[rating:4],[rating:3],[rating:2],[rating:1]]
        caller.refresh();
        return m;
    }
            
            
    def qualityHandler = [
        fetchList  : { 
            //            println entity.qualities
            return entity.qualities
        },
        //createItem : { return [objid:'PPI' + new java.rmi.server.UID(), parentid:entity.objid] },
        onAddItem : {
            entity.qualities << it;
        },
                    
        onColumnUpdate: {item,column-> 
            if (!item.rating) { 
                // def o = entity.members.find{ it.member.objid == item.member.objid } 
                throw new Exception('Cannot add anymore.'); 
            } 
        },
                   
              
              
                
    ] as EditorListModel   
            
            
    def timelinessHandler = [
        fetchList :{
            return entity.timeliness
                  
        },
        onAddItem : {
            //it.objid = 'SIT' + new java.rmi.server.UID();
            //it.siid = entity.objid;
            //it.type = 'T';
            entity.timeliness << it;
                    
        },
        onColumnUpdate: {item,column-> 
            if (!item.rating) { 
                // def o = entity.members.find{ it.member.objid == item.member.objid } 
                throw new Exception('Cannot add anymore.'); 
            } 
        },
              
                
    ] as EditorListModel   
            
            
    def efficiencyHandler = [
        fetchList :{
            return entity.efficiency
        },
        onAddItem : {
            // it.objid = 'SIE' + new java.rmi.server.UID();
            // it.siid = entity.objid;
            // it.type = 'E';
            entity.efficiency << it;
                    
        },
        onColumnUpdate: {item,column-> 
            if (!item.rating) { 
                // def o = entity.members.find{ it.member.objid == item.member.objid } 
                throw new Exception('Cannot add anymore.'); 
            } 
        },
                
    ] as EditorListModel
    
    def getLookupqualitybaseline(){
        //        return InvokerUtil.lookupOpener('pmis:lookupratingbaseline',[
        //                type:'Q',
        //                onselect :{
        //                    def q = simsvc.getSuccessIndicatorRatingByBaseline(it)
        //                    entity.qualities.each{ itq ->
        //                        itq.title = q.find{it.rating == itq.rating}.title
        //                    }
        //                    binding.refresh('entity');
        //                    qualityHandler.reload();
        //                }
        //            ]);

        return InvokerUtil.lookupOpener('pmisratingbaselinemasterfile:lookup',[
                type:'QUALITY',
                onselect :{
                    entity.qualities = persistenceSvc.read([ _schemaname: 'pmis_rating', objid:it.objid]).items.sort{-it.rating}
                    println entity.qualities
                    binding.refresh('entity');
                    qualityHandler.reload();
                }
            ]);
    }       
    def getLookuptimelinessbaseline(){
        //        return InvokerUtil.lookupOpener('pmis:lookupratingbaseline',[
        //                type:'T',
        //                onselect :{
        //                    def t = simsvc.getSuccessIndicatorRatingByBaseline(it)
        //                    entity.timeliness.each{ itt ->
        //                        itt.title = t.find{it.rating == itt.rating}.title
        //                    }
        //                    binding.refresh('entity');
        //                    timelinessHandler.reload();
        //                }
        //            ]);
        return InvokerUtil.lookupOpener('pmisratingbaselinemasterfile:lookup',[
                type:'TIMELINESS',
                onselect :{
                    entity.timeliness = persistenceSvc.read([ _schemaname: 'pmis_rating', objid:it.objid]).items.sort{-it.rating}
                    binding.refresh('entity');
                    timelinessHandler.reload();
                }
            ]);
    }    
    def getLookupefficiencybaseline(){
        //        return InvokerUtil.lookupOpener('pmis:lookupratingbaseline',[
        //                type:'E',
        //                onselect :{
        //                    def e = simsvc.getSuccessIndicatorRatingByBaseline(it)
        //                    entity.efficiency.each{ ite ->
        //                        ite.title = t.find{it.rating == ite.rating}.title
        //                    }
        //                    binding.refresh('entity');
        //                    efficiencyHandler.reload();
        //                }
        //            ]);
        return InvokerUtil.lookupOpener('pmisratingbaselinemasterfile:lookup',[
                type:'EFFICIENCY',
                onselect :{
                    entity.efficiency = persistenceSvc.read([ _schemaname: 'pmis_rating', objid:it.objid]).items.sort{-it.rating}
                    binding.refresh('entity');
                    efficiencyHandler.reload();
                }
            ]);
    }
    
    void beforeSave( o ) {
        def searchList  = verifySvc.getList(entity); 
        if(searchList) {
            if( searchList.find{ it.weight == 100 } )
            throw new Exception("Exact Success Indicator exist.");

        }
    } 
    def titleLookup = [
        fetchList: { o->
            o._tag = 'ip';
            return simsvc.getList(o).title;
        }
    ] as SuggestModel;
    def transferParent() {
        return InvokerUtil.lookupOpener( "pmisdp:lookup", [
                onselect: { o->
                    
                    if (o.objid == entity.objid){
                        throw new Exception("Cannot Transfer " + entity.title  + " to " + entity.title);
                    }
                    else if(o.type != 'mfo'){
                        throw new Exception("Cannot transfer to different parent type");
                    }
                    if( MsgBox.confirm('You are about to transfer this success indicator to another dp?') ) {
                        simsvc.changeParent( [parentid:o.objid, objid:entity.objid] );
                        entity.parentid = o.objid;
                        entity.parent = o;
                        caller.refresh();
                        binding.refresh();
                    }
                }
            ]);
    }     

}  