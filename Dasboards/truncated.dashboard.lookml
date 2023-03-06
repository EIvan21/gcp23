- dashboard: truncated_rows
  title: Truncated rows
  layout: newspaper
  preferred_viewer: dashboards-next
  preferred_slug: UnHGHpeszv9OpiPBgiRjeS
  elements:
  - title: testing truncated table
    name: testing truncated table
    model: gcp_sales_edher
    explore: transactions
    type: looker_grid
    fields: [products.product_code]
    sorts: [products.product_code]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen: {}
    row:
    col:
    width:
    height:
