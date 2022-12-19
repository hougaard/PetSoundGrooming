table 63410 "SetupPSG"
{
    TableType = Normal;
    Caption = 'Pet Sounds Grooming Setup';
    fields
    {

        field(1; PK; Code[10])
        {
            Caption = 'Primary Key';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(2; "Pet_Number"; Code[20])
        {
            Caption = 'Pet Number series';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series"."Code";
        }
        field(3; "Visit_Number"; Code[20])
        {
            Caption = 'Visit Number series';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series"."Code";
        }


    }
    keys
    {
        key(PK;PK)
        {
            Clustered = true;
        }

    }

}
