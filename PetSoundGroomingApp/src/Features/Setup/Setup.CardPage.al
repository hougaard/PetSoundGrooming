page 63411 "SetupCard"
{
    PageType = Card;
    SourceTable = "SetupPSG";
    Caption = 'Pet Sounds Grooming Setup';
    UsageCategory = Administration;
    ApplicationArea = all;
    layout
    {
        area(content)
        {
            group("Number seriesGrp")
            {
                Caption = 'Number series';
                field("Pet_Number"; Rec."Pet_Number")
                {
                    ApplicationArea = All;
                }
                field("Visit_Number"; Rec."Visit_Number")
                {
                    ApplicationArea = All;
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
