- dashboard: schedules
  title: Schedules
  layout: newspaper
  preferred_viewer: dashboards-next
  description: 'This is a dashboard that has built from Looker Version 23.0, and still working on this instance'
  preferred_slug: 5KpI6oBULh8ib4CbBUWZE0
  elements:
  - name: testing limit
    note:
      text: 'Just testing limits'
      state: expanded
      display: above
    title: testing limit
    model: gcp_sales_edher
    explore: transactions
    type: looker_line
    fields: [transactions.order_date, transactions.total_sales_amount]
    fill_fields: [transactions.order_date]
    sorts: [transactions.order_date desc]
    limit: 500
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
    series_types: {}
    listen:
      Order Year: transactions.order_year
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
    filters: {}
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
    series_types: {}
    listen:
      Order Year: transactions.order_year
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
    filters: {}
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
    series_types: {}
    listen:
      Order Year: transactions.order_year
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
    series_types: {}
    ordering: none
    show_null_labels: false
    hidden_pivots: {}
    listen:
      Order Year: transactions.order_year
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
    filters: {}
    sorts: [transactions.order_year desc]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: "Testing localization for this parameter"
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: "Sales in 2019 I dont know what put here, just testing localization haha"
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    series_types: {}
    listen:
      Order Year: transactions.order_year
    row: 0
    col: 0
    width: 24
    height: 6
  - title: customers-markets
    name: customers-markets
    model: gcp_sales_edher
    explore: transactions
    type: looker_grid
    fields: [transactions.order_date, customers.custmer_name, transactions.total_sales_amount,
      markets.markets_name]
    sorts: [transactions.total_sales_amount desc 0]
    limit: 500
    column_limit: 50
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
    hidden_fields: []
    y_axes: []
    series_types: {}
    listen:
      Order Year: transactions.order_year
    row: 33
    col: 0
    width: 24
    height: 22
  - title: Total Sales Amount
    name: New Tile
    model: gcp_sales_edher
    explore: transactions
    type: looker_line
    fields: [transactions.order_date, transactions.total_sales_amount, transactions.order_month_name,
      enero]
    filters:
      products.product_code: "-NULL"
    sorts: [transactions.total_sales_amount desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{category: dimension, description: '', label: Enero, value_format: !!null '',
        value_format_name: !!null '', calculation_type: group_by, dimension: enero,
        args: [transactions.order_date, [!ruby/hash:ActiveSupport::HashWithIndifferentAccess {
              label: Enero, filter: 2023-01}], !!null ''], _kind_hint: dimension,
        _type_hint: string}]
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
    hidden_fields: []
    y_axes: []
    series_types: {}
    listen:
      Order Year: transactions.order_year
    row:
    col:
    width:
    height:
  - title: Testing long Tables
    name: Testing bug
    model: gcp_sales_edher
    explore: transactions
    type: looker_grid
    fields: [transactions.total_sales_amount, markets.markets_name, transactions.order_year,
      transactions.cust_name, products.product_code]
    pivots: [transactions.order_year]
    fill_fields: [transactions.order_year]
    sorts: [transactions.total_sales_amount desc 0, transactions.order_year]
    limit: 5000
    column_limit: 50
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    value_labels: labels
    label_type: labPer
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    series_types: {}
    hidden_pivots: {}
    listen:
      Order Year: transactions.order_year
    row:
    col:
    width:
    height:
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
