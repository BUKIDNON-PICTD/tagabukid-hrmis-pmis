import com.rameses.rcp.annotations.*;
import com.rameses.rcp.common.*;
import com.rameses.osiris2.client.*;
import com.rameses.osiris2.common.*;
import com.rameses.osiris2.reports.*;

class ReportIPCRController extends ReportController {
    
    @Service("TagabukidPMISReportService")
    def svc;

    def title = "Individual Performance Commitment and Review (IPCR)";
    final String REPORT_PATH = 'tagabukid/hrmis/pmis/reports/ipcr/';
    String reportName = REPORT_PATH + 'ipcrmain.jasper';
    def data
    
    def getReportData() { 
        data = svc.getSIByIPCRId(entity);
        return data.reportdata.ipcrlist
    } 

//    void buildReportData(entity, asyncHandler){
//        svc.getSIByIPCRId(entity, asyncHandler)
//    }

    Map getParameters(){
        return data.parameters;
    }
    
//    SubReport[] getSubReports() {
//        return [ 
//           new SubReport("BEHAVIORAL", REPORT_PATH + "behavioral.jasper"),
//           new SubReport("IPCRITEMS", REPORT_PATH + "ipcritems.jasper"),
//        ] as SubReport[];    
//    }
} 