page 63434 "Finished VisitCard"
{
    PageType = Document;
    SourceTable = "Finished Visit HeaderPSG";
    Caption = 'Finished Salon visit Card';
    Editable = false;

    layout
    {
        area(content)
        {
            group(GeneralGrp)
            {
                Caption = 'General';
                field(VisitNo; Rec.VisitNo)
                {
                    ApplicationArea = All;
                }
                field(PetNo; Rec.PetNo)
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field(CustomerNo; Rec.CustomerNo)
                {
                    ApplicationArea = All;
                }
                field(CustName; Rec.CustName)
                {
                    ApplicationArea = All;
                }
                field(VisitDate; Rec.VisitDate)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                }
            }

            part(LinesPart; "Finished VisitListPart")
            {
                ApplicationArea = all;
                SubPageLink = "VisitNo" = FIELD("VisitNo");
            }
        }
    }
    actions
    {
        area(processing)
        {
        }
    }
}
