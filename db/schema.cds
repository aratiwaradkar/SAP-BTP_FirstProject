namespace sap.capire.bookstore ;
 
using { Currency, cuid, managed } from '@sap/cds/common';
 
using { sap.capire.products.Products } from '@sap/product-service-cds/db/schema';
 
 
entity Books as projection on Products; extend Products with {
    author : Association to Authors ;
}
 
entity Authors : cuid {
    firstname : String(111);
    lastname : String(111);
    books : Association to many Books on books.author = $self ;
}
 
entity Orders : cuid, managed {
    items : Composition of many OrderItems on items.parent = $self ;
    total : Decimal(10,2) @readonly ;
    currency : Currency ;
}
 
entity OrderItems: cuid {
    parent : Association to Orders not null ;
    book_ID : UUID ;
    amount : Integer ;
    netAmount : Decimal(10,2) @readonly ;
}
 
 entity Addresses: cuid {
    address : String;
    city : String ;
    state : String ;
    country : String ;
}
entity BusinessPartners: cuid {
    ID : UUID;
    SupplierName : String ;
    city : String ;
    
}
 