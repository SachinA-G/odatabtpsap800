using demo as sample from '../db/schema';

service MyService {
   

// @odata.draft.enabled
    entity poheader  as projection on sample.poheader;

    entity polineitem as projection on sample.polineitem;

    function getcallfromodata(po_number : String , contract_no : String , vendor_code : String) returns String;
        
  
}
