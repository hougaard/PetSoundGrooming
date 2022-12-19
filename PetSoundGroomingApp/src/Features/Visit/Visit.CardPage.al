page 63431 "VisitCard"
{
    PageType = Document;
    SourceTable = "Visit HeaderPSG";
    Caption = 'Salon visit Card';

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

            part(LinesPart; "VisitListPart")
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
            action(Post)
            {
                Caption = 'Finish';
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;
                Image = PostDocument;
                trigger OnAction()
                begin
                    if confirm('Finish Salon visit') then
                        Rec.Post(Rec);                end;
            }
        }
    }
}
