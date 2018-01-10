import com.rameses.rcp.annotations.*;
import com.rameses.rcp.common.*;
import com.rameses.seti2.models.*;
import com.rameses.annotations.Env
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*;
import com.rameses.util.*;


class TransactionController extends CrudFormModel{
    @Binding
    def binding;
    
    @Service("TagabukidSubayTransactionService")
    def svc
                
    String serviceName = 'TagabukidIPCRService';
    String entityName = 'pdrc_ipcr';
    
    def selectedEmployee;
    def selectedDPCR;
    def selectedIPCR;
    
    def period = ['1st', '2nd'];
    void afterCreate(){
        entity.employees = [];
        entity.DPCR = [];
        entity.IPCR = [];
             
    }
                
    def getLookupEmployee(){
        return Inv.lookupOpener('pmis:lookupPostgreHrmis',[
                onselect :{
                    selectedEmployee.lastname = it.Name.LastName;
                    selectedEmployee.firstname = it.Name.FirstName;
                    selectedEmployee.middlename = it.Name.MiddleName;
                    selectedEmployee.officeappointment = it.Entity.Name;
                },
            ])
    }
    
    def getLookupOfficeAssigned(){
        return InvokerUtil.lookupOpener('pmis:lookuporg');
    }
    
    def getLookupIPCR(){
        return InvokerUtil.lookupOpener('pmis:lookupIPCR',dpcr:selectedDPCR);
    }
    def employeeListHandler = [
//        getRows : { entity.employees.size() + 1 },
        fetchList: { entity.employees },
        createItem : {
            return[
                DPCRlist : [],
            ]
        },
        onRemoveItem : {
            if (MsgBox.confirm('Delete item?')){                
                entity.employees.remove(it)
                listHandler?.load();
                return true;
            }
            return false;
        },
        onAddItem : {
            if(!entity.employees){
                entity.employees = []
            }
            entity.employees << it; 
        },
        validate:{li->
            def item=li.item;
            checkDuplicate(entity.employees,item);
        }
    ] as EditorListModel
            
    void checkDuplicate(listtofilter,item){
        def data = listtofilter.find{it.PersonId == item.PersonId }
        if (data)
        throw new Exception("Duplicate item is not allowed.")
    }   
}     
        

        
   

