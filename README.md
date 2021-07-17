# Dev 9Nama Test

## Commands

- rails new dev-9nama-test
- rails g model Customer name:index
- rails g model Supplier name:index address:index
- rails g model Product description:index price:decimal{8-2}:index
- rails g scaffold Orders
- rails g model Item order:references product:references supplier:references customer:references quantity:integer
- rails db:create
- rails db:migrate
- rails s