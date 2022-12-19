pageextension 63202 "PSGCustomer_List" extends "Customer List"
{
    layout
    {
        AddLast("Control1")
        {
            field("Mikedemo_PSG"; Rec."Mikedemo")
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
