pageextension 63210 "PSGSales_List" extends "Sales List"
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
