pageextension 63214 "PSGPosted_Sales_Credit_Memos" extends "Posted Sales Credit Memos"
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
