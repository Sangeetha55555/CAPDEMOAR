namespace my.datamodel;
entity SalesOrders {
  key ID          : Integer;
      description : String;
      customerNo  : String;
      items        :Association to  many SalesOrderItems   //managed composition (to many)
                      on items.salesOrder = $self;
}

entity SalesOrderItems {
      salesOrder : Association to one SalesOrders;          //managed association (to one)
      item       : Integer;
      material   : String(10);
      quantity   : Decimal(10, 2);                          //Precision , scale
}