/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package tagabukid.hrmis.pmis.models

import com.rameses.osiris2.common.ExplorerViewController;
import com.rameses.rcp.common.*;
import com.rameses.rcp.annotations.*;
import com.rameses.osiris2.client.*;
import com.rameses.osiris2.common.*;

public abstract class SIMController extends ExplorerViewController {
    
    public abstract String getServiceName();
    public abstract Object getSimService();
    public abstract String getTitle();
    
    def params = [:]; 
    
    public String getPrefixId() {
        return "SI";
    }
    public String getDefaultFileType() {
        return "sim";
    }
    
    public String getContext() {
        return "sim";
    }    
    
    def getLookupOrg(){
        return Inv.lookupOpener('pmis:lookuporg',[
                onselect :{
                    params.org = it
//                    println params.org
                },
        ])
    }
        
    public void beforeFetchList( Map qry ) { 
        if ( params ) qry.putAll( params ); 
    }
    
    public void beforeNodes(Map qry){
//        if (!params.searchtext){
//            params.searchtext = '%';
//        }else{
//            params.searchtext = '%';
//        }
        if ( params ) qry.putAll( params ); 
        
    }
//    void sync() {
//        if(! MsgBox.confirm("This will update your current records. Continue? ")) return;
//        getAccountService().syncFromCloud();
//    }
}