pageextension 63206 "PSGSales_Quote" extends "Sales Quote"
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
