tableextension 63207 "PSGSales_Invoice_Header" extends "Sales Invoice Header"
{

    fields
    {
        field(63200;"Pet"; Code[20])
        {
            Caption = 'Pet';
            DataClassification = ToBeClassified;
            TableRelation = "PetPSG"."PetNo";
        }

    }
}
