sap.ui.define(["sap/ui/core/mvc/Controller"],function(e){"use strict";return e.extend("postapp.controller.View1",{onInit:function(){},onPress:async function(e){debugger;var t=this.byId("input-1").getValue();var n=this.byId("input-b").getValue();var a=this.byId("input-e").getValue();var r="getcallfromodata";var i=this.getView().getModel().bindContext(`/${r}(...)`);i.setParameter("po_number",t);i.setParameter("contract_no",n);i.setParameter("vendor_code",a);try{await i.execute();let e=i.getBoundContext();let t=e.getValue();let n=t.value;this.byId("input-c").setValue(n.vendorName);this.byId("input-f").setValue(n.email);this.byId("input-d").setValue(n.vendorGstin)}catch(e){console.log(e)}}})});