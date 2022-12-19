page 63433 "Finished VisitList"
{
    PageType = List;
    SourceTable = "Finished Visit HeaderPSG";
    Caption = 'Finished Salon visit List';
    CardPageId = "Finished VisitCard";
    Editable = false;
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
