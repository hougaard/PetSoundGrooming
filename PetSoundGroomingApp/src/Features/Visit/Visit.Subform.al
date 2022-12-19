page 63432 "VisitListPart"
{
    PageType = ListPart;
    SourceTable = "Visit LinePSG";
    Caption = 'Lines';
    AutoSplitKey = true;

    layout
    {
        area(content)
        {
            repeater(Rep)
            {
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field(ItemNo; Rec.ItemNo)
                {
                    ApplicationArea = All;
                }
                field(ItemDesc; Rec.ItemDesc)
                {
                    ApplicationArea = All;
                }
                field(UnitPrice; Rec.UnitPrice)
                {
                    ApplicationArea = All;
                }
                field(Qty; Rec.Qty)
                {
                    ApplicationArea = All;
                }
                field(LineTotal; Rec.LineTotal)
                {
                    ApplicationArea = All;
                    Editable = false;
                }

            }
        }
    }
}
