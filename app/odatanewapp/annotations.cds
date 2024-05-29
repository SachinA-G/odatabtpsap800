using MyService as service from '../../srv/service';
annotate service.poheader with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'po_number',
                Value : po_number,
            },
            {
                $Type : 'UI.DataField',
                Label : 'registration_id',
                Value : registration_id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'contract_number',
                Value : contract_number,
            },
            {
                $Type : 'UI.DataField',
                Label : 'vendor_code',
                Value : vendor_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'vendor_name',
                Value : vendor_name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'vendor_gstin',
                Value : vendor_gstin,
            },
            {
                $Type : 'UI.DataField',
                Label : 'status',
                Value : status,
            },
            {
                $Type : 'UI.DataField',
                Label : 'status_criticality',
                Value : status_criticality,
            },
            {
                $Type : 'UI.DataField',
                Label : 'purchase_doc',
                Value : purchase_doc,
            },
            {
                $Type : 'UI.DataField',
                Label : 'document_date',
                Value : document_date,
            },
            {
                $Type : 'UI.DataField',
                Label : 'company_code',
                Value : company_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'purchasing_org',
                Value : purchasing_org,
            },
            {
                $Type : 'UI.DataField',
                Label : 'comment',
                Value : comment,
            },
            {
                $Type : 'UI.DataField',
                Label : 'creation_date',
                Value : creation_date,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'LineItem',
            ID : 'LineItem',
            Target : 'po_to_item/@UI.LineItem#LineItem',
        },],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'registration_id',
            Value : registration_id,
        },
        {
            $Type : 'UI.DataField',
            Label : 'po_number',
            Value : po_number,
        },
        {
            $Type : 'UI.DataField',
            Label : 'contract_number',
            Value : contract_number,
        },
        {
            $Type : 'UI.DataField',
            Label : 'vendor_code',
            Value : vendor_code,
        },
        {
            $Type : 'UI.DataField',
            Label : 'vendor_name',
            Value : vendor_name,
        },
        {
            $Type : 'UI.DataField',
            Value : po_to_item.po_number,
            Label : 'po_number',
        },
        {
            $Type : 'UI.DataField',
            Value : comment,
            Label : 'comment',
        },
        {
            $Type : 'UI.DataField',
            Value : company_code,
            Label : 'company_code',
        },
        {
            $Type : 'UI.DataField',
            Value : creation_date,
            Label : 'creation_date',
        },
        {
            $Type : 'UI.DataField',
            Value : purchase_doc,
            Label : 'purchase_doc',
        },
        {
            $Type : 'UI.DataField',
            Value : document_date,
            Label : 'document_date',
        },
        {
            $Type : 'UI.DataField',
            Value : purchasing_org,
            Label : 'purchasing_org',
        },
        {
            $Type : 'UI.DataField',
            Value : status,
            Label : 'status',
        },
        {
            $Type : 'UI.DataField',
            Value : status_criticality,
            Label : 'status_criticality',
        },
        {
            $Type : 'UI.DataField',
            Value : vendor_gstin,
            Label : 'vendor_gstin',
        },
    ],
);

