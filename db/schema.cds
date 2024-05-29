namespace demo;


entity poheader {
  key po_number          : String;
  key registration_id    : String;
      contract_number    : String;
      vendor_code        : String;
      vendor_name        : String;
      vendor_gstin       : String;
      status             : String;
      status_criticality : Integer;
      purchase_doc       : String;
      document_date      : String;
      company_code       : String;
      purchasing_org     : String;
      comment            : String;
      creation_date      : Date;
      po_to_item         : Composition of many polineitem
                             on po_to_item.po_number = po_number;
//    po_to_invoice      : Composition of many invoice
//                              on po_to_invoice.po_number = po_number;
//     po_to_file         : Association to many Files
//                              on po_to_file.po_number = po_number;
}

entity polineitem {
  key itemno              : String;
  key po_number           : String;
      item_desc           : String;
      item_desc_cond      : String;
      plant               : String;
      unit_price          : String;
      quantity            : String;
      cgst_percentage     : String;
      sgst_percentage     : String;
      cgst_value          : String;
      cgst_value_static   : String;
      sgst_value          : String;
      sgst_value_static   : String;
      amount              : String;
      amount_value_static : String;
      quantity_static     : String;
      checked             : String @default: false;
      item_to_po          : Association to one poheader
                              on item_to_po.po_number = po_number;

}
