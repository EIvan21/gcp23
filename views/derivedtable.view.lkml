view: derivedtable {
  derived_table: {
    sql: SELECT
          (DATE(`order_date`)) AS `transactions.order_date`,
          `market_code` AS `transactions.market_code`,
          COALESCE(SUM(`sales_qty`), 0) AS `transactions.total_sale_quantity`,
          COALESCE(SUM(`sales_amount`), 0) AS `transactions.total_sales_amount`
      FROM
          `sales`.`transactions` AS `transactions`
      WHERE ((( `order_date` ) >= ((DATE(DATE_ADD(CURDATE(),INTERVAL -{{ days_back._parameter_value}}
            day)))) AND ( `order_date` ) < ((DATE(DATE_ADD(DATE_ADD(CURDATE(),INTERVAL -
            {{ days_back._parameter_value}} day),INTERVAL {{ days_back._parameter_value}} day))))))
            AND (transactions.sales_amount>0 AND
                          transactions.currency != "USD\r" AND
                          transactions.currency != "INR" AND
                          (YEAR(transactions.order_date )) >2017)
      GROUP BY
          1,
          2
      ORDER BY
          (DATE(`order_date`)) DESC
      LIMIT 500
       ;;
  }

  parameter: days_back {
    type: unquoted
    allowed_value: {
      value: "10"
      label: "10"
    }
    allowed_value: {
      value: "20"
      label: "20"
    }
    allowed_value: {
      value: "30"
      label: "30"
    }
    allowed_value: {
      value: "40"
      label: "40"
    }
    allowed_value: {
      value: "50"
      label: "50"
    }
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: transactions_order_date {
    type: date
    sql: ${TABLE}.`transactions.order_date` ;;
  }

  dimension: transactions_market_code {
    type: string
    sql: ${TABLE}.`transactions.market_code` ;;
  }

  dimension: transactions_total_sale_quantity {
    type: number
    sql: ${TABLE}.`transactions.total_sale_quantity` ;;
  }

  dimension: transactions_total_sales_amount {
    type: number
    sql: ${TABLE}.`transactions.total_sales_amount` ;;
  }

  set: detail {
    fields: [transactions_order_date, transactions_market_code, transactions_total_sale_quantity, transactions_total_sales_amount]
  }
}
