tableextension 63208 "PSGSales_Cr_Memo_Header" extends "Sales Cr.Memo Header"
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
