page 63420 "OwnershipList"
{
    PageType = List;
    SourceTable = "OwnershipPSG";
    Caption = 'Pet Ownership';

    layout
    {
        area(content)
        {
            repeater(Rep)
            {
                field(PetNo; Rec.PetNo)
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(Type; Rec.Type)
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
