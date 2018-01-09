import com.rameses.rcp.annotations.*;
import com.rameses.rcp.common.*;
import com.rameses.seti2.models.*;
import com.rameses.annotations.Env
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*;
import com.rameses.seti2.models.CrudFormModel;
import com.rameses.util.*


 class TransactionController extends CrudFormModel{
 @Binding
    def binding;
    
    @Service("TagabukidSubayTransactionService")
    def svc
                
    def entity;            
                
              public void afterCreate(){
                entity.lastname = [];
                entity.middlename = [];
                entity.firstname = [];          
    }
           
                def getlookupProfile(){
                return Inv.lookupOpener('pmisemployee:lookupPostgreHrmis',[
               
                      onselect :{

                        selectedItem.lastname = it.entity.lastname;
                        selectedItem.firstname = it.entity.firstname;
                        selectedItem.middlename = it.entity.middlename
                         
                        // selectedItem.objid = it.OrgUnitId;
                        // selectedItem.name = it.Entity.Name;
                        // selectedItem.code = it.Entity.AcronymAbbreviation;
                        },
                ])
            }
           //       def listHandler = [
           //     getRows : { entity.transaction.employee.size() + 1 },
             //   fetchList: { entity.entity.transaction.employee },
             //   onRemoveItem : {
                //    if (MsgBox.confirm('Delete item?')){                
                 //       entity.entity.transaction.employee.remove(it)
                 //       listHandler?.load();
                   //     return true;
               //     }
                //    return false;
              //  },
             //   onAddItem : {
                  
             //       entity.entity.transaction.employee << it;
            //    },
            //    validate:{li->
             //       def item=li.item;
           //         checkDuplicate(entity.entity.transaction.employee,item);
          //      }
          //  ] as EditorListModel
            
          //  void checkDuplicate(listtofilter,item){
         //       def data = listtofilter.find{it.objid == item.objid }
          //      if (data)
         //       throw new Exception("Duplicate item is not allowed.")
         //   }   
        }     
        
   

