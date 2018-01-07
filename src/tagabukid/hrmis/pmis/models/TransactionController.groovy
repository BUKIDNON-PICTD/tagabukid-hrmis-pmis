import com.rameses.osiris2.common.*;
import com.rameses.rcp.common.*;
import com.rameses.rcp.annotations.*;
import com.rameses.osiris2.client.*;
import java.rmi.server.*;

public class TransactionController extend CRUDController{
 @Binding
    def binding;
    
    @Service("TagabukidSubayTransactionService")
    def svc
       
                def lookupProfile(){
                return Inv.lookupOpener('pmisemployee:lookupPostgreHrmis',[
                        
                      onselect :{
                    //  selectedItem.objid = it.OrgUnitId;
                    //  selectedItem.name = it.Entity.Name;
                    //  selectedItem.code = it.Entity.AcronymAbbreviation;
                        },
                ])
            }

        }


