table 63430 "Visit HeaderPSG"
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
        Lines: Record "Visit LinePSG";
    begin
       Lines.SetRange("VisitNo",Rec."VisitNo");
       Lines.DeleteAll();
    end;
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
        if Rec."VisitNo" = '' then begin
            Setup.Get();
            Setup.TestField("Visit_Number");
            NoSeriesMgt.InitSeries(Setup.Visit_Number, '', 0D, VisitNo, NewNoSeries);
        end;
    end;
   local procedure OnBeforeInsert(var Rec: Record "Visit HeaderPSG"; var IsHandled: Boolean)
   begin
   end;

    procedure Post(Doc : Record "Visit HeaderPSG")
    var
        DocLine : Record "Visit LinePSG";
        PostedDoc : Record "Finished Visit HeaderPSG";
        PostedLine: Record "Finished Visit LinePSG";
        IsHandled : Boolean;
    begin
        OnBeforePosting(Doc,IsHandled);
        if IsHandled then
            exit;
        Rec.TestField(VisitDate);

        PostedDoc.Init();
        PostedDoc.TransferFields(Doc);
        PostedDoc.Insert(true);
        DocLine.SetRange(VisitNo, Doc.VisitNo);
        if DocLine.FindSet() then
            repeat

                PostedLine.Init();
                PostedLine.TransferFields(DocLine);
                PostedLine.Insert(true);
            until DocLine.Next() = 0;
        Doc.Delete(true);
        DocLine.DeleteAll(true);
        OnAfterPosting(PostedDoc);
    end;
    [IntegrationEvent(false, false)]
   local procedure OnBeforePosting(var Doc: Record "Visit HeaderPSG";var IsHandled: Boolean)
   begin
   end;
   local procedure OnAfterPosting(var Doc: Record "Finished Visit HeaderPSG")
   begin
   end;
}
