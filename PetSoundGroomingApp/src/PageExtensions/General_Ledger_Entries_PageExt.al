pageextension 63200 "PSGGeneral_Ledger_Entries" extends "General Ledger Entries"
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
