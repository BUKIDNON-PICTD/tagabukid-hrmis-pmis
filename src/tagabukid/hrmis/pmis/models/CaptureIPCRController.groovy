import com.rameses.rcp.annotations.*;
import com.rameses.rcp.common.*;
import com.rameses.seti2.models.*;
import com.rameses.annotations.Env
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*;
import com.rameses.util.*;


class CaptureIPCRController extends CrudFormModel{
    @Binding
    def binding;
    
    @Service("TagabukidSIMService")
    def svc
    
    @Service("TagabukidBehavioralService") 
    def bsvc
    
    def selectedEmployee;
    def selectedDPCR;
    def selectedIPCR;
    def selectedBehavrioral;
    
//    def selectedType;
    def node;
    def typelist;
    
              
    
    def selectedtypes = ['Client', 'Peer', 'Supervisor',];
    def periods = ['1st', '2nd',];
    
            
    
   
    void afterCreate(){
       
        entity = svc.initCreate();
        
//        entity.behavior = [:];
//        entity.ratingbehavior = [];
//        entity.definition = [];
//        entity.ratingdefinition = [];
//        entity.successindicator = [];
//        entity.ratingsuccessidicicator = [];
        
    }
    
     Map createEntity() {
                def m = [parentid:node.objid, type:selectedType,behavioralrating:[:],];
//                m.parent = [code:node.code, title: node.title];
                caller.refresh();
                return m;
            }
            
      
            
            
           
     
    
    public void beforeSave(o){
        if(mode == 'create' ) {
            entity.ipcrno = svc.getIPCRNo();
            entity.employee.PersonId = entity.employee.PersonId.toString();
            entity.reviewerid = entity.reviewer.PersonId.toString();
            entity.supervisorid = entity.supervisor.PersonId.toString();
            entity.approverid = entity.approver.PersonId.toString();
          
            entity.employee.dpcrlist.each{ dp ->
                dp.ipcrlist.each{
                    def item =[
                        successindicatorid : it.successindicator.objid,
                        qid : it.q.objid,
                        eid : it.e.objid,
                        tid : it.t.objid,
                    ]
                    println item
                    entity.items.add(item);
                }
            }
            
        }
    }
    
     public void afterOpen(){
     
        entity.employee = svc.findProfileById(entity.employee.PersonId);
        entity.officeassigned = svc.findOrgById(entity.orgid).Entity.Name;
        entity.employee.dpcrlist = svc.getSIByIPCRId(entity.objid);

        
//        entity.employee.dpcrlist.each{
//            
//        }
        println entity
    }
    def getLookupSignatory(){
        return Inv.lookupOpener('pmis:lookupPostgreHrmis',)
    }
    
    def getLookupEmployee(){
        return Inv.lookupOpener('pmis:lookupPostgreHrmis',)
    }
    
//    def getLookupOfficeAssigned(){
//        return InvokerUtil.lookupOpener('pmis:lookuporg');
//    }
    
    def getLookupIPCRSuccessIndicator(){
        return InvokerUtil.lookupOpener('pmis:lookupIPCR',[dpid:selectedDPCR.dpid]);
    }
    
    def getLookupRatingQ(){
        return InvokerUtil.lookupOpener('pmis:lookupRating',[ipid:selectedIPCR.successindicator.objid,type:'Q']);
    }
    
    def getLookupRatingT(){
        return InvokerUtil.lookupOpener('pmis:lookupRating',[ipid:selectedIPCR.successindicator.objid,type:'T']);
    }
    
    def getLookupRatingE(){
        return InvokerUtil.lookupOpener('pmis:lookupRating',[ipid:selectedIPCR.successindicator.objid,type:'E']);
    }
    public def searchDPCR(){
        return Inv.lookupOpener('pmis:lookuporg',[
                   searchtext :entity.officeassigned,
                   onselect :{
                       entity.orgid = it.OrgUnitId
                       entity.org.name = it.Entity.Name
                       entity.org.code = it.Entity.AcronymAbbreviation
                       entity.employee.dpcrlist = svc.getSIByEmployeeOffice(it)
                       entity.officeassigned = it.Entity.Name
                       binding.refresh('entity.officeassigned');
                       dpcrListHandler.reload();
                   }
               ])
    }
    
     
    
