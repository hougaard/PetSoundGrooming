pageextension 63211 "PSGPosted_Sales_Invoice" extends "Posted Sales Invoice"
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
