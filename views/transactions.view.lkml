view: transactions {
  sql_table_name:

  sales.transactions

  # -- if prod -- sales.transactions
  #   -- if dev -- sales.transactions_two
     ;;

  dimension: currency {
    type: string



    sql: ${TABLE}.currency ;;
  }

  dimension: customer_code {
    label: "Customer Code"
    type: string
    sql: ${TABLE}.customer_code ;;
    suggest_explore: customers
    suggest_dimension: customer.customer_name

  }

  dimension: market_code {
    label: "Market Code"
    type: string
    sql: ${TABLE}.market_code ;;
    suggest_explore: markets
    suggest_dimension: markets.market_name
  }

  dimension_group: order {
    type: time

    timeframes: [
      day_of_month,
      raw,
      date,
      week,
      month,
      quarter,
      year,
      month_name,
      day_of_week,
      day_of_week_index
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.order_date ;;
  }

  dimension: order_fecha{
    type: date
    convert_tz: no
    sql: ${TABLE}.order_date ;;
# <<<<<<< HEAD
#     # html: {{ rendered_value | date: _user_attributes["cr_date_format"] }};;

# =======
# >>>>>>> branch 'master' of git@github.com:EIvan21/gcp23.git
  }
  dimension_group: order_2 {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year,
      month_name
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.order_date ;;
    html: {{value | date: "%l:%M %p"}} ;;
  }
  dimension: cust_name {
    type: string
    sql: ${customers.custmer_name} ;;
    group_label: "basics"
  }

  dimension: line {
    sql: row_number() over (order by transactions.order_date);;
  }
  measure: number {
    type: number
    sql: ${sales_qty} ;;
  }


  dimension: product_code {
    label: "Product Code"
    type: string
    sql: ${TABLE}.product_code ;;
    group_label: "basics"

  }

  dimension: sales_amount {
    type: number
    sql: ${TABLE}.sales_amount ;;
  }

  dimension: sales_qty {
    type: number
    sql: ${TABLE}.sales_qty ;;
  }


  measure: count {
    type: count
    drill_fields: []
  }
  measure: total_sales_amount {
    label: "Total Sales Amount"
    type: sum
    sql: ${sales_amount} ;;
    group_label: "basics"
    # drill_fields: [drill_set*]
  }

  dimension: testingSplit {
    type: string
    sql: concat(${customer_code}, " <br/> ", ${market_code}, " <br/> ", ${cust_name}) ;;
  }

  measure: total_sales_amount_2 {
    type: sum
    sql: ${sales_amount} ;;
    group_label: "basics"
  }

  measure: half_sales_amount{
    type: number
    sql: ${total_sales_amount}/2 ;;
    group_label: "basics"
  }
  measure: total_sale_quantity {
    type: sum
    sql: ${sales_qty} ;;
    group_label: "basics"
  }

  measure: cust_list {
    type: list
    label: "MArket(s)"
    list_field: customer_code
  }





  measure: other_half{
    type: number
    sql: ${half_sales_amount}-${total_sales_amount} ;;
    value_format_name: decimal_0
    label: "Half of measure ($)"
    # html:
    #   {% if value < 0 %}
    # <span style="color:darkred;">{{ rendered_value }}</span>
    # {% elsif value > 0 %}
    # <span style="color:darkgreen;">{{ rendered_value }}</span>
    # {% else %}
    # <span style="color:black;">{{ rendered_value }}</span>
    # {% endif %}  ;;

  }

  # Parameters

  parameter: product_type{
    type: string
    allowed_value: {value: "Own Brand"}
    allowed_value: {value: "Distribution"}
  }

  set: drill_set {
    fields: [
      customers.customer_code,
      order_month,
      market_code,
      total_sale_quantity
    ]
  }



}
