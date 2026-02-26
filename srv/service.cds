using {sap.capire.bookstore as database} from '../db/schema';

service BookService{

    
   @readonly entity Books as projection on database.Books{*,
    case currency.code
        when 'EUR' then 'Euro'
        when 'USD' then 'US Dollar'
        when 'GBP' then 'Great Britain Pound'
        end as CDESC : String(20) @title : ('{i18n>CURRENCY}'),
         category as genre} 
         excluding { createdAt, createdBy,modifiedAt,modifiedBy};
   
   @readonly entity Authors as projection on database.Authors;

   @readonly entity Addresses  as projection on database.Addresses;
} 

service OrderService{
    entity Orders as projection on database.Orders;
    entity OrderItems as projection on database.OrderItems;
}

using { AdminService } from '../node_modules/@sap/product-service-cds/srv/admin-service';
extend service AdminService with {
    entity Authors as projection on database.Authors;    
   
} 