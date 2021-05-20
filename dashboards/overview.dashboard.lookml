- dashboard: overview
  title: Overview
  layout: newspaper
  elements:
  - title: Number of projects by Province
    name: Number of projects by Province
    model: ps-ca
    explore: inframapdata
    type: looker_bar
    fields: [inframapdata.province, inframapdata.count]
    sorts: [inframapdata.count desc]
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
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: inframapdata.total_cost_estimated,
            id: inframapdata.total_cost_estimated, name: Total Cost Estimated}, {
            axisId: inframapdata.count, id: inframapdata.count, name: Inframapdata}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types: {}
    reference_lines: []
    defaults_version: 1
    hidden_fields: []
    listen:
      Choose agency: inframapdata.delivery_department_agency
      Province: inframapdata.province
      What stream: inframapdata.stream
    row: 7
    col: 16
    width: 7
    height: 9
  - title: Top 10 Programs by estimated cost, federal contribution and number of projects
    name: Top 10 Programs by estimated cost, federal contribution and number of projects
    model: ps-ca
    explore: inframapdata
    type: looker_grid
    fields: [inframapdata.total_cost_estimated, inframapdata.program_name, inframapdata.federal_contribution_total,
      inframapdata.count]
    sorts: [inframapdata.total_cost_estimated desc, inframapdata.count desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: true
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      inframapdata.count: "# Projects"
    series_column_widths:
      inframapdata.program_name: 471
      inframapdata.federal_contribution_total: 195
      inframapdata.count: 113
    series_cell_visualizations:
      inframapdata.total_cost_estimated:
        is_active: true
      inframapdata.federal_contribution_total:
        is_active: true
      inframapdata.count:
        is_active: false
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '20'
    conditional_formatting: [{type: greater than, value: 400, background_color: "#E8EAED",
        font_color: "#EA4335", color_application: {collection_id: google, palette_id: google-diverging-0,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: true, italic: false, strikethrough: false, fields: [inframapdata.count]}]
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Choose agency: inframapdata.delivery_department_agency
      Province: inframapdata.province
      What stream: inframapdata.stream
    row: 0
    col: 10
    width: 13
    height: 7
  - title: Projects by Stream
    name: Projects by Stream
    model: ps-ca
    explore: inframapdata
    type: looker_donut_multiples
    fields: [inframapdata.stream, inframapdata.count]
    pivots: [inframapdata.stream]
    sorts: [inframapdata.count desc 0, inframapdata.stream]
    limit: 500
    column_limit: 50
    show_value_labels: true
    font_size: 12
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_cell_visualizations:
      inframapdata.count:
        is_active: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hide_totals: false
    hide_row_totals: false
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    note_state: collapsed
    note_display: hover
    note_text: Public Transit is 3rd largest stream
    listen:
      Choose agency: inframapdata.delivery_department_agency
      Province: inframapdata.province
      What stream: inframapdata.stream
    row: 0
    col: 4
    width: 6
    height: 7
  - title: Contributions by location (Top 250)
    name: Contributions by location (Top 250)
    model: ps-ca
    explore: inframapdata
    type: looker_map
    fields: [inframapdata.project_location, inframapdata.federal_contribution_total,
      inframapdata.project_name, inframapdata.stream]
    sorts: [inframapdata.federal_contribution_total desc]
    limit: 250
    column_limit: 50
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: outdoors
    map_position: fit_data
    map_scale_indicator: metric
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_latitude: 40.979898069620155
    map_longitude: -0.087890625
    map_zoom: 3
    series_types: {}
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Choose agency: inframapdata.delivery_department_agency
      Province: inframapdata.province
      What stream: inframapdata.stream
    row: 7
    col: 9
    width: 7
    height: 9
  - title: Total Estimated Costs
    name: Total Estimated Costs
    model: ps-ca
    explore: inframapdata
    type: single_value
    fields: [inframapdata.total_cost_estimated]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: $#,##0,, "M"
    conditional_formatting: [{type: less than, value: 5000000000, background_color: "#EA4335",
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Choose agency: inframapdata.delivery_department_agency
      Province: inframapdata.province
      What stream: inframapdata.stream
    row: 0
    col: 0
    width: 4
    height: 3
  - title: Number of Projects
    name: Number of Projects
    model: ps-ca
    explore: inframapdata
    type: single_value
    fields: [inframapdata.count]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: greater than, value: 12000, background_color: "#BDC1C6",
        font_color: "#5F6368", color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Choose agency: inframapdata.delivery_department_agency
      Province: inframapdata.province
      What stream: inframapdata.stream
    row: 3
    col: 0
    width: 4
    height: 2
  - title: Open Data - Expected Life of asset by municipality and asset type
    name: Open Data - Expected Life of asset by municipality and asset type
    model: ps-ca
    explore: expected_life
    type: sankey
    fields: [expected_life.type_municipality_population, expected_life.bridge_and_tunnel_assets,
      expected_life.status, expected_life.count]
    filters:
      expected_life.bridge_and_tunnel_assets: -"\"Bridge and tunnel assets\""
    limit: 500
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
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
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
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
    defaults_version: 0
    y_axes: []
    note_state: collapsed
    note_display: hover
    note_text: https://www150.statcan.gc.ca/t1/tbl1/en/tv.action?pid=3410017001
    listen:
      Province: expected_life.geo
    row: 16
    col: 0
    width: 23
    height: 8
  - title: Open-Data Average age by asset type
    name: Open-Data Average age by asset type
    model: ps-ca
    explore: expected_life
    type: looker_column
    fields: [expected_life.average_age, expected_life.bridge_and_tunnel_assets]
    filters:
      expected_life.bridge_and_tunnel_assets: "-Bridge and tunnel assets"
    sorts: [expected_life.average_age desc]
    limit: 500
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000"}]
    show_dropoff: false
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Province: expected_life.geo
    row: 7
    col: 0
    width: 9
    height: 9
  - title: Contribution
    name: Contribution
    model: ps-ca
    explore: inframapdata
    type: single_value
    fields: [inframapdata.funded_percentage]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Projects contributed
    value_format: '##.0 "%"'
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Choose agency: inframapdata.delivery_department_agency
      Province: inframapdata.province
    row: 5
    col: 0
    width: 4
    height: 2
  filters:
  - name: Choose agency
    title: Choose agency
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: ps-ca
    explore: inframapdata
    listens_to_filters: []
    field: inframapdata.delivery_department_agency
  - name: Province
    title: Province
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: ps-ca
    explore: inframapdata
    listens_to_filters: []
    field: inframapdata.province
  - name: What stream
    title: What stream
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: ps-ca
    explore: inframapdata
    listens_to_filters: []
    field: inframapdata.stream
