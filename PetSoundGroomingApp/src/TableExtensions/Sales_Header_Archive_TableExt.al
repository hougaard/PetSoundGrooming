tableextension 63209 "PSGSales_Header_Archive" extends "Sales Header Archive"
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
