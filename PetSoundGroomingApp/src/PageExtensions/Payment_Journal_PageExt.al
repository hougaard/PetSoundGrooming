pageextension 63218 "PSGPayment_Journal" extends "Payment Journal"
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
