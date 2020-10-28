- dashboard: performance_spiders
  title: Performance Spiders
  layout: newspaper
  elements:
  - name: Performance Spider - Rates
    title: Performance Spider - Rates
    model: client_scl_marketing
    explore: scl_mx_ppc
    type: marketplace_viz_spider::spider-marketplace
    fields: [arch_campaigns.campaign, mx_marketing.cost_sum, mx_marketing.ctr,
      mx_marketing.otr]
    filters:
      arch_timeframes.month: 1 months ago for 1 months
    sorts: [mx_marketing.ctr desc]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    levels: 4
    label_factor: 85
    label_fine: 13
    rounded_strokes: true
    independent: true
    labelScale: false
    negatives: false
    wrap_width: 100
    opacity_area: 5
    dot_radius: 0
    opacity_circles: 3
    backgroundColor: "#CDCDCD"
    axisColor: "#CDCDCD"
    stroke_width: 7
    glow: 48
    axis_label_font: 18
    axis_scale_font: 12
    legend_font: 12
    legend_padding: 11
    legend_side: right
    FR - PC - Lafayette_color: "#E48522"
    FR - PC - Firestone_color: "#D13452"
    FR - PC - Westminster_color: "#fc5f7d"
    FR - PC - Lakewood_color: "#B977A9"
    FR - PC - Thornton_color: "#f85b79"
    FR - PC - Broomfield_color: "#615894"
    FR - PC - Wheat Ridge_color: "#ff6381"
    FR - PC - Littleton_color: "#7bc739"
    FR - PC - Aurora_color: "#4A80BC"
    FR - PC - Denver_color: "#F0C733"
    FR - PC - Superior - Display_color: "#92b3d7"
    FR - PC - Superior - Video Discovery_color: "#e38597"
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
    series_types: {}
    listen:
      Campaign: arch_campaigns.campaign
    row: 10
    col: 0
    width: 14
    height: 10
  - title: Performance Spider - Costs Per
    name: Performance Spider - Costs Per
    model: client_scl_marketing
    explore: scl_mx_ppc
    type: marketplace_viz_spider::spider-marketplace
    fields: [arch_campaigns.campaign, mx_marketing.mpc, mx_marketing.cpcost,
      mx_marketing.opc]
    filters:
      arch_timeframes.month: 1 months ago for 1 months
    sorts: [mx_marketing.mpc desc]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    levels: 4
    label_factor: 85
    label_fine: 13
    rounded_strokes: true
    independent: true
    labelScale: false
    negatives: false
    wrap_width: 100
    opacity_area: 5
    dot_radius: 0
    opacity_circles: 3
    backgroundColor: "#CDCDCD"
    axisColor: "#CDCDCD"
    stroke_width: 7
    glow: 48
    axis_label_font: 18
    axis_scale_font: 12
    legend_font: 12
    legend_padding: 11
    legend_side: right
    FR - PC - Lafayette_color: "#E48522"
    FR - PC - Firestone_color: "#D13452"
    FR - PC - Westminster_color: "#fc5f7d"
    FR - PC - Lakewood_color: "#B977A9"
    FR - PC - Thornton_color: "#f85b79"
    FR - PC - Broomfield_color: "#615894"
    FR - PC - Wheat Ridge_color: "#ff6381"
    FR - PC - Littleton_color: "#7bc739"
    FR - PC - Aurora_color: "#4A80BC"
    FR - PC - Denver_color: "#F0C733"
    FR - PC - Superior - Display_color: "#92b3d7"
    FR - PC - Superior - Video Discovery_color: "#e38597"
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
    series_types: {}
    listen:
      Campaign: arch_campaigns.campaign
    row: 20
    col: 0
    width: 14
    height: 10
  - title: Performance Spider - Metrics
    name: Performance Spider - Metrics
    model: client_scl_marketing
    explore: scl_mx_ppc
    type: marketplace_viz_spider::spider-marketplace
    fields: [arch_campaigns.campaign, mx_marketing.cost_sum, mx_marketing.impr_sum,
      mx_marketing.clicks_sum, mx_marketing.outcomes_sum]
    filters:
      arch_timeframes.month: 1 months ago for 1 months
    sorts: [mx_marketing.impr_sum]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    levels: 4
    label_factor: 85
    label_fine: 13
    rounded_strokes: true
    independent: true
    labelScale: false
    negatives: false
    wrap_width: 100
    opacity_area: 5
    dot_radius: 0
    opacity_circles: 3
    backgroundColor: "#CDCDCD"
    axisColor: "#CDCDCD"
    stroke_width: 7
    glow: 48
    axis_label_font: 18
    axis_scale_font: 12
    legend_font: 12
    legend_padding: 11
    legend_side: right
    FR - PC - Lafayette_color: "#E48522"
    FR - PC - Firestone_color: "#D13452"
    FR - PC - Westminster_color: "#fc5f7d"
    FR - PC - Lakewood_color: "#B977A9"
    FR - PC - Thornton_color: "#f85b79"
    FR - PC - Broomfield_color: "#615894"
    FR - PC - Wheat Ridge_color: "#ff6381"
    FR - PC - Littleton_color: "#7bc739"
    FR - PC - Aurora_color: "#4A80BC"
    FR - PC - Denver_color: "#F0C733"
    FR - PC - Superior - Display_color: "#92b3d7"
    FR - PC - Superior - Video Discovery_color: "#e38597"
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
    series_types: {}
    listen:
      Campaign: arch_campaigns.campaign
    row: 0
    col: 0
    width: 14
    height: 10
  - title: New Tile
    name: New Tile
    model: client_scl_marketing
    explore: scl_mx_ppc
    type: marketplace_viz_spider::spider-marketplace
    fields: [mx_marketing.cost_sum, mx_marketing.impr_sum, mx_marketing.clicks_sum,
      mx_marketing.outcomes_sum, arch_timeframes.month]
    fill_fields: [arch_timeframes.month]
    filters:
      arch_timeframes.month: 12 months ago for 12 months
    sorts: [arch_timeframes.month]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    levels: 4
    label_factor: 85
    label_fine: 13
    rounded_strokes: true
    independent: true
    labelScale: false
    negatives: false
    wrap_width: 100
    opacity_area: 5
    dot_radius: 0
    opacity_circles: 3
    backgroundColor: "#CDCDCD"
    axisColor: "#CDCDCD"
    stroke_width: 7
    glow: 48
    axis_label_font: 18
    axis_scale_font: 12
    legend_font: 12
    legend_padding: 11
    legend_side: right
    2020-05_color: "#6f75db"
    2020-08_color: "#151bba"
    2020-06_color: "#535acf"
    2020-01_color: "#bab8f2"
    2020-07_color: "#383fc4"
    2019-09_color: "#efeafa"
    2020-04_color: "#9196e3"
    2019-11_color: "#e5e5ff"
    2020-03_color: "#aba9ed"
    2020-02_color: "#bab8f2"
    2019-10_color: "#dcd9f7"
    2019-12_color: "#d2d1f7"
    FR - PC - Lafayette_color: "#E48522"
    FR - PC - Firestone_color: "#D13452"
    FR - PC - Westminster_color: "#fc5f7d"
    FR - PC - Lakewood_color: "#B977A9"
    FR - PC - Thornton_color: "#f85b79"
    FR - PC - Broomfield_color: "#615894"
    FR - PC - Wheat Ridge_color: "#ff6381"
    FR - PC - Littleton_color: "#7bc739"
    FR - PC - Aurora_color: "#4A80BC"
    FR - PC - Denver_color: "#F0C733"
    FR - PC - Superior - Display_color: "#92b3d7"
    FR - PC - Superior - Video Discovery_color: "#e38597"
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
    series_types: {}
    title_hidden: true
    listen:
      Campaign: arch_campaigns.campaign
    row: 0
    col: 14
    width: 10
    height: 10
  - title: New Tile (copy)
    name: New Tile (copy)
    model: client_scl_marketing
    explore: scl_mx_ppc
    type: marketplace_viz_spider::spider-marketplace
    fields: [arch_timeframes.month, mx_marketing.cost_sum, mx_marketing.cpc,
      mx_marketing.cpo]
    fill_fields: [arch_timeframes.month]
    filters:
      arch_timeframes.month: 12 months ago for 12 months
    sorts: [arch_timeframes.month]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    levels: 4
    label_factor: 85
    label_fine: 13
    rounded_strokes: true
    independent: true
    labelScale: false
    negatives: false
    wrap_width: 100
    opacity_area: 5
    dot_radius: 0
    opacity_circles: 3
    backgroundColor: "#CDCDCD"
    axisColor: "#CDCDCD"
    stroke_width: 7
    glow: 48
    axis_label_font: 18
    axis_scale_font: 12
    legend_font: 12
    legend_padding: 11
    legend_side: right
    2020-05_color: "#6f75db"
    2020-08_color: "#151bba"
    2020-06_color: "#535acf"
    2020-01_color: "#bab8f2"
    2020-07_color: "#383fc4"
    2019-09_color: "#efeafa"
    2020-04_color: "#9196e3"
    2019-11_color: "#e5e5ff"
    2020-03_color: "#aba9ed"
    2020-02_color: "#bab8f2"
    2019-10_color: "#dcd9f7"
    2019-12_color: "#d2d1f7"
    FR - PC - Lafayette_color: "#E48522"
    FR - PC - Firestone_color: "#D13452"
    FR - PC - Westminster_color: "#fc5f7d"
    FR - PC - Lakewood_color: "#B977A9"
    FR - PC - Thornton_color: "#f85b79"
    FR - PC - Broomfield_color: "#615894"
    FR - PC - Wheat Ridge_color: "#ff6381"
    FR - PC - Littleton_color: "#7bc739"
    FR - PC - Aurora_color: "#4A80BC"
    FR - PC - Denver_color: "#F0C733"
    FR - PC - Superior - Display_color: "#92b3d7"
    FR - PC - Superior - Video Discovery_color: "#e38597"
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
    series_types: {}
    title_hidden: true
    listen:
      Campaign: arch_campaigns.campaign
    row: 10
    col: 14
    width: 10
    height: 10
  filters:
  - name: Campaign
    title: Campaign
    type: field_filter
    default_value: "%FR - PC%"
    allow_multiple_values: true
    required: false
    model: client_scl_marketing
    explore: scl_mx_ppc
    listens_to_filters: []
    field: arch_campaigns.campaign
