page 63430 "VisitList"
{
    PageType = List;
    SourceTable = "Visit HeaderPSG";
    Caption = 'Salon visit List';
    CardPageId = "VisitCard";
    UsageCategory = Lists;
    ApplicationArea = all;
    layout
    {
        area(content)
        {
            repeater(Rep)
            {
                field(VisitNo; Rec.VisitNo)
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
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
        }
    }
    actions
    {
        area(processing)
        {
        }
    }
}
