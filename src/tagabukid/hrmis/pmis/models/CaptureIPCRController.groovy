import com.rameses.rcp.annotations.*;
import com.rameses.rcp.common.*;
import com.rameses.seti2.models.*;
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*;
import com.rameses.util.*;


class CaptureIPCRController extends CrudFormModel{
    @Binding
    def binding;
    
    @Service("TagabukidIPCRService")
    def svc
    
    @Service("PersistenceService")
    def persistenceSvc;
    //    @Service("TagabukidBehavioralService") 
    //    def bsvc
    
    def selectedEmployee;
    def selectedDPCR;
    def selectedIPCR;
    def selectedBehavioralType;
    def selectedBehavioralRating;
        def selectedType;
    def node;
        def selectedtypes = ['Client', 'Peer', 'Supervisor',];
        def ratinglist = [1,2,3,4,5];
    
    boolean viewReportAllowed = false;

    def periods = ['1st', '2nd',];
    
    void afterCreate(){
        entity = svc.initCreate();
    }
    
    public void beforeSave(o){
        entity.ipcritems = [];
        if(mode == 'create' ) {
            entity.ipcrno = svc.getIPCRNo();
            entity.employee.PersonId = entity.employee.PersonId.toString();
            entity.reviewerid = entity.reviewer.PersonId.toString();
            entity.deptheadid = entity.depthead.PersonId.toString();
            entity.approverid = entity.approver.PersonId.toString();
            entity.dpcrlist.each{ dp ->
                if (dp.ipcrlist.size() == 0){
                    throw new Exception("Please add at least one Success Indicator")
                }
                
                dp.ipcrlist.each{
                    def item =[
                        successindicatorid : it.successindicator.objid,
                        qid : it.q?.objid,
                        eid : it.e?.objid,
                        tid : it.t?.objid,
                    ]
                    entity.ipcritems.add(item);
                }
            }
            //            entity.behavioraltypelist.each{ dp ->
            //                dp.bahavioralratinglist.each{
            //                    it.behavioralid = it.objid
            //                    it.objid = 'IPBI' + new java.rmi.server.UID()
            //                }
            //            }
        }else{
//            println entity
            //            entity.ipcrno = svc.getIPCRNo();
            entity.employee.PersonId = entity.employee.PersonId.toString();
            entity.reviewerid = entity.reviewer.PersonId.toString();
            entity.deptheadid = entity.depthead.PersonId.toString();
            entity.approverid = entity.approver.PersonId.toString();
            
            entity.dpcrlist.each{ dp ->
                if (dp.ipcrlist.size() == 0){
                    throw new Exception("Please add at least one Success Indicator")
                }
                def z = [_schemaname:'pmis_ipcr_items',findBy: [:]]
                z.findBy.ipcrid = entity.objid
                persistenceSvc.removeEntity(z)
                dp.ipcrlist.each{
                    
                    it.successindicatorid = it.successindicator.objid
                    it.qid = it.q?.objid
                    it.eid = it.e?.objid
                    it.tid = it.t?.objid
                    entity.ipcritems.add(it);
                }
            }
            
            
        }
    }
    
    public void afterOpen(){
        entity.dpcrlist = svc.getDPCRByIPCRId(entity.objid);
        entity.behavioraltypelist.each{ 
            it.bahavioralratinglist = svc.getBehavioralRatingList(it.objid);
        }.sort{it.type}
        //        println entity
        behavioralTypeListHandler.reload();
        dpcrListHandler.reload();
    }
    
    
    def getLookupSignatory(){
        return Inv.lookupOpener('pmis:lookupPostgreHrmis',)
    }
    
    def getLookupEmployee(){
        return Inv.lookupOpener('pmis:lookupPostgreHrmis',)
    }
    
    def getLookupPosition(){
        return Inv.lookupOpener('pmisposition:lookup',)
    }
    
    //    def getLookupOfficeAssigned(){
    //        return InvokerUtil.lookupOpener('pmis:lookuporg');
    //    }
    
    def getLookupDPCRSuccessIndicator(){
        return InvokerUtil.lookupOpener('pmis:lookupDPCR',[orgid:entity.orgid,
                onselect :{
                    entity.dpcrlist << it
                    checkDuplicateDPCR(entity.dpcrlist,it)
                    dpcrListHandler.reload();
                }
            ]);
    }
    
    def getLookupIPCRSuccessIndicator(){
        return InvokerUtil.lookupOpener('pmis:lookupIPCR',[dpid:selectedDPCR.dpid]);
    }
    
    //    def getLookupRatingQ(){
    //        return InvokerUtil.lookupOpener('pmis:lookupRating',[ipid:selectedIPCR.successindicator.objid,type:'QUALITY']);
    //    }
    //    
    //    def getLookupRatingT(){
    //        return InvokerUtil.lookupOpener('pmis:lookupRating',[ipid:selectedIPCR.successindicator.objid,type:'TIMELINESS']);
    //    }
    //    
    //    def getLookupRatingE(){
    //        return InvokerUtil.lookupOpener('pmis:lookupRating',[ipid:selectedIPCR.successindicator.objid,type:'EFFICIENCY']);
    //    }
    
