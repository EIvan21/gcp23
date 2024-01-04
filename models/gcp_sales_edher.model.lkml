connection: "sales_dummy"

# include all the views
include: "/views/**/*.view"
include: "/Dashboards/**/*.dashboard.lookml"
include: "/explores/**/*.explore"


datagroup: gcp_sales_edher_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

week_start_day: sunday



persist_with: gcp_sales_edher_default_datagroup

explore: customers {}

explore: date {}

explore: markets {}

explore: products {}

explore: transactions {
  label: "Transactions Edher"

  always_filter: {
    filters: [
      customer_code: "",
      order_date: ""
    ]
  }

  sql_always_where: ${transactions.sales_amount}>0 AND
                    ${transactions.currency} != "USD\r" AND
                    ${transactions.currency} != "INR" AND
                    ${transactions.order_year} >2017;;

  join: customers {
    foreign_key: customer_code
    relationship: many_to_one
  }

  join: markets {
    foreign_key: market_code
    relationship: many_to_one
  }

  join: products {
    foreign_key: product_code
    relationship: many_to_one
  }
  join: date {
    sql_on: ${transactions.order_date} = ${date.date_date} ;;
    relationship: many_to_one
  }
}
