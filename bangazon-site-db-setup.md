# Bangazon Set-Up Commands

## Table Naming Conventions
Table names are...
- all lower case
- use underscores (snake case)
- plural (customer_orders)



## Customer Table

rails g scaffold customer name_first:string name_last:string address_street:string address_email:string city:string state:string zip_code:integer active:boolean last_date_active:date

rails db:migrate


## Product Type Table

rails g scaffold product_type product_type:string
rails db:migrate


## Payment Type Table

rails g scaffold payment_type payment_type:string account_number:integer customer:references
rails db:migrate


## Product Table

rails g scaffold product product_price:float product_description:string customer:references product_type:references
rails db:migrate


## Order Table

rails g scaffold order fulfilled:boolean payment_type:references customer:references 
rails db:migrate



## Product Order Table

rails g scaffold product_order product:references order:references
rails db:migrate



## Product Table

rails g scaffold product product_price:float product_description:string customer:references product_type:references
rails db:migrate

