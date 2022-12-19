table 63431 "Visit LinePSG"
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
        field(10; Description; Text[100])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
        field(11; ItemNo; Code[20])
        {
            Caption = 'ItemNo';
            DataClassification = ToBeClassified;
            TableRelation = "Item"."No.";
            trigger OnValidate()
            var
                RelRec : Record "Item";
            begin
                RelRec.Setrange("No.", Rec.ItemNo);
                RelRec.FindFirst();
                Rec.Validate(ItemDesc,RelRec."Description");
                Rec.Validate(UnitPrice,RelRec."Unit Price");
            end;
        }
        field(12; ItemDesc; Text[100])
        {
            Caption = 'ItemDesc';
            DataClassification = ToBeClassified;
        }
        field(13; UnitPrice; Decimal)
        {
            Caption = 'Unit Price';
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                LineTotal := UnitPrice * Qty;
            end;
        }
        field(14; Qty; Decimal)
        {
            Caption = 'Qty';
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                LineTotal := UnitPrice * Qty;
            end;
        }
        field(15; LineTotal; Decimal)
        {
            Caption = 'Line Total';
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                LineTotal := UnitPrice * Qty;
            end;
        }

        field(99999; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK;VisitNo,"Line No.")
        {
            Clustered = true;
        }

    }

}