    // wattatempura
    
    def listHandlertypes = [
                 
                 fetchList  : { 
//                      return entity.behaviorallist?.typelist;
  
                  },
                  
//         onRemoveItem : {
//            if (MsgBox.confirm('Delete item?')){                
//                entity.selecetedtypes.remove(it)
//                listHandlertypes?.load();
//                return true;
//            }
//            return false;
//        },
                      createItem : {
                return[
                behaviorallist : [],
            ]
        },      
                  onAddItem  : { 
                     
                         it.typelist = svc.getBehavioral(it)
                   
                    },
             
               onColumnUpdate: {item,column-> 
            },
             ] as EditorListModel  

    
    
    
        def behavioralRatingHandler = [
                  fetchList  : { 
                    
                  },
                  createItem : { return [objid:'BR' + new java.rmi.server.UID(),
                                 rating:[]   
            ]},
                  onAddItem : {
                      it.entity = svc.getbehvioralrating (it)
                      entity.b << it
                    },

               onColumnUpdate: {item,column-> 
//                if (!item.rating) { 
//               // def o = entity.members.find{ it.member.objid == item.member.objid } 
//                throw new Exception('Cannot add anymore.'); 
//            } 
            },
           
            ] as EditorListModel   

//    def employeeListHandler = [
////        getRows : { entity.employees.size() + 1 },
//        fetchList: { entity.employees },
//        createItem : {
//            return[
//                dpcrlist : [],
//            ]
//        },
//        onRemoveItem : {
//            if (MsgBox.confirm('Delete item?')){                
//                entity.employees.remove(it)
//                employeeListHandler?.load();
//                return true;
//            }
//            return false;
//        },
//        onAddItem : {
//          it.dpcrlist = svc.getSIByEmployeeOffice(it)
//          entity.employees << it;
//         
//        },
//        validate:{li->
//            def item=li.item;
////            checkDuplicate(entity.employees,item);
//        }
//    ] as EditorListModel
    def dpcrListHandler = [
//        getRows : { entity.employees.size() + 1 },
        fetchList: { return entity.employee?.dpcrlist},
//        createItem : {
//            return[
//                objid : 'DPCR' + new java.rmi.server.UID(),
//                ipcrlist : [],
//            ]
//        },
      
    ] as EditorListModel
    
//    def dpcrListHandler = [
////        getRows : { entity.employees.size() + 1 },
//        fetchList: { selectedEmployees?.dpcrlist},
////        createItem : {
////            return[
////                objid : 'DPCR' + new java.rmi.server.UID(),
////                ipcrlist : [],
////            ]
////        },
//      
//    ] as EditorListModel
    
    def ipcrListHandler = [
//        getRows : { entity.employees.size() + 1 },
        fetchList: { selectedDPCR?.ipcrlist },
//        createItem : {
//            return[
//                objid : 'IPCR' + new java.rmi.server.UID(),
//            ]
//        },
        onRemoveItem : {
            if (MsgBox.confirm('Delete item?')){                
                selectedDPCR.ipcrlist.remove(it)
                ipcrListHandler?.load();
                return true;
            }
            return false;
        },
        onAddItem : {
            
            //println entity.employees.find{it.PersonId == selectedEmployee.PersonId}.dpcrlist.find{it.objid = selectedDPCR.objid}
            selectedDPCR.ipcrlist << it;
//            entity.employees.find{it.PersonId == selectedEmployee.PersonId}.dpcrlist.find{it.objid = selectedDPCR.objid}.ipcrlist << it;
//            println entity.employee
        },
        validate:{li->
            def item=li.item;
//            checkDuplicate(selectedDPCR,item);
        }
    ] as EditorListModel
    
    void checkDuplicate(listtofilter,item){
        println listtofilter
        def data = listtofilter.find{it.PersonId == item.PersonId }
        if (data)
        throw new Exception("Duplicate item is not allowed.")
    }   
}     
        

        
   

