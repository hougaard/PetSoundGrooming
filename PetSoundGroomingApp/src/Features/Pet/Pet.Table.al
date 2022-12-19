table 63400 "PetPSG"
{
    TableType = Normal;
    Caption = 'Pet';
    fields
    {

        field(1; PetNo; Code[20])
        {
            Caption = 'Pet No.';
            DataClassification = ToBeClassified;
        }
        field(2; Type; Code[20])
        {
            Caption = 'Type';
            DataClassification = ToBeClassified;
            TableRelation = "PetTypePSG"."Type";
        }
        field(3; Name; Text[50])
        {
            Caption = 'Name';
            DataClassification = ToBeClassified;
        }
        field(10; Weight; Decimal)
        {
            Caption = 'Weight';
            DataClassification = ToBeClassified;
        }
        field(11; Height; Decimal)
        {
            Caption = 'Height';
            DataClassification = ToBeClassified;
        }
        field(12; Birthday; Date)
        {
            Caption = 'Birthday';
            DataClassification = ToBeClassified;
        }
        field(20; Food; Text[200])
        {
            Caption = 'Food';
            DataClassification = ToBeClassified;
        }
        field(21; FPD; Integer)
        {
            Caption = 'Feeding per day';
            DataClassification = ToBeClassified;
        }
        field(22; Vet; Code[20])
        {
            Caption = 'Vet';
            DataClassification = ToBeClassified;
            TableRelation = "Vendor"."No.";
            trigger OnValidate()
            var
                RelRec : Record "Vendor";
            begin
                RelRec.Setrange("No.", Rec.Vet);
                RelRec.FindFirst();
                Rec.Validate(VetName,RelRec."Name");
                Rec.Validate(diottest,RelRec."DIOT Type of Operation");
            end;
        }
        field(23; VetName; Text[100])
        {
            Caption = 'VetName';
            DataClassification = ToBeClassified;
        }
        field(24;diottest; Option)
        {
            Caption = 'diottest';
            DataClassification = ToBeClassified;
            OptionMembers = "1","2","3","4";
        }


    }
    keys
    {
        key(PK;PetNo)
        {
            Clustered = true;
        }

    }
    trigger OnInsert()
    var
        Setup : Record "SetupPSG";
        IsHandled: Boolean;
        NoSeriesMgt : Codeunit NoSeriesManagement;
        NewNoSeries : Code[20];
    begin
        IsHandled := false;
        OnBeforeInsert(Rec, IsHandled);
        if IsHandled then
            exit;
        if Rec."PetNo" = '' then begin
            Setup.Get();
            Setup.TestField("Pet_Number");
            NoSeriesMgt.InitSeries(Setup.Pet_Number, '', 0D, PetNo, NewNoSeries);
        end;
    end;
   local procedure OnBeforeInsert(var Rec: Record "PetPSG"; var IsHandled: Boolean)
   begin
   end;

}
