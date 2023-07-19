- dashboard: overview_sales_2310_copy
  title: Overview sales 2310 (copy)
  layout: newspaper
  preferred_viewer: dashboards-next
  description: This is a dashboard that has built from Looker Version 23.0, and still
    working on this instance
  preferred_slug: EnHYcqbrJbqGutGX1jvmuS
  elements:
  - title: Testing Limits Eng
    name: Testing Limits Eng
    model: gcp_sales_edher
    explore: transactions
    type: looker_line
    fields: [transactions.order_date, transactions.total_sales_amount, transactions.total_sale_quantity]
    fill_fields: [transactions.order_date]
    sorts: [transactions.order_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${transactions.total_sales_amount}/${transactions.total_sale_quantity}"
      label: Qty/amount
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: qtyamount
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: transactions.total_sales_amount,
            id: transactions.total_sales_amount, name: Total Sales Amount}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: qtyamount,
            id: qtyamount, name: Qty/amount}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [transactions.total_sale_quantity]
    note_state: expanded
    note_display: above
    note_text: Just testing limits
    listen:
      Markets Code: markets.markets_code
    row: 6
    col: 0
    width: 24
    height: 7
  - title: Best 10 customers
    name: Best 10 customers
    model: gcp_sales_edher
    explore: transactions
    type: looker_pie
    fields: [transactions.total_sales_amount, transactions.customer_code, customers.custmer_name]
    sorts: [transactions.total_sales_amount desc 0]
    limit: 10
    column_limit: 50
    value_labels: labels
    label_type: labPer
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [transactions.customer_code]
    y_axes: []
    listen:
      Markets Code: markets.markets_code
    row: 20
    col: 0
    width: 24
    height: 7
  - title: Best 10 Markets
    name: Best 10 Markets
    model: gcp_sales_edher
    explore: transactions
    type: looker_column
    fields: [transactions.total_sales_amount, markets.markets_name]
    sorts: [transactions.total_sales_amount desc 0]
    limit: 10
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    value_labels: labels
    label_type: labPer
    show_null_points: true
    interpolation: linear
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Markets Code: markets.markets_code
    row: 27
    col: 0
    width: 24
    height: 6
  - title: Best 10 products
    name: Best 10 products
    model: gcp_sales_edher
    explore: transactions
    type: looker_area
    fields: [transactions.total_sales_amount, products.product_code]
    filters:
      products.product_code: "-NULL"
    sorts: [transactions.total_sales_amount desc]
    limit: 10
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    value_labels: labels
    label_type: labPer
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    ordering: none
    show_null_labels: false
    hidden_pivots: {}
    listen:
      Markets Code: markets.markets_code
    row: 13
    col: 0
    width: 24
    height: 7
  - title: Sales in 2019
    name: Sales in 2019
    model: gcp_sales_edher
    explore: transactions
    type: single_value
    fields: [transactions.total_sales_amount, transactions.order_year]
    fill_fields: [transactions.order_year]
    sorts: [transactions.order_year desc]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Testing localization for this parameter
    comparison_label: Sales in 2019 I dont know what put here, just testing localization
      haha
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Markets Code: markets.markets_code
    row: 0
    col: 0
    width: 24
    height: 6
  - title: Customers-Markets
    name: Customers-Markets
    model: gcp_sales_edher
    explore: transactions
    type: looker_grid
    fields: [transactions.order_date, customers.custmer_name, transactions.total_sales_amount,
      markets.markets_name, transactions.total_sale_quantity]
    sorts: [transactions.total_sales_amount desc 0]
    limit: 10
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${transactions.total_sales_amount}/${transactions.total_sale_quantity}"
      label: amount/qty
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: amountqty
      _type_hint: number
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      amountqty: Dollars Qty
    series_cell_visualizations:
      transactions.total_sales_amount:
        is_active: true
    value_labels: labels
    label_type: labPer
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: [transactions.total_sale_quantity]
    y_axes: []
    listen: {}
    row: 33
    col: 7
    width: 12
    height: 8
  filters:
  - name: Order Year
    title: Order Year
    type: field_filter
    default_value: '2019'
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: gcp_sales_edher
    explore: transactions
    listens_to_filters: []
    field: transactions.order_year
  - name: Markets Code
    title: Markets Code
    type: field_filter
    default_value: Mark001,Mark002,Mark003,Mark004
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: popover
    model: gcp_sales_edher
    explore: transactions
    listens_to_filters: []
    field: markets.markets_code
