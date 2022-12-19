table 63420 "OwnershipPSG"
{
    TableType = Normal;
    Caption = 'Pet Ownership';
    fields
    {
        field(99998; CustomerNo; Code[20])
        {
            Caption = 'Customer No.';
            DataClassification = ToBeClassified;
            TableRelation = "Customer"."No.";
        }
        field(1; PetNo; Code[20])
        {
            Caption = 'PetNo';
            DataClassification = ToBeClassified;
            TableRelation = "PetPSG"."PetNo";
            NotBlank = true;
            trigger OnValidate()
            var
                RelRec : Record "PetPSG";
            begin
                RelRec.Setrange("PetNo", Rec.PetNo);
                RelRec.FindFirst();
                Rec.Validate(Type,RelRec."Type");
                Rec.Validate(Name,RelRec."Name");
            end;
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
            DataClassification = ToBeClassified;
        }
        field(3; Type; Code[20])
        {
            Caption = 'Type';
            DataClassification = ToBeClassified;
        }


    }
    keys
    {
        key(PK;CustomerNo,PetNo)
        {
            Clustered = true;
        }

    }

}
