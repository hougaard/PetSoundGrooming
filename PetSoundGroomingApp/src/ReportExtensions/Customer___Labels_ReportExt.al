Reportextension 63200 "PSGCustomer___Labels" extends "Customer - Labels"
{

    dataset
    {
        add("Customer")
        {
            column("Mikedemo_Customer_PSG"; "Customer"."Mikedemo")
            {
            }
        }
        add("Customer")
        {
            column("Mikedemo_Customer_Lbl_PSG"; "Customer".FieldCaption("Mikedemo"))
            {
            }
        }

    }
}
