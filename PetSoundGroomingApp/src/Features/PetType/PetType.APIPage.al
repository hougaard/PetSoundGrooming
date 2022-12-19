page 63396 "API PetTypePSG"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'PSG';

    EntityCaption = 'Pet Type';
    EntitySetCaption = 'Pet Types';
    EntityName = 'pettype';
    EntitySetName = 'pettypes';

    ODataKeyFields = SystemId;
    SourceTable = "PetTypePSG";

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
                field(type; Rec."Type")
                {
                    Caption = 'Type';
                }
                field(description; Rec."Description")
                {
                    Caption = 'Description';
                }
                field("group"; Rec."Group")
                {
                    Caption = 'Group';
                }
            }
        }
    }
}
