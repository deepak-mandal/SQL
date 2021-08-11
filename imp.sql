select ifnull(customer_name, "N/A") customer_name, ifnull(product_name, "N/A") product_name, ifnull(Quantity, 0) quantity 
from ((customer left outer join invoice on customer.id=invoice.customer_id) 
      left outer join invoice_item on invoice_item.invoice_id=invoice.id) 
      left outer join product on invoice_item.product_id=product.id
order by customer.id, product.id, invoice_item.id asc
