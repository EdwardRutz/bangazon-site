# Bangazon Set-Up Commands Using Scaffold


## BEST PRACTICES

### Table Naming Conventions
Table names are...
- all lower case
- use underscores (snake case)
- plural (customer_orders)

- Do git commit after generating each model, this gives more version control.
- Just as easy to run ``` rails db:migrate ``` after all the models are built.
  - Can always rollback the migration and make changes as needed.
  - No need to run migration after each model.

- ``` git add -A ```  adds any tracked file that was changed


## Customer Table

rails g model customer name_first:string name_last:string address_street:string address_email:string city:string state:string zip_code:integer active:boolean last_date_active:date

git add -A
<!-- rails g scaffold customer name_first:string name_last:string address_street:string address_email:string city:string state:string zip_code:integer active:boolean last_date_active:date -->


## Product Type Table

rails g model product_type product_type:string
git add -A
<!-- rails g scaffold product_type product_type:string -->

## Payment Type Table

rails g model payment_type payment_type:string account_number:integer customer:references
git add -A
<!-- rails g scaffold payment_type payment_type:string account_number:integer customer:references -->


## Product Table

rails g model product product_price:float product_description:string customer:references product_type:references
git add -A
<!-- rails g scaffold product product_price:float product_description:string customer:references product_type:references -->

## Order Table

rails g model order fulfilled:boolean payment_type:references customer:references 
git add -A
<!-- rails g scaffold order fulfilled:boolean payment_type:references customer:references  -->

## Product Order Table

rails g model product_order product:references order:references
git add -A
<!-- rails g scaffold product_order product:references order:references -->

## Product Table

rails g model product product_price:float product_description:string customer:references product_type:references
git add -A

<!-- rails g scaffold product product_price:float product_description:string customer:references product_type:references -->

## Migrate All Models

rails db:migrate








