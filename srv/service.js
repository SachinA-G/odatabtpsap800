const cds = require('@sap/cds');
const { parseArgs } = require('util');
const axios = require('axios');
const { getAxiosConfigWithDefaults } = require('@sap-cloud-sdk/http-client/dist/http-client');
const { json } = require('express/lib/response');

module.exports = cds.service.impl(async function () {
    let { poheader, polineitem } = this.entities;



    this.on('getcallfromodata', async (req, next) => {
        debugger
        console.log('entrered the fm1');
        var data = JSON.parse(req.data.data);
        debugger
        try {

            var po_no = data.po_no;
            var contract_no = data.contract_no;
            var vendor_code = data.vendor_code;

            console.log('entered fm1 value assianed');

            // Connect to the external service

            var BPA = await cds.connect.to('INVOICE_DEST');
            debugger
            let destt = await BPA.get(`/sap/opu/odata/sap/ZMM_ADVANCE_PAY_SRV/buyerInfoSet(poNo= '${po_no}',contractNo= '${contract_no}',vendorCode= '${vendor_code}')?$expand=advancePaymentLineItemsSet`);
            console.log("GET call successful");


            // Delete existing entries in poheader
            await DELETE.from(poheader);

            // Insert new header entry
            await INSERT.into(poheader).entries({
                po_number: destt.poNo,
                contract_number: destt.contractNo,
                registration_id: '123',
                vendor_code: destt.vendorCode,
                vendor_name: destt.vendorName,
                vendor_gstin: destt.vendorGstin
                // status: "Submitted",
                // status_criticality: '2',
                // company_code: destt.companyCode,
                // purchasing_org: destt.purchasingOrg,
                // creation_date: destt.creation_date
            });

            console.log("After Header insertion");


            // Insert new line item entries
            var len = destt.advancePaymentLineItemsSet.length

            await DELETE.from(polineitem);
            //    await INSERT.into(polineitem).entries({
            //     itemno:'itemmmm',
            //     po_number:destt.poNo
            //    }
            //    )




            await INSERT.into(polineitem).entries(
                destt.advancePaymentLineItemsSet.map(item => ({
                    itemno: item.ItemNumber,
                    po_number: item.poNo,
                    item_desc: `${item.Itemdescription}`,
                    item_desc_cond: `${item.ItemCondnDesc}`,
                    plant: `${item.plant}`,
                    unit_price: `${item.unitPrice}`,
                    quantity: `${item.lineItemQuantity}`,
                    cgst_percentage: `${item.cgstPerc}`,
                    sgst_percentage: `${item.sgstPerc}`,
                    cgst_value_static: `${item.cgstValue}`,
                    sgst_value: `${item.sgstValue}`
                })
                ))

            console.log(destt);
            console.log("Line item inserted");

            // return destt.vendorCode;
            return next();
        } catch (error) {
            console.log("line item Inside Error");
            console.log("Error", error);
        }
    });





    this.on('READ', poheader, async (req, next) => {
        debugger
        try {
            // Connect to the external service
            var BPA = await cds.connect.to('INVOICE_DEST');
            debugger
            let destt = await BPA.get(`/sap/opu/odata/sap/ZMM_ADVANCE_PAY_SRV/buyerInfoSet(poNo='3000000038',contractNo='',vendorCode='0000003020')?$expand=advancePaymentLineItemsSet`);

            console.log("GET call successful");

            // Delete existing entries in poheader
            await DELETE.from(poheader);

            // Insert new header entry
            await INSERT.into(poheader).entries({
                po_number: destt.poNo,
                contract_number: destt.contractNo,
                registration_id: '123',
                vendor_code: destt.vendorCode,
                vendor_name: destt.vendorName,
                vendor_gstin: destt.vendorGstin
                // status: "Submitted",
                // status_criticality: '2',
                // company_code: destt.companyCode,
                // purchasing_org: destt.purchasingOrg,
                // creation_date: destt.creation_date
            });

            console.log("After Header insertion");


            // Insert new line item entries
            var len = destt.advancePaymentLineItemsSet.length

            await DELETE.from(polineitem);
            //    await INSERT.into(polineitem).entries({
            //     itemno:'itemmmm',
            //     po_number:destt.poNo
            //    }
            //    )



            // for(i=0;i<len;i++){

            //     // Delete existing entries in polineitem
            // // await DELETE.from(polineitem).where({itemno : destt.advancePaymentLineItemsSet[i].ItemNumber ,   
            // // po_number :  destt.advancePaymentLineItemsSet[i].poNo}) ; 

            await INSERT.into(polineitem).entries(
                destt.advancePaymentLineItemsSet.map(item => ({
                    itemno: item.ItemNumber,
                    po_number: item.poNo,
                    item_desc: `${item.Itemdescription}`,
                    item_desc_cond: `${item.ItemCondnDesc}`,
                    plant: `${item.plant}`,
                    unit_price: `${item.unitPrice}`,
                    quantity: `${item.lineItemQuantity}`,
                    cgst_percentage: `${item.cgstPerc}`,
                    sgst_percentage: `${item.sgstPerc}`,
                    cgst_value_static: `${item.cgstValue}`,
                    sgst_value: `${item.sgstValue}`
                })
                ))

            console.log(destt);
            console.log("Line Read item inserted");

            return next();
        } catch (error) {
            console.log("line item Inside Error");
            console.log("Error", error);
        }
    });

})