# include: "/views/transactions.view"


# explore: aggregate_explore {
#   view_name: transactions
#   aggregate_table: aggregate  {
#     materialization: {
#       datagroup_trigger: gcp_sales_edher_default_datagroup
#     }
#     query: {
#       dimensions: [transactions.order_month_name, transactions.customer_code]
#       measures: [transactions.total_sales_amount]
#       filters: [transactions.market_code: "Mark004"]
#     }

#   }
# }