    def getLookupRatingQ(){
        return InvokerUtil.lookupOpener('pmissuccessindicatorratingtype:lookup',[ipid:selectedIPCR.successindicator.objid,type:'QUALITY']);
    }
    
    def getLookupRatingT(){
        return InvokerUtil.lookupOpener('pmissuccessindicatorratingtype:lookup',[ipid:selectedIPCR.successindicator.objid,type:'TIMELINESS']);
    }
    
    def getLookupRatingE(){
        return InvokerUtil.lookupOpener('pmissuccessindicatorratingtype:lookup',[ipid:selectedIPCR.successindicator.objid,type:'EFFICIENCY']);
    }
    public def searchDPCR(){
        return Inv.lookupOpener('pmis:lookuporg',[
                searchtext :entity.org.name,
                onselect :{
                    entity.orgid = it.OrgUnitId
                    entity.org.name = it.Entity.Name
                    entity.org.code = it.Entity.AcronymAbbreviation
                    entity.dpcrlist = svc.getSIByEmployeeOffice(it)
                    //                    entity.officeassigned = it.Entity.Name
                    binding.refresh('entity.org.name');
                    dpcrListHandler.reload();
                }
            ])
    }
    
    def getLookupBehavior(){
        return InvokerUtil.lookupOpener('pmis:lookupBehavior',[type:selectedBehavioralType.type]);
    }
    
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
        fetchList: { return entity?.dpcrlist},
        //        validate:{li->
        //            def item=li.item;
        //            checkDuplicateDPCR(entity.dpcrlist,item);
        //        }
        //        onRemoveItem : {
        //            if (MsgBox.confirm('Delete item?')){                
        //                selectedDPCR.remove(it)
        //                dpcrListHandler?.load();
        //                return true;
        //            }
        //            return false;
        //        }
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
        createItem : {
            return[
                objid : 'IPI' + new java.rmi.server.UID(),
            ]
        },
        onRemoveItem : {
            if (MsgBox.confirm('Delete item?')){                
                selectedDPCR.ipcrlist.remove(it)
                svc.removeIPCRItem(it);
                ipcrListHandler?.load();
                return true;
            }
            return false;
        },
        onAddItem : {
            
            //println entity.employees.find{it.PersonId == selectedEmployee.PersonId}.dpcrlist.find{it.objid = selectedDPCR.objid}
            selectedDPCR.ipcrlist.add(it);
            //            entity.employees.find{it.PersonId == selectedEmployee.PersonId}.dpcrlist.find{it.objid = selectedDPCR.objid}.ipcrlist << it;
            //            println entity.employee
        },
        validate:{li->
            def item=li.item;
            checkDuplicateIPCR(selectedDPCR.ipcrlist,item);
        }
    ] as EditorListModel
    
    void checkDuplicateDPCR(listtofilter,item){
        println listtofilter
        println item
        def data = listtofilter.find{it.objid == item.objid && it.objid != selectedDPCR.objid}
        if (data){
            throw new Exception("Duplicate item is not allowed.")
        }
    }   
    
    void checkDuplicateIPCR(listtofilter,item){
        def data = listtofilter.find{it.successindicator.objid == item.successindicator.objid && it.objid != selectedIPCR.objid}
        if (data){
            throw new Exception("Duplicate item is not allowed.")
        }
    }   
    
    def behavioralTypeListHandler = [
        fetchList  : { 
            return entity?.behavioraltypelist;
        },
        onRemoveItem : {
            if (MsgBox.confirm('Delete item?') && entity.behavioraltypelist.findAll{it.type=='Client'}.size() == 6 && entity.behavioraltypelist.findAll{it.type=='Peer'}.size() == 3 && entity.behavioraltypelist.findAll{it.type=='Supervisor'}.size() == 1 ){                
                selectedBehavioralType.remove(it)
                behavioralTypeListHandler?.load();
                return true;
            }
            return false;
        },
        createItem : {
            return[
                bahavioralratinglist : [],
            ]
        },
        onAddItem : {
            it.bahavioralratinglist = svc.getBahavioralRating(it.type)
            entity.behavioraltypelist << it
        }
    ] as EditorListModel  
    
    
    
    
    def behavioralRatingListHandler = [
        fetchList  : { return selectedBehavioralType?.bahavioralratinglist },
        onRemoveItem : {
            if (MsgBox.confirm('Delete item?')){                
                selectedBehavioralRating.remove(it)
                behavioralRatingListHandler?.load();
                return true;
            }
            return false;
        }
        //        ,
        //        onAddItem : {
        //            selectedBehavioralType.bahavioralratinglist << it;
        //        },
    ] as EditorListModel 
    
    def preview() {
        def op = Inv.lookupOpener( "pmisipcrpreview:report", [entity: entity] );
        op.target = 'self';
        return op;
    }
    def viewReport() {
        def op = Inv.lookupOpener( "pmisipcrprint:report", [entity: entity] );
        op.target = 'self';
        return op;
    }
}     





