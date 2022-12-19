page 63451 "API sales_Invoice_Header PSG"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'PSG';

    EntityCaption = 'Sales_Invoice_Header';
    EntitySetCaption = 'Sales_Invoice_Headers';
    EntityName = 'sales_Invoice_Header';
    EntitySetName = 'sales_Invoice_Headers';

    ODataKeyFields = SystemId;
    SourceTable = "Sales Invoice Header";

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
                field("selltocustomerno_"; Rec."Sell-to Customer No.")
                {
                    Caption = '"selltocustomerno_"';
                }
                field("no_"; Rec."No.")
                {
                    Caption = '"no_"';
                }
                field(postingdate; Rec."Posting Date")
                {
                    Caption = 'postingdate';
                }
                field(shortcutdimension1code; Rec."Shortcut Dimension 1 Code")
                {
                    Caption = 'shortcutdimension1code';
                }
                field(shortcutdimension2code; Rec."Shortcut Dimension 2 Code")
                {
                    Caption = 'shortcutdimension2code';
                }
                field(amount; Rec."Amount")
                {
                    Caption = 'amount';
                }
                field(amountincludingvat; Rec."Amount Including VAT")
                {
                    Caption = 'amountincludingvat';
                }
                field(pet; Rec."Pet")
                {
                    Caption = 'pet';
                }
            }
        }
    }
}
