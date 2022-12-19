page 63450 "API customer PSG"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'PSG';

    EntityCaption = 'Customer';
    EntitySetCaption = 'Customers';
    EntityName = 'customer';
    EntitySetName = 'customers';

    ODataKeyFields = SystemId;
    SourceTable = "Customer";

    Extensible = false;
    DelayedInsert = true;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(id; Rec.SystemId)
                {
                    Caption = 'SystemId';
                    Editable = false;
                }
                field("no_"; Rec."No.")
                {
                    Caption = '"no_"';
                }
                field(name; Rec."Name")
                {
                    Caption = 'name';
                }
                field(address; Rec."Address")
                {
                    Caption = 'address';
                }
            }
        }
    }
}
