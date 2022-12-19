tableextension 63204 "PSGSales_Header" extends "Sales Header"
{

    fields
    {
        field(63200;"Pet"; Code[20])
        {
            Caption = 'Pet';
            DataClassification = ToBeClassified;
            TableRelation = "PetPSG"."PetNo";
        }
        field(63201;"Mikedemo"; Text[45])
        {
            Caption = 'Mike Demo';
            DataClassification = ToBeClassified;
        }

    }
}
