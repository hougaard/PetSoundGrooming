pageextension 63203 "PSGCustomer_Ledger_Entries" extends "Customer Ledger Entries"
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
