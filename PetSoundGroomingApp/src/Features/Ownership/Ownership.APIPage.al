page 63426 "API OwnershipPSG"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'PSG';

    EntityCaption = 'Pet Ownership';
    EntitySetCaption = 'Pet Ownerships';
    EntityName = 'ownership';
    EntitySetName = 'ownerships';

    ODataKeyFields = SystemId;
    SourceTable = "OwnershipPSG";

    Extensible = false;
    DelayedInsert = true;
    layout
    {
        area(content)
        {
            repeater(RepeaterGroup)
            {
                field(id; Rec.SystemId)
                {
                    Caption = 'SystemId';
                    Editable = false;
                }
                field(petno; Rec."PetNo")
                {
                    Caption = 'PetNo';
                }
                field(name; Rec."Name")
                {
                    Caption = 'Name';
                }
                field(type; Rec."Type")
                {
                    Caption = 'Type';
                }
                field(customerno; Rec."CustomerNo")
                {
                    Caption = 'Customer No.';
                }
            }
        }
    }
}
