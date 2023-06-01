view: customers {
  sql_table_name: sales.customers ;;

  dimension: custmer_name {
    label: "Customer Name"
    type: string
    sql: ${TABLE}.custmer_name ;;
  }

  dimension: customer_code {
    type: string
    sql: ${TABLE}.customer_code ;;
    primary_key: yes
  }

  dimension: customer_type {
    label: "customer type test"
    type: string
    sql: ${TABLE}.customer_type ;;

  }

  measure: count {
    type: count
    drill_fields: [custmer_name]
  }

  measure: sum {
    type: sum
  }
}
