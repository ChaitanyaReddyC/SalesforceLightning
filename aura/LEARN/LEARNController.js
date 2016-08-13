({
	doInit : function(component, event, helper) {
        var stage='first';
       
		component.set("v.stage",stage);
        console.log(component.get("v.stage"));
	}
})