annotate service.polineitem with @(
    UI.LineItem #Headerdetails : [
        {
            $Type : 'UI.DataField',
            Value : item_to_po.po_number,
            Label : 'po_number',
        },
        {
            $Type : 'UI.DataField',
            Value : item_to_po.company_code,
            Label : 'company_code',
        },
        {
            $Type : 'UI.DataField',
            Value : item_to_po.contract_number,
            Label : 'contract_number',
        },
        {
            $Type : 'UI.DataField',
            Value : item_to_po.document_date,
            Label : 'document_date',
        },
        {
            $Type : 'UI.DataField',
            Value : item_to_po.purchase_doc,
            Label : 'purchase_doc',
        },
        {
            $Type : 'UI.DataField',
            Value : item_to_po.purchasing_org,
            Label : 'purchasing_org',
        },
        {
            $Type : 'UI.DataField',
            Value : item_to_po.status,
            Label : 'status',
        },
        {
            $Type : 'UI.DataField',
            Value : item_to_po.vendor_code,
            Label : 'vendor_code',
        },
        {
            $Type : 'UI.DataField',
            Value : item_to_po.vendor_gstin,
            Label : 'vendor_gstin',
        },
        {
            $Type : 'UI.DataField',
            Value : item_to_po.vendor_name,
            Label : 'vendor_name',
        },]
);
annotate service.polineitem with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'LineItem',
            ID : 'LineItem',
            Target : '@UI.FieldGroup#LineItem2',
        },],
    UI.FieldGroup #LineItem : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : po_number,
                Label : 'po_number',
            },
            {
                $Type : 'UI.DataField',
                Value : itemno,
                Label : 'itemno',
            },
            {
                $Type : 'UI.DataField',
                Value : item_desc,
                Label : 'item_desc',
            },
            {
                $Type : 'UI.DataField',
                Value : item_desc_cond,
                Label : 'item_desc_cond',
            },
            {
                $Type : 'UI.DataField',
                Value : plant,
                Label : 'plant',
            },
            {
                $Type : 'UI.DataField',
                Value : quantity,
                Label : 'quantity',
            },
            {
                $Type : 'UI.DataField',
                Value : quantity_static,
                Label : 'quantity_static',
            },
            {
                $Type : 'UI.DataField',
                Value : sgst_percentage,
                Label : 'sgst_percentage',
            },
            {
                $Type : 'UI.DataField',
                Value : sgst_value_static,
                Label : 'sgst_value_static',
            },
            {
                $Type : 'UI.DataField',
                Value : sgst_value,
                Label : 'sgst_value',
            },
            {
                $Type : 'UI.DataField',
                Value : cgst_value,
                Label : 'cgst_value',
            },
            {
                $Type : 'UI.DataField',
                Value : cgst_value_static,
                Label : 'cgst_value_static',
            },],
    }
);
annotate service.polineitem with @(
    UI.FieldGroup #LineItem1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    }
);
annotate service.polineitem with @(
    UI.LineItem #Headerdetails1 : [
        {
            $Type : 'UI.DataField',
            Value : item_to_po.po_number,
            Label : 'po_number',
        },{
            $Type : 'UI.DataField',
            Value : item_to_po.purchase_doc,
            Label : 'purchase_doc',
        },{
            $Type : 'UI.DataField',
            Value : item_to_po.purchasing_org,
            Label : 'purchasing_org',
        },{
            $Type : 'UI.DataField',
            Value : item_to_po.status,
            Label : 'status',
        },{
            $Type : 'UI.DataField',
            Value : item_to_po.status_criticality,
            Label : 'status_criticality',
        },{
            $Type : 'UI.DataField',
            Value : item_to_po.vendor_gstin,
            Label : 'vendor_gstin',
        },{
            $Type : 'UI.DataField',
            Value : item_to_po.vendor_code,
            Label : 'vendor_code',
        },{
            $Type : 'UI.DataField',
            Value : item_to_po.vendor_name,
            Label : 'vendor_name',
        },
        {
            $Type : 'UI.DataField',
            Value : cgst_percentage,
            Label : 'cgst_percentage',
        },
        {
            $Type : 'UI.DataField',
            Value : cgst_value,
            Label : 'cgst_value',
        },
        {
            $Type : 'UI.DataField',
            Value : cgst_value_static,
            Label : 'cgst_value_static',
        },
        {
            $Type : 'UI.DataField',
            Value : sgst_value,
            Label : 'sgst_value',
        },
        {
            $Type : 'UI.DataField',
            Value : unit_price,
            Label : 'unit_price',
        },]
);
annotate service.polineitem with @(
    UI.FieldGroup #LineItem2 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : itemno,
                Label : 'itemno',
            },{
                $Type : 'UI.DataField',
                Value : plant,
                Label : 'plant',
            },{
                $Type : 'UI.DataField',
                Value : quantity,
                Label : 'quantity',
            },{
                $Type : 'UI.DataField',
                Value : po_number,
                Label : 'po_number',
            },{
                $Type : 'UI.DataField',
                Value : sgst_percentage,
                Label : 'sgst_percentage',
            },{
                $Type : 'UI.DataField',
                Value : sgst_value,
                Label : 'sgst_value',
            },{
                $Type : 'UI.DataField',
                Value : sgst_value_static,
                Label : 'sgst_value_static',
            },{
                $Type : 'UI.DataField',
                Value : unit_price,
                Label : 'unit_price',
            },{
                $Type : 'UI.DataField',
                Value : cgst_percentage,
                Label : 'cgst_percentage',
            },],
    }
);
annotate service.polineitem with @(
    UI.LineItem #LineItem : [
        {
            $Type : 'UI.DataField',
            Value : amount,
            Label : 'amount',
        },{
            $Type : 'UI.DataField',
            Value : amount_value_static,
            Label : 'amount_value_static',
        },{
            $Type : 'UI.DataField',
            Value : cgst_percentage,
            Label : 'cgst_percentage',
        },{
            $Type : 'UI.DataField',
            Value : cgst_value,
            Label : 'cgst_value',
        },{
            $Type : 'UI.DataField',
            Value : cgst_value_static,
            Label : 'cgst_value_static',
        },{
            $Type : 'UI.DataField',
            Value : checked,
            Label : 'checked',
        },{
            $Type : 'UI.DataField',
            Value : item_desc,
            Label : 'item_desc',
        },{
            $Type : 'UI.DataField',
            Value : item_desc_cond,
            Label : 'item_desc_cond',
        },{
            $Type : 'UI.DataField',
            Value : itemno,
            Label : 'itemno',
        },{
            $Type : 'UI.DataField',
            Value : plant,
            Label : 'plant',
        },{
            $Type : 'UI.DataField',
            Value : po_number,
            Label : 'po_number',
        },{
            $Type : 'UI.DataField',
            Value : quantity,
            Label : 'quantity',
        },{
            $Type : 'UI.DataField',
            Value : quantity_static,
            Label : 'quantity_static',
        },]
);
