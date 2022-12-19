table 63432 "Finished Visit HeaderPSG"
{
    TableType = Normal;
    Caption = 'Salon visit';
    fields
    {

        field(1; VisitNo; Code[20])
        {
            Caption = 'Visit No.';
            DataClassification = ToBeClassified;
        }
        field(2; PetNo; Code[20])
        {
            Caption = 'PetNo';
            DataClassification = ToBeClassified;
            TableRelation = "OwnershipPSG"."PetNo";
            trigger OnValidate()
            var
                RelRec : Record "OwnershipPSG";
            begin
                RelRec.Setrange("PetNo", Rec.PetNo);
                RelRec.FindFirst();
                Rec.Validate(Name,RelRec."Name");
                Rec.Validate(CustomerNo,RelRec."CustomerNo");
            end;
        }
        field(3; Name; Text[50])
        {
            Caption = 'Name';
            DataClassification = ToBeClassified;
        }
        field(4; CustomerNo; Code[20])
        {
            Caption = 'CustomerNo';
            DataClassification = ToBeClassified;
            TableRelation = "Customer"."No.";
            trigger OnValidate()
            var
                RelRec : Record "Customer";
            begin
                RelRec.Setrange("No.", Rec.CustomerNo);
                RelRec.FindFirst();
                Rec.Validate(CustName,RelRec."Name");
            end;
        }
        field(5; CustName; Text[100])
        {
            Caption = 'CustName';
            DataClassification = ToBeClassified;
        }
        field(6; VisitDate; Date)
        {
            Caption = 'Date';
            DataClassification = ToBeClassified;
        }


    }
    keys
    {
        key(PK;VisitNo)
        {
            Clustered = true;
        }

    }
    trigger OnDelete()
    var
        Lines: Record "Finished Visit LinePSG";
    begin
       Lines.SetRange("VisitNo",Rec."VisitNo");
       Lines.DeleteAll();
    end;

}
