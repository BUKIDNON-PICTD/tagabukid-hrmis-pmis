/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package tagabukid.hrmis.pmis.models

import com.rameses.osiris2.common.ExplorerViewController;

public abstract class SIMController extends ExplorerViewController {
    
    public abstract String getServiceName();
    public abstract Object getSimService();
    public abstract String getTitle();
    
    public String getPrefixId() {
        return "SI";
    }
    public String getDefaultFileType() {
        return "sim";
    }
    
    public String getContext() {
        return "sim";
    }    

//    void sync() {
//        if(! MsgBox.confirm("This will update your current records. Continue? ")) return;
//        getAccountService().syncFromCloud();
//    }
    
}