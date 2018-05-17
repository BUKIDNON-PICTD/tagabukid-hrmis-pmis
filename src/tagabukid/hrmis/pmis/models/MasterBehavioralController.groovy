import com.rameses.rcp.annotations.*;
import com.rameses.rcp.common.*;
import com.rameses.seti2.models.*;
import com.rameses.annotations.Env
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*;
import com.rameses.util.*;

class BehavioralController extends CrudFormModel{
    @Binding
    def binding;
    
    def types = ['Client', 'Peer', 'Supervisor'];  
}     





