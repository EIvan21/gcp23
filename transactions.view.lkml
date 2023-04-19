view: transactions {
  derived_table: {
    sql: select * from transactions
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: product_code {
    type: string
    sql: ${TABLE}.product_code ;;
  }

  dimension: customer_code {
    type: string
    sql: ${TABLE}.customer_code ;;
  }

  dimension: market_code {
    type: string
    sql: ${TABLE}.market_code ;;
  }

  dimension: order_date {
    type: date
    sql: ${TABLE}.order_date ;;
  }

  dimension: sales_qty {
    type: number
    sql: ${TABLE}.sales_qty ;;
  }

  dimension: sales_amount {
    type: number
    sql: ${TABLE}.sales_amount ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  set: detail {
    fields: [
      product_code,
      customer_code,
      market_code,
      order_date,
      sales_qty,
      sales_amount,
      currency
    ]
  }
}
