pageextension 63212 "PSGPosted_Sales_Credit_Memo" extends "Posted Sales Credit Memo"
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
