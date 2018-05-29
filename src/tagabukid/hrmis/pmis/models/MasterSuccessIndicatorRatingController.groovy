import com.rameses.rcp.annotations.*;
import com.rameses.rcp.common.*;
import com.rameses.seti2.models.*;
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*;
import com.rameses.util.*;

          
class MasterSuccessIndicatorRatingController extends CrudFormModel {
    
    @Binding
    def binding;
    
    def types = ['QUALITY', 'TIMELINESS', 'EFFICIENCY',];  
    def selectedItem;
    
    void afterCreate(){
        entity.state = 'DRAFT'
        entity.items = [[rating:5],[rating:4],[rating:3],[rating:2],[rating:1]]
    }
    public void afterOpen(){
        def x = [[rating:5],[rating:4],[rating:3],[rating:2],[rating:1]]
        x.each{f->
            def c = entity.items.find{it.rating == f.rating}
            if(c){
                f.putAll(c)
            }
        }
        println x
        entity.items = x
        entity.items.sort{-it.rating}
        listHandler.reload();
    }
    
    public void beforeSave(o){
        entity.items.each{
            it.type = entity.type
        }
        if(mode == 'create' ) {
            
        }else{

        }
    }
    
    def listHandler = [
        fetchList  : { 
            return entity.items;
        },
        onAddItem : {
            entity.items << it;
        },
        onColumnUpdate: {item,column-> 
            if (!item.rating) { 
                // def o = entity.members.find{ it.member.objid == item.member.objid } 
                throw new Exception('Cannot add anymore.'); 
            } 
        },
    ] as EditorListModel  
    

}  