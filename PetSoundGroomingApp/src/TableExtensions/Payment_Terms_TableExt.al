tableextension 63200 "PSGPayment_Terms" extends "Payment Terms"
{

    fields
    {
        modify("Description")
        {
             Caption = 'Eriks Description';
        }
        modify("Due Date Calculation")
        {
             Caption = 'Due XXX';
        }

    }
}
