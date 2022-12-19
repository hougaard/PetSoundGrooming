pageextension 63213 "PSGPosted_Sales_Invoices" extends "Posted Sales Invoices"
{
    layout
    {
        AddAfter("No.")
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
