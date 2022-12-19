pageextension 63216 "PSGPurchase_Journal" extends "Purchase Journal"
{
    layout
    {
        AddAfter("Description")
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
