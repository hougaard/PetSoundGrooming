page 63401 "PetCard"
{
    PageType = Card;
    SourceTable = "PetPSG";
    Caption = 'Pet Card';

    layout
    {
        area(content)
        {
            group(GeneralGrp)
            {
                Caption = 'General';
                field(PetNo; Rec.PetNo)
                {
                    ApplicationArea = All;
                }
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
            }
            group(DimensionsGrp)
            {
                Caption = 'Dimensions';
                field(Weight; Rec.Weight)
                {
                    ApplicationArea = All;
                }
                field(Height; Rec.Height)
                {
                    ApplicationArea = All;
                }
                field(Birthday; Rec.Birthday)
                {
                    ApplicationArea = All;
                }
            }
            group(HealthGrp)
            {
                Caption = 'Health';
                field(Food; Rec.Food)
                {
                    ApplicationArea = All;
                    MultiLine = true;
                }
                field(FPD; Rec.FPD)
                {
                    ApplicationArea = All;
                }
                field(Vet; Rec.Vet)
                {
                    ApplicationArea = All;
                }
                field(VetName; Rec.VetName)
                {
                    ApplicationArea = All;
                    Editable = false;
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
