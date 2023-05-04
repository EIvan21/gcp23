# The name of this view in Looker is "Columns"
view: columns {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: information_schema.COLUMNS ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Character Maximum Length" in Explore.

  dimension: character_maximum_length {
    type: number
    sql: ${TABLE}.CHARACTER_MAXIMUM_LENGTH ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_character_maximum_length {
    type: sum
    sql: ${character_maximum_length} ;;
  }

  measure: average_character_maximum_length {
    type: average
    sql: ${character_maximum_length} ;;
  }

  dimension: character_octet_length {
    type: number
    sql: ${TABLE}.CHARACTER_OCTET_LENGTH ;;
  }

  dimension: character_set_name {
    type: string
    sql: ${TABLE}.CHARACTER_SET_NAME ;;
  }

  dimension: collation_name {
    type: string
    sql: ${TABLE}.COLLATION_NAME ;;
  }

  dimension: column_comment {
    type: string
    sql: ${TABLE}.COLUMN_COMMENT ;;
  }

  dimension: column_default {
    type: string
    sql: ${TABLE}.COLUMN_DEFAULT ;;
  }

  dimension: column_key {
    type: string
    sql: ${TABLE}.COLUMN_KEY ;;
  }

  dimension: column_name {
    type: string
    sql: ${TABLE}.COLUMN_NAME ;;
  }

  dimension: column_type {
    type: string
    sql: ${TABLE}.COLUMN_TYPE ;;
  }

  dimension: data_type {
    type: string
    sql: ${TABLE}.DATA_TYPE ;;
  }

  dimension: datetime_precision {
    type: number
    sql: ${TABLE}.DATETIME_PRECISION ;;
  }

  dimension: extra {
    type: string
    sql: ${TABLE}.EXTRA ;;
  }

  dimension: generation_expression {
    type: string
    sql: ${TABLE}.GENERATION_EXPRESSION ;;
  }

  dimension: is_nullable {
    type: string
    sql: ${TABLE}.IS_NULLABLE ;;
  }

  dimension: numeric_precision {
    type: number
    sql: ${TABLE}.NUMERIC_PRECISION ;;
  }

  dimension: numeric_scale {
    type: number
    sql: ${TABLE}.NUMERIC_SCALE ;;
  }

  dimension: ordinal_position {
    type: number
    sql: ${TABLE}.ORDINAL_POSITION ;;
  }

  dimension: privileges {
    type: string
    sql: ${TABLE}.PRIVILEGES ;;
  }

  dimension: srs_id {
    type: number
    sql: ${TABLE}.SRS_ID ;;
  }

  dimension: table_catalog {
    type: string
    sql: ${TABLE}.TABLE_CATALOG ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.TABLE_NAME ;;
  }

  dimension: table_schema {
    type: string
    sql: ${TABLE}.TABLE_SCHEMA ;;
  }

  measure: count {
    type: count
    drill_fields: [character_set_name, collation_name, column_name, table_name]
  }
}
