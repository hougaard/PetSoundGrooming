page 63423 "OwnershipFactBox"
{
    PageType = ListPart;
    SourceTable = "OwnershipPSG";
    Caption = 'Pet Ownership';
    Editable = false;

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
