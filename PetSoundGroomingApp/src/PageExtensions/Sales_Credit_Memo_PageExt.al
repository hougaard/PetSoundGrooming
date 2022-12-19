pageextension 63209 "PSGSales_Credit_Memo" extends "Sales Credit Memo"
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
