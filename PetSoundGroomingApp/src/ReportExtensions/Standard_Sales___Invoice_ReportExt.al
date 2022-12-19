Reportextension 63201 "PSGStandard_Sales___Invoice" extends "Standard Sales - Invoice"
{

    dataset
    {
        add("Header")
        {
            column("Pet_Header_PSG"; "Header"."Pet")
            {
            }
        }
        add("Header")
        {
            column("Pet_Header_Lbl_PSG"; "Header".FieldCaption("Pet"))
            {
            }
        }

    }
}
