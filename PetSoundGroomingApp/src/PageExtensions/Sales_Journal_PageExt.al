pageextension 63215 "PSGSales_Journal" extends "Sales Journal"
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
