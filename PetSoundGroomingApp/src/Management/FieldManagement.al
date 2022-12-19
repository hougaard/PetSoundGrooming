codeunit 63200 "Field Transfers Mgt. PSG"
{
      [EventSubscriber(ObjectType::Table, database::"Gen. Journal Line", 'OnAfterCopyGenJnlLineFromSalesHeader', '', true,true)]
      local procedure OnAfterCopyGenJnlLineFromSalesHeader(SalesHeader: Record "Sales Header";var GenJournalLine: Record "Gen. Journal Line")
      begin
        "GenJournalLine"."Pet" := "SalesHeader"."Pet";

      end;
      [EventSubscriber(ObjectType::Table, database::"Gen. Journal Line", 'OnAfterCopyGenJnlLineFromPurchHeader', '', true,true)]
      local procedure OnAfterCopyGenJnlLineFromPurchaseHeader(PurchaseHeader: Record "Purchase Header";var GenJournalLine: Record "Gen. Journal Line")
      begin

      end;
      [EventSubscriber(ObjectType::Table, database::"Item Journal Line", 'OnAfterCopyItemJnlLineFromSalesHeader', '', true,true)]
      local procedure OnAfterCopyItemJnlLineFromSalesHeader(SalesHeader: Record "Sales Header";var ItemJnlLine: Record "Item Journal Line")
      begin
        "ItemJnlLine"."Pet" := "SalesHeader"."Pet";

      end;
      [EventSubscriber(ObjectType::Table, database::"Item Journal Line", 'OnAfterCopyItemJnlLineFromSalesLine', '', true,true)]
      local procedure OnAfterCopyItemJnlLineFromSalesLine(SalesLine: Record "Sales Line";var ItemJnlLine: Record "Item Journal Line")
      begin

      end;
      [EventSubscriber(ObjectType::Table, database::"Item Journal Line", 'OnAfterCopyItemJnlLineFromPurchHeader', '', true,true)]
      local procedure OnAfterCopyItemJnlLineFromPurchHeader(PurchHeader: Record "Purchase Header";var ItemJnlLine: Record "Item Journal Line")
      begin

      end;
      [EventSubscriber(ObjectType::Table, database::"Item Journal Line", 'OnAfterCopyItemJnlLineFromPurchLine', '', true,true)]
      local procedure OnAfterCopyItemJnlLineFromPurchLine(PurchLine: Record "Purchase Line";var ItemJnlLine: Record "Item Journal Line")
      begin

      end;
      [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line",'OnAfterInitGLEntry', '', true, true)]
      local procedure OnAfterInitGLEntry(GenJournalLine: Record "Gen. Journal Line";var GLEntry: Record "G/L Entry")
      begin
        "GLEntry"."Pet" := "GenJournalLine"."Pet";

      end;
      [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line",'OnAfterInitCustLedgEntry', '', true, true)]
      local procedure OnAfterInitCustLedgEntry(GenJournalLine: Record "Gen. Journal Line"; var CustLedgerEntry: Record "Cust. Ledger Entry")
      begin
        "CustLedgerEntry"."Pet" := "GenJournalLine"."Pet";

      end;
      [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line",'OnAfterInitVendLedgEntry', '', true, true)]
      local procedure OnAfterInitVendLedgEntry(GenJournalLine: Record "Gen. Journal Line"; var VendorLedgerEntry: Record "Vendor Ledger Entry")
      begin

      end;
      [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post Line", 'OnAfterInitItemLedgEntry', '', true,true)]
      local procedure OnAfterInitItemLedgEntry(ItemJournalLine: Record "Item Journal Line";var ItemLedgEntryNo: Integer;var NewItemLedgEntry: Record "Item Ledger Entry")
      begin

      end;
      [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post Line", 'OnAfterInitValueEntry', '', true, true)]
      local procedure OnAfterInitValueEntry(ItemJournalLine: Record "Item Journal Line";var ValueEntry: Record "Value Entry";var ValueEntryNo: Integer)
      begin

      end;
      [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line", 'OnAfterInitBankAccLedgEntry', '', true, true)]
      local procedure OnAfterInitBankAccLedgEntry(GenJournalLine: Record "Gen. Journal Line"; var BankAccountLedgerEntry: Record "Bank Account Ledger Entry")
      begin

      end;
      [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line", 'OnAfterInitEmployeeLedgerEntry', '', true, true)]
      local procedure OnAfterInitEmployeeLedgerEntry(GenJournalLine: Record "Gen. Journal Line"; var EmployeeLedgerEntry: Record "Employee Ledger Entry")
      begin

      end;
      [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line", 'OnAfterInitGLEntryVAT', '', true, true)]
      local procedure OnAfterInitGLEntryVAT(GenJnlLine: Record "Gen. Journal Line";var GLEntry: Record "G/L Entry")
      begin
        "GLEntry"."Pet" := "GenJnlLine"."Pet";

      end;
      [EventSubscriber(ObjectType::Table,Database::"Sales Line", 'OnAfterInitHeaderDefaults', '', true, true)]
      local procedure SalesOnAfterInitHeaderDefaults(SalesHeader: Record "Sales Header";var SalesLine: Record "Sales Line")
      begin

      end;
      [EventSubscriber(ObjectType::Table,Database::"Purchase Line", 'OnAfterInitHeaderDefaults', '', true, true)]
      local procedure PurchaseOnAfterInitHeaderDefaults(PurchHeader: Record "Purchase Header";var PurchLine: Record "Purchase Line")
      begin

      end;
      [EventSubscriber(ObjectType::Table, Database::"Sales Line", 'OnAfterCopyFromItem', '', true, true)]
      local procedure SalesOnAfterCopyFromItem(Item: Record Item; var SalesLine: Record "Sales Line")
      begin

      end;
      [EventSubscriber(ObjectType::Table, Database::"Sales Line", 'OnAfterAssignGLAccountValues', '', true, true)]
      local procedure OnAfterAssignGLAccountValues(GLAccount: Record "G/L Account"; var SalesLine: Record "Sales Line")
      begin

      end;
      [EventSubscriber(ObjectType::Table, Database::"Purchase Line", 'OnAfterAssignGLAccountValues', '', true, true)]
      local procedure PurchaseOnAfterAssignGLAccountValues(GLAccount: Record "G/L Account"; var PurchLine: Record "Purchase Line")
      begin

      end;
      [EventSubscriber(ObjectType::Table, Database::"Purchase Line", 'OnAfterAssignItemValues','', true, true)]
      local procedure OnCopyFromItemOnAfterCheck(Item: Record Item; var PurchLine: Record "Purchase Line")
      begin

      end;
      [EventSubscriber(ObjectType::Table, Database::"Sales Header", 'OnAfterValidateEvent', 'Sell-to Customer No.', true, true)]
      local procedure SalesHeaderOnAfterValidateEvent(var Rec: Record "Sales Header"; CurrFieldNo: Integer)
      var
          Customer: Record Customer;
      begin
          if Customer.GET(Rec."Sell-to Customer No.") then begin
        "Rec"."Mikedemo" := "Customer"."Mikedemo";

          end;
      end;
      [EventSubscriber(ObjectType::Table, Database::"Sales Header", 'OnAfterValidateEvent', 'Bill-to Customer No.', true, true)]
      local procedure SalesHeaderOnAfterValidateEvent2(var Rec: Record "Sales Header"; CurrFieldNo: Integer)
      var
          Customer: Record Customer;
      begin
          if Customer.GET(Rec."Bill-to Customer No.") then begin

          end;
      end;
      [EventSubscriber(ObjectType::Table, Database::"Purchase Header", 'OnAfterValidateEvent', 'Buy-from Vendor No.', true, true)]
      local procedure PurchaseHeaderOnAfterValidateEvent(var Rec: Record "Purchase Header"; CurrFieldNo: Integer)
      var
          Vendor: Record Vendor;
      begin
          if Vendor.GET(Rec."Buy-from Vendor No.") then begin

          end;
      end;
      [EventSubscriber(ObjectType::Table, Database::"Purchase Header", 'OnAfterValidateEvent', 'Pay-to Vendor No.', true, true)]
      local procedure PurchaseHeaderOnAfterValidateEvent2(var Rec: Record "Purchase Header"; CurrFieldNo: Integer)
      var
          Vendor: Record Vendor;
      begin
          if Vendor.GET(Rec."Pay-to Vendor No.") then begin

          end;
      end;
      [EventSubscriber(ObjectType::Table, Database::"Sales Header", 'OnAfterCopyShipToCustomerAddressFieldsFromShipToAddr', '', true,true)]
      local procedure OnAfterCopyShipToCustomerAddressFieldsFromShipToAddr(var SalesHeader: Record "Sales Header";ShipToAddress: Record "Ship-to Address")
      begin

      end;
      [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Subst.",'OnCalcCustPriceOnBeforeTempItemSubstitutionInsert','',true,true)]
      local procedure OnCalcCustPriceOnBeforeTempItemSubstitutionInsert(ItemSubstitution: Record "Item Substitution";var TempItemSubstitution: Record "Item Substitution")
      begin

      end;
      [EventSubscriber(ObjectType::Table, Database::"Job Planning Line",'OnAfterCopyFromItem','',true,true)]
      local procedure JobPlanLineOnAfterCopyFromItem(Item: Record Item;var JobPlanningLine: Record "Job Planning Line")
      begin

      end;
      [EventSubscriber(ObjectType::Table,Database::"Sales Line",'OnAfterAssignStdTxtValues', '', true, true)]
      local procedure OnAfterAssignStdTxtValues(StandardText: Record "Standard Text";var SalesLine: Record "Sales Line")
      begin

      end;
      [EventSubscriber(ObjectType::Table,Database::"Purchase Line",'OnAfterAssignStdTxtValues', '', true, true)]
      local procedure OnAfterAssignStdTxtValuesPurch(StandardText: Record "Standard Text";var PurchLine: Record "Purchase Line")
      begin

      end;
      [EventSubscriber(ObjectType::Codeunit,Codeunit::"Sales-Post",'OnInsertShipmentHeaderOnAfterTransferfieldsToSalesShptHeader','',true,true)]
      local procedure OnInsertShipmentHeaderOnAfterTransferfieldsToSalesShptHeader(SalesHeader: Record "Sales Header";SalesShptHeader: Record "Sales Shipment Header")
      begin

      end;
      [EventSubscriber(ObjectType::Codeunit,Codeunit::"Sales-Post",'OnInsertCrMemoHeaderOnAfterSalesCrMemoHeaderTransferFields','',true,true)]
      local procedure OnInsertCrMemoHeaderOnAfterSalesCrMemoHeaderTransferFields(var SalesHeader: Record "Sales Header";var SalesCrMemoHeader: Record "Sales Cr.Memo Header")
      begin
        "SalesCrMemoHeader"."Pet" := "SalesHeader"."Pet";

      end;
      [EventSubscriber(ObjectType::Codeunit,codeunit::"Sales-Post",'OnBeforeInsertInvoiceHeader','',true,true)]
      local procedure OnBeforeInsertInvoiceHeader(SalesHeader: Record "Sales Header";SalesInvHeader: Record "Sales Invoice Header")
      begin
        "SalesInvHeader"."Pet" := "SalesHeader"."Pet";

      end;
      [EventSubscriber(ObjectType::Codeunit,Codeunit::ArchiveManagement,'OnBeforeSalesHeaderArchiveInsert','',true,true)]
      local procedure OnBeforeSalesHeaderArchiveInsert(SalesHeader: Record "Sales Header";var SalesHeaderArchive: Record "Sales Header Archive")
      begin
        "SalesHeaderArchive"."Pet" := "SalesHeader"."Pet";

      end;
      [EventSubscriber(ObjectType::Codeunit,Codeunit::"Sales-Post",'OnBeforeSalesInvLineInsert','',true,true)]
      local procedure OnBeforeSalesInvLineInsert(SalesLine: Record "Sales Line";var SalesInvLine: Record "Sales Invoice Line")
      begin

      end;
      [EventSubscriber(ObjectType::Codeunit,Codeunit::"Sales-Post",'OnBeforeSalesCrMemoLineInsert','',true,true)]
      local procedure OnBeforeSalesCrMemoLineInsert(SalesLine: Record "Sales Line";var SalesCrMemoLine: Record "Sales Cr.Memo Line")
      begin

      end;
      [EventSubscriber(ObjectType::Codeunit,Codeunit::"Sales-Post",'OnBeforeSalesShptLineInsert','',true,true)]
      local procedure OnBeforeSalesShptLineInsert(SalesLine: Record "Sales Line";var SalesShptLine: Record "Sales Shipment Line")
      begin

      end;
      [EventSubscriber(ObjectType::Codeunit,Codeunit::ArchiveManagement,'OnBeforeSalesLineArchiveInsert','',true,true)]
      local procedure OnBeforeSalesLineArchiveInsert(SalesLine: Record "Sales Line";var SalesLineArchive: Record "Sales Line Archive")
      begin

      end;
      [EventSubscriber(ObjectType::Codeunit,Codeunit::"Purch.-Post",'OnBeforePurchInvHeaderInsert','',true,true)]
      local procedure OnBeforePurchInvHeaderInsert(var PurchHeader: Record "Purchase Header";var PurchInvHeader: Record "Purch. Inv. Header")
      begin

      end;
      [EventSubscriber(ObjectType::Codeunit,Codeunit::"Purch.-Post",'OnBeforePurchCrMemoHeaderInsert','',true,true)]
      local procedure OnBeforePurchCrMemoHeaderInsert(var PurchHeader: Record "Purchase Header";var PurchCrMemoHdr: Record "Purch. Cr. Memo Hdr.")
      begin

      end;
      [EventSubscriber(ObjectType::Codeunit,Codeunit::"Purch.-Post",'OnBeforePurchRcptHeaderInsert','',true,true)]
      local procedure OnBeforePurchRcptHeaderInsert(var PurchaseHeader: Record "Purchase Header";var PurchRcptHeader: Record "Purch. Rcpt. Header")
      begin

      end;
      [EventSubscriber(ObjectType::Codeunit,Codeunit::ArchiveManagement,'OnBeforePurchHeaderArchiveInsert','',true,true)]
      local procedure OnBeforePurchHeaderArchiveInsert(PurchaseHeader: Record "Purchase Header";var PurchaseHeaderArchive: Record "Purchase Header Archive")
      begin

      end;
      [EventSubscriber(ObjectType::Codeunit,Codeunit::"Purch.-Post",'OnBeforePurchInvLineInsert','',true,true)]
      local procedure OnBeforePurchInvLineInsert(var PurchaseLine: Record "Purchase Line";var PurchInvLine: Record "Purch. Inv. Line")
      begin

      end;
      [EventSubscriber(ObjectType::Codeunit,Codeunit::"Purch.-Post",'OnBeforePurchRcptLineInsert','',true,true)]
      local procedure OnBeforePurchRcptLineInsert(var PurchLine: Record "Purchase Line";var PurchRcptLine: Record "Purch. Rcpt. Line")
      begin

      end;
      [EventSubscriber(ObjectType::Codeunit,Codeunit::"Purch.-Post",'OnBeforePurchCrMemoLineInsert','',true,true)]
      local procedure OnBeforePurchCrMemoLineInsert(var PurchLine: Record "Purchase Line";var PurchCrMemoLine: Record "Purch. Cr. Memo Line")
      begin

      end;
      [EventSubscriber(ObjectType::Codeunit,Codeunit::ArchiveManagement,'OnBeforePurchLineArchiveInsert','',true,true)]
      local procedure OnBeforePurchLineArchiveInsert(PurchaseLine: Record "Purchase Line";var PurchaseLineArchive: Record "Purchase Line Archive")
      begin

      end;
      [EventSubscriber(ObjectType::Codeunit, Codeunit::"Create Inventory Pick/Movement",'OnBeforeCreatePickOrMoveLineFromSalesLoop','',true,true)]
      local procedure OnBeforeCreatePickOrMoveLineFromSalesLoop(SalesHeader: Record "Sales Header";var WarehouseActivityHeader: Record "Warehouse Activity Header")
      begin

      end;
      [EventSubscriber(ObjectType::Table, DATABASE::"Gen. Journal Line", 'OnGetCustomerAccountOnAfterCustGet', '', true,true)]
      local procedure OnGetCustomerAccountOnAfterCustGet(var Customer: Record Customer; var GenJournalLine: Record "Gen. Journal Line")
      begin

      end;
      [EventSubscriber(ObjectType::Table, DATABASE::"Gen. Journal Line", 'OnAfterAccountNoOnValidateGetVendorAccount', '', true, true)]
      local procedure OnAfterAccountNoOnValidateGetVendorAccount(Vendor: Record Vendor; var GenJournalLine: Record "Gen. Journal Line")
      begin

      end;
      [EventSubscriber(ObjectType::Table, DATABASE::"Gen. Journal Line", 'OnAfterAccountNoOnValidateGetGLAccount', '', true, true)]
      local procedure OnAfterAccountNoOnValidateGetGLAccount(var GLAccount: Record "G/L Account"; var GenJournalLine: Record "Gen. Journal Line")
      begin

      end;
      [EventSubscriber(ObjectType::Table, DATABASE::"Gen. Journal Line", 'OnAfterAccountNoOnValidateGetBankAccount', '', true, true)]
      local procedure OnAfterAccountNoOnValidateGetBankAccount(var BankAccount: Record "Bank Account"; var GenJournalLine: Record "Gen. Journal Line")
      begin

      end;
      [EventSubscriber(ObjectType::Table, DATABASE::Item, 'OnAfterValidateEvent', 'Item Category Code', true, true)]
      local procedure ItemOnAfterValidateEvent(var Rec: Record Item)
      var
          ItemCat: Record "Item Category";
      begin
          if Rec."Item Category Code" <> '' then
              if ItemCat.Get(Rec."Item Category Code") then begin

              end;
      end;
      [EventSubscriber(ObjectType::Table, database::"Transfer Shipment Header",'OnAfterCopyFromTransferHeader','', true, true)]
      local procedure OnAfterCopyFromTransferHeaderShipment(TransferHeader: Record "Transfer Header"; var TransferShipmentHeader: Record "Transfer Shipment Header")
      begin

      end;
      [EventSubscriber(ObjectType::Table, database::"Transfer Receipt Header",'OnAfterCopyFromTransferHeader','', true, true)]
      local procedure OnAfterCopyFromTransferHeaderReceipt(TransferHeader: Record "Transfer Header"; var TransferReceiptHeader: Record "Transfer Receipt Header")
      begin

      end;
      [EventSubscriber(ObjectType::Codeunit, Codeunit::"Shipment Header - Edit", 'OnBeforeSalesShptHeaderModify', '', true, true)]
      local procedure OnBeforeSalesShptHeaderModify(FromSalesShptHeader: Record "Sales Shipment Header";var SalesShptHeader: Record "Sales Shipment Header")
      begin

      end;
      [EventSubscriber(ObjectType::Page,Page::"Posted Sales Shipment - Update", 'OnAfterRecordChanged', '', true, true)]
      local procedure OnAfterRecordChangedSalesShipment(var SalesShipmentHeader: Record "Sales Shipment Header";var IsChanged: Boolean;xSalesShipmentHeader: Record "Sales Shipment Header")
      begin

      end;
      [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales Inv. Header - Edit", 'OnRunOnBeforeAssignValues', '', true, true)]
      local procedure OnRunOnBeforeAssignValuesSalesInvHeader(SalesInvoiceHeaderRec: Record "Sales Invoice Header"; var SalesInvoiceHeader: Record "Sales Invoice Header")
      begin

      end;
      [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch. Inv. Header - Edit", 'OnBeforePurchInvHeaderModify', '', true, true)]
      local procedure OnBeforePurchInvHeaderModify(PurchInvHeaderRec: Record "Purch. Inv. Header"; var PurchInvHeader: Record "Purch. Inv. Header")
      begin

      end;
      [EventSubscriber(ObjectType::Codeunit, Codeunit::"Service Inv. Header - Edit", 'OnRunOnBeforeAssignNewValues', '', true, true)]
      local procedure OnRunOnBeforeAssignNewValuesServiceInv(ServiceInvoiceHeaderRec: Record "Service Invoice Header"; var ServiceInvoiceHeader: Record "Service Invoice Header")
      begin

      end;
      [EventSubscriber(ObjectType::Codeunit, Codeunit::"Return Receipt Header - Edit", 'OnBeforeReturnReceiptHeaderModify', '', true, true)]
      local procedure OnBeforeReturnReceiptHeaderModify(ReturnReceiptHeaderRec: Record "Return Receipt Header"; var ReturnReceiptHeader: Record "Return Receipt Header")
      begin

      end;
      [EventSubscriber(ObjectType::Codeunit, Codeunit::"Return Shipment Header - Edit", 'OnBeforeReturnShipmentHeaderModify', '', true, true)]
      local procedure OnBeforeReturnShipmentHeaderModify(ReturnShipmentHeaderRec: Record "Return Shipment Header"; var ReturnShipmentHeader: Record "Return Shipment Header")
      begin

      end;
      [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales Credit Memo Hdr. - Edit", 'OnBeforeSalesCrMemoHeaderModify', '', true, true)]
      local procedure OnBeforeSalesCrMemoHeaderModify(FromSalesCrMemoHeader: Record "Sales Cr.Memo Header"; var SalesCrMemoHeader: Record "Sales Cr.Memo Header")
      begin

      end;
      [EventSubscriber(ObjectType::Page, Page::"Posted Sales Inv. - Update", 'OnAfterRecordChanged', '', true, true)]
      local procedure OnAfterRecordChangedSalesInvoice(xSalesInvoiceHeader: Record "Sales Invoice Header"; var SalesInvoiceHeader: Record "Sales Invoice Header"; var IsChanged: Boolean)
      begin

      end;
      [EventSubscriber(ObjectType::Page, Page::"Posted Return Shpt. - Update", 'OnAfterRecordChanged', '', true, true)]
      local procedure OnAfterRecordChangedReturnShip(xReturnShipmentHeaderGlobal: Record "Return Shipment Header"; xReturnShipmentHeader: Record "Return Shipment Header"; var ReturnShipmentHeader: Record "Return Shipment Header"; var IsChanged: Boolean)
      begin

      end;
      [EventSubscriber(ObjectType::Page, Page::"Posted Service Inv. - Update", 'OnAfterRecordChanged', '', true, true)]
      local procedure OnAfterRecordChangedServiceInvoice(xServiceInvoiceHeader: Record "Service Invoice Header"; var ServiceInvoiceHeader: Record "Service Invoice Header"; var IsChanged: Boolean)
      begin

      end;
      [EventSubscriber(ObjectType::Page, Page::"Posted Purch. Invoice - Update", 'OnAfterRecordChanged', '', true, true)]
      local procedure OnAfterRecordChangedPurchInvoice(xPurchInvHeaderGlobal: Record "Purch. Inv. Header"; xPurchInvHeader: Record "Purch. Inv. Header"; var PurchInvHeader: Record "Purch. Inv. Header"; var IsChanged: Boolean)
      begin

      end;
      [EventSubscriber(ObjectType::Page, Page::"Posted Return Receipt - Update", 'OnAfterRecordChanged', '', true, true)]
      local procedure OnAfterRecordChangedReturnReceipt(xReturnReceiptHeaderGlobal: Record "Return Receipt Header"; xReturnReceiptHeader: Record "Return Receipt Header"; var ReturnReceiptHeader: Record "Return Receipt Header"; var IsChanged: Boolean)
      begin

      end;
     [EventSubscriber(ObjectType::Table, Database::"Purchase Line", 'OnAfterAssignItemValues', '', true, true)]
     local procedure PurchLineOnAfterAssignItemValues(Item: Record Item;var PurchLine: Record "Purchase Line")
     begin

     end;
}
