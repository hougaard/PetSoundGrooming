tableextension 63206 "PSGItem_Journal_Line" extends "Item Journal Line"
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
