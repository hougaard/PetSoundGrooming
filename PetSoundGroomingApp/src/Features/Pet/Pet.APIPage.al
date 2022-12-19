page 63406 "API PetPSG"
{
    PageType = API;

    APIVersion = 'v2.0';
    APIPublisher = 'hougaard';
    APIGroup = 'PSG';

    EntityCaption = 'Pet';
    EntitySetCaption = 'Pets';
    EntityName = 'pet';
    EntitySetName = 'pets';

    ODataKeyFields = SystemId;
    SourceTable = "PetPSG";

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
                    Caption = 'Pet No.';
                }
                field(type; Rec."Type")
                {
                    Caption = 'Type';
                }
                field(name; Rec."Name")
                {
                    Caption = 'Name';
                }
                field(weight; Rec."Weight")
                {
                    Caption = 'Weight';
                }
                field(height; Rec."Height")
                {
                    Caption = 'Height';
                }
                field(birthday; Rec."Birthday")
                {
                    Caption = 'Birthday';
                }
                field(food; Rec."Food")
                {
                    Caption = 'Food';
                }
                field(fpd; Rec."FPD")
                {
                    Caption = 'Feeding per day';
                }
                field(vet; Rec."Vet")
                {
                    Caption = 'Vet';
                }
                field(vetname; Rec."VetName")
                {
                    Caption = 'VetName';
                }
                field(diottest; Rec."diottest")
                {
                    Caption = 'diottest';
                }
            }
        }
    }
}
