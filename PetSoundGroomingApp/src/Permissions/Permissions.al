permissionset 63200 "Pet Sounds Grooming"
{
    Caption = 'Pet Sounds Grooming';
    Access = Public;
    Assignable = true;
    Permissions =                   tabledata "OwnershipPSG" = RIMD,
                  tabledata "PetPSG" = RIMD,
                  table "PetPSG" = X,
                  tabledata "PetTypePSG" = RIMD,
                  table "PetTypePSG" = X,
                  tabledata "SetupPSG" = RIMD,
                  table "SetupPSG" = X,
                  tabledata "Visit HeaderPSG" = RIMD,
                  tabledata "Visit LinePSG" = RIMD,
                  tabledata "Finished Visit HeaderPSG" = RIMD,
                  tabledata "Finished Visit LinePSG" = RIMD;
}