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
    
    def selectedEmployee;
    def selectedDPCR;
    def selectedIPCR;
    
    def period = ['1st', '2nd'];
    void afterCreate(){
        entity = svc.initCreate();
        
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
        

        
   

