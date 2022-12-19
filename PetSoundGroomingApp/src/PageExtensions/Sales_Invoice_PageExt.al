pageextension 63208 "PSGSales_Invoice" extends "Sales Invoice"
{
    layout
    {
        AddAfter("Sell-to Customer Name")
        {
            field("Pet_PSG"; Rec."Pet")
            {
                ApplicationArea = all;
            }
        }


    }
    actions
    {

    }
}
