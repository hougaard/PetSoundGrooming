pageextension 63201 "PSGCustomer_Card" extends "Customer Card"
{
    layout
    {
        AddLast("General")
        {
            field("Primary Contact No._PSG"; Rec."Primary Contact No.")
            {
                ApplicationArea = all;
            }
        }

        addfirst(factboxes)
        {
            part(OwnershipFactBox;OwnershipFactBox)
            {
                SubPageLink = "CustomerNo" = field("No.");
                ApplicationArea = All;
            }
        }

    }
    actions
    {
        addlast(Navigation)
        {
            action(Ownership)
            {
                ApplicationArea = all;
                Caption = 'Pet Ownership';
                RunObject = Page "OwnershipList";
                Image = RelatedInformation;
                RunPageLink = "CustomerNo" = field("No.");
            }
        }

    }
}
