sap.ui.define([
  "sap/ui/core/mvc/Controller"
],
  /**
   * @param {typeof sap.ui.core.mvc.Controller} Controller
   */
  function (Controller) {
    "use strict";

    return Controller.extend("postapp.controller.View1", {
      onInit: function () {

      },
      onPress: async function (oEvent) {
        debugger
       // try {
          var po_number = this.byId("input-1").getValue();
          var contract_number = this.byId("input-b").getValue();
          var vendor_code = this.byId("input-e").getValue();

          var fname = 'getcallfromodata';
          var fname1 = this.getView().getModel().bindContext(`/${fname}(...)`);
          
          fname1.setParameter('po_number', po_number);
          fname1.setParameter('contract_no', contract_number);
          fname1.setParameter('vendor_code', vendor_code);
        //   var data ={
        //     po_no: po_number,
        //     contract_no : contract_number,
        //     vendor_code: vendor_code
        //   }
          
        //   fname1.setParameter('data', JSON.stringify(data));
        //   // fname1.setParameter('contract_no', contract_number);
        //   // fname1.setParameter('vendor_code', vendor_code);

        //   await fname1.execute();
        // } catch (error) {
        //   debugger
        //   console.log(error)
        // }



        try {
          await fname1.execute();
          let context = fname1.getBoundContext();
          let getdata = context.getValue();
          let headerdata = getdata.value;
          this.byId("input-c").setValue(headerdata.vendorName)
          this.byId("input-f").setValue(headerdata.email)
          this.byId("input-d").setValue(headerdata.vendorGstin)

      } catch (error) {
          //
          console.log(error)
      }

      }
    });
  });
