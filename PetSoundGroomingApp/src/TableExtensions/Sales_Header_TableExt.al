tableextension 63203 "PSGSales_Header" extends "Sales Header"
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
