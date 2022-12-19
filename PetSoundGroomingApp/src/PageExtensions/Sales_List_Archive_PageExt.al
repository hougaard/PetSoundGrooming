pageextension 63220 "PSGSales_List_Archive" extends "Sales List Archive"
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
