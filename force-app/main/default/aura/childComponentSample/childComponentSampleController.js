({
    handleClick: function(component, event, helper) {
        component.set("v.message", event.getSource().get("v.label"));     // update our message
    }
})