table 63390 "PetTypePSG"
{
    TableType = Normal;
    Caption = 'Pet Type';
    fields
    {

        field(1; Type; Code[20])
        {
            Caption = 'Type';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
        field(3;"Group"; Option)
        {
            Caption = 'Group';
            DataClassification = ToBeClassified;
            OptionMembers = "Dog","Cat","Reptile","Horse","Rabbit";
        }


    }
    keys
    {
        key(PK;Type)
        {
            Clustered = true;
        }

    }

}
