({
    doInit : function(component, event, helper) {
        
    },
    
    createAccount : function(component,event){
        var accountNameComponent = component.find("accName");
        var accountName =accountNameComponent.get("v.value");
        
        var action = component.get("c.upsertAccountFromApp");
        action.setParams({
            accName : accountName
        });
        
        action.setCallback(this,function(response){
            var state = response.getState();
            console.log('state = '+state);
            if(state == 'SUCCESS'){
                alert('FROM SERVER = '+state);
            }
        });
        
        $A.enqueueAction(action);

    }
    
    
})