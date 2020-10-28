- dashboard: ppc__simple_dashboard__200928
  title: PPC - Simple Dashboard - 200928
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: PPC - Core Metrics
    name: PPC - Core Metrics
    model: client_scl_marketing
    explore: scl_mx_ppc
    type: looker_grid
    fields: [arch_timeframes.month, mx_marketing.impr_sum, mx_marketing.clicks_sum,
      mx_marketing.ctr, mx_marketing.cost_sum, mx_marketing.cpc,
      mx_marketing.outcomes_sum, mx_marketing.cpo, mx_marketing.otr]
    fill_fields: [arch_timeframes.month]
    sorts: [arch_timeframes.month desc]
    limit: 500
    total: true
    query_timezone: America/New_York
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
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
      mx_marketing.outcomes_sum: "# Conversions"
      mx_marketing.cpo: Cost/Conv
      mx_marketing.otr: Conv Rate
      arch_timeframes.month: Month
    series_cell_visualizations:
      mx_marketing.impr_sum:
        is_active: true
        palette:
          palette_id: bea74994-cd25-84ed-1f66-fed9a845aef4
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
          custom_colors:
          - "#DDD"
          - "#BBB"
      mx_marketing.clicks_sum:
        is_active: true
        palette:
          palette_id: b772e11c-e9ec-942c-15cb-06969e6120c4
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
          custom_colors:
          - "#a47ee0"
          - "#592EC2"
      mx_marketing.cost_sum:
        is_active: true
        palette:
          palette_id: 22a00495-33ea-6b82-a9e8-2f71c39154b3
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
          custom_colors:
          - "#ed6d76"
          - "#B32F37"
      mx_marketing.outcomes_sum:
        is_active: true
        palette:
          palette_id: f2859b73-8306-e0fc-1cc2-32da4f0d43a1
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
          custom_colors:
          - "#68d968"
          - "#37bd3c"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          custom: {id: 5e9cd056-2d5d-4417-a838-2db7e55e84c0, label: Custom, type: continuous,
            stops: [{color: "#d2b8ff", offset: 0}, {color: "#592EC2", offset: 100}]},
          options: {steps: 5}}, bold: false, italic: false, strikethrough: false,
        fields: [mx_marketing.ctr]}]
    truncate_column_names: false
    defaults_version: 1
    series_types: {}
    listen:
      Timeframes Date: arch_timeframes.date
      Campaign: arch_campaigns.campaign
      Campaign Group: arch_campaigns.campaign_group
      Region: arch_campaigns.campaign_region
      Campaign Category: arch_campaigns.campaign_category
      User - Owner: arch_campaigns.user_owner
      User - Manager: arch_campaigns.user_manager
      Campaign Label: arch_campaigns.campaign_label
    row: 0
    col: 0
    width: 23
    height: 7
  - title: Metrics - Impressions
    name: Metrics - Impressions
    model: client_scl_marketing
    explore: scl_mx_ppc
    type: looker_column
    fields: [arch_timeframes.month, mx_marketing.impr_sum]
    fill_fields: [arch_timeframes.month]
    sorts: [arch_timeframes.month desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: mx_marketing.impr_sum,
            id: mx_marketing.impr_sum, name: "# Impressions"}], showLabels: false,
        showValues: true, valueFormat: '#,##0.0,,"MM"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      mx_marketing.impr_sum: "#bbb"
    x_axis_datetime_label: "%b-%y"
    show_null_points: false
    interpolation: linear
    discontinuous_nulls: true
    defaults_version: 1
    listen:
      Timeframes Date: arch_timeframes.date
      Campaign: arch_campaigns.campaign
      Campaign Group: arch_campaigns.campaign_group
      Region: arch_campaigns.campaign_region
      Campaign Category: arch_campaigns.campaign_category
      User - Owner: arch_campaigns.user_owner
      User - Manager: arch_campaigns.user_manager
      Campaign Label: arch_campaigns.campaign_label
    row: 7
    col: 0
    width: 23
    height: 5
  - title: Metrics - Clicks
    name: Metrics - Clicks
    model: client_scl_marketing
    explore: scl_mx_ppc
    type: looker_column
    fields: [arch_timeframes.month, mx_marketing.clicks_sum]
    fill_fields: [arch_timeframes.month]
    sorts: [arch_timeframes.month desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: mx_marketing.clicks_sum,
            id: mx_marketing.clicks_sum, name: "# Clicks"}], showLabels: false,
        showValues: true, valueFormat: '#,##0.0,"K"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      mx_marketing.clicks_sum: "#592EC2"
    x_axis_datetime_label: "%b-%y"
    show_null_points: false
    interpolation: linear
    discontinuous_nulls: true
    defaults_version: 1
    listen:
      Timeframes Date: arch_timeframes.date
      Campaign: arch_campaigns.campaign
      Campaign Group: arch_campaigns.campaign_group
      Region: arch_campaigns.campaign_region
      Campaign Category: arch_campaigns.campaign_category
      User - Owner: arch_campaigns.user_owner
      User - Manager: arch_campaigns.user_manager
      Campaign Label: arch_campaigns.campaign_label
    row: 18
    col: 0
    width: 23
    height: 6
  - title: Metrics - CTR
    name: Metrics - CTR
    model: client_scl_marketing
    explore: scl_mx_ppc
    type: looker_line
    fields: [arch_timeframes.month, mx_marketing.ctr]
    fill_fields: [arch_timeframes.month]
    sorts: [arch_timeframes.month desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: mx_marketing.ctr,
            id: mx_marketing.ctr, name: "% CTR"}], showLabels: false, showValues: true,
        valueFormat: 0.0%, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors:
      mx_marketing.ctr: "#592EC2"
    x_axis_datetime_label: "%b-%y"
    discontinuous_nulls: true
    defaults_version: 1
    listen:
      Timeframes Date: arch_timeframes.date
      Campaign: arch_campaigns.campaign
      Campaign Group: arch_campaigns.campaign_group
      Region: arch_campaigns.campaign_region
      Campaign Category: arch_campaigns.campaign_category
      User - Owner: arch_campaigns.user_owner
      User - Manager: arch_campaigns.user_manager
      Campaign Label: arch_campaigns.campaign_label
    row: 12
    col: 0
    width: 23
    height: 6
  - title: Metrics - Cost
    name: Metrics - Cost
    model: client_scl_marketing
    explore: scl_mx_ppc
    type: looker_column
    fields: [arch_timeframes.month, mx_marketing.cost_sum]
    fill_fields: [arch_timeframes.month]
    sorts: [arch_timeframes.month desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: mx_marketing.cost_sum,
            id: mx_marketing.cost_sum, name: "$ Cost"}], showLabels: false,
        showValues: true, valueFormat: '$#,##0,"K"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      mx_marketing.cost_sum: "#B32F37"
    x_axis_datetime_label: "%b-%y"
    show_null_points: false
    interpolation: linear
    discontinuous_nulls: true
    defaults_version: 1
    listen:
      Timeframes Date: arch_timeframes.date
      Campaign: arch_campaigns.campaign
      Campaign Group: arch_campaigns.campaign_group
      Region: arch_campaigns.campaign_region
      Campaign Category: arch_campaigns.campaign_category
      User - Owner: arch_campaigns.user_owner
      User - Manager: arch_campaigns.user_manager
      Campaign Label: arch_campaigns.campaign_label
    row: 24
    col: 0
    width: 23
    height: 6
  - title: Metrics - Cost per Click
    name: Metrics - Cost per Click
    model: client_scl_marketing
    explore: scl_mx_ppc
    type: looker_line
    fields: [arch_timeframes.month, mx_marketing.cpc]
    fill_fields: [arch_timeframes.month]
    sorts: [arch_timeframes.month desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: mx_marketing.cost_sum,
            id: mx_marketing.cost_sum, name: "$ Cost"}], showLabels: false,
        showValues: true, valueFormat: "$#,##0.00", unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      mx_marketing.cpc: "#B32F37"
    x_axis_datetime_label: "%b-%y"
    discontinuous_nulls: true
    defaults_version: 1
    listen:
      Timeframes Date: arch_timeframes.date
      Campaign: arch_campaigns.campaign
      Campaign Group: arch_campaigns.campaign_group
      Region: arch_campaigns.campaign_region
      Campaign Category: arch_campaigns.campaign_category
      User - Owner: arch_campaigns.user_owner
      User - Manager: arch_campaigns.user_manager
      Campaign Label: arch_campaigns.campaign_label
    row: 30
    col: 0
    width: 23
    height: 6
  - title: Metrics - Conversions
    name: Metrics - Conversions
    model: client_scl_marketing
    explore: scl_mx_ppc
    type: looker_column
    fields: [arch_timeframes.month, mx_marketing.outcomes_sum, arch_outcomes_admin.outcome_type_category]
    pivots: [arch_outcomes_admin.outcome_type_category]
    filters:
      mx_marketing.outcomes_sum: NOT NULL
    sorts: [arch_timeframes.month desc, arch_outcomes_admin.outcome_type_category]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: mx_marketing.clicks_sum,
            id: mx_marketing.clicks_sum, name: "# Clicks"}], showLabels: false,
        showValues: true, valueFormat: '#,##0.0,"K"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      mx_marketing.outcomes_sum: "#37bd3c"
    x_axis_datetime_label: "%b-%y"
    show_null_points: false
    interpolation: linear
    discontinuous_nulls: true
    defaults_version: 1
    listen:
      Timeframes Date: arch_timeframes.date
      Campaign: arch_campaigns.campaign
      Campaign Group: arch_campaigns.campaign_group
      Region: arch_campaigns.campaign_region
      Campaign Category: arch_campaigns.campaign_category
      User - Owner: arch_campaigns.user_owner
      User - Manager: arch_campaigns.user_manager
      Campaign Label: arch_campaigns.campaign_label
    row: 36
    col: 0
    width: 23
    height: 6
  - title: Metrics - Cost per Conversions
    name: Metrics - Cost per Conversions
    model: client_scl_marketing
    explore: scl_mx_ppc
    type: looker_line
    fields: [arch_timeframes.month, mx_marketing.cpo]
    fill_fields: [arch_timeframes.month]
    sorts: [arch_timeframes.month desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: mx_marketing.cost_sum,
            id: mx_marketing.cost_sum, name: "$ Cost"}], showLabels: false,
        showValues: true, valueFormat: "$#,##0.00", unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    x_axis_datetime_label: "%b-%y"
    discontinuous_nulls: true
    defaults_version: 1
    listen:
      Timeframes Date: arch_timeframes.date
      Campaign: arch_campaigns.campaign
      Campaign Group: arch_campaigns.campaign_group
      Region: arch_campaigns.campaign_region
      Campaign Category: arch_campaigns.campaign_category
      User - Owner: arch_campaigns.user_owner
      User - Manager: arch_campaigns.user_manager
      Campaign Label: arch_campaigns.campaign_label
    row: 42
    col: 0
    width: 23
    height: 6
  - title: Metrics - Conv Rate
    name: Metrics - Conv Rate
    model: client_scl_marketing
    explore: scl_mx_ppc
    type: looker_line
    fields: [arch_timeframes.month, mx_marketing.otr]
    fill_fields: [arch_timeframes.month]
    sorts: [arch_timeframes.month desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: mx_marketing.ctr,
            id: mx_marketing.ctr, name: "% CTR"}], showLabels: false, showValues: true,
        valueFormat: 0.0%, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors:
      mx_marketing.otr: "#37bd3c"
    x_axis_datetime_label: "%b-%y"
    swap_axes: false
    discontinuous_nulls: true
    defaults_version: 1
    listen:
      Timeframes Date: arch_timeframes.date
      Campaign: arch_campaigns.campaign
      Campaign Group: arch_campaigns.campaign_group
      Region: arch_campaigns.campaign_region
      Campaign Category: arch_campaigns.campaign_category
      User - Owner: arch_campaigns.user_owner
      User - Manager: arch_campaigns.user_manager
      Campaign Label: arch_campaigns.campaign_label
    row: 48
    col: 0
    width: 23
    height: 6
  - title: Reach Performance
    name: Reach Performance
    model: client_scl_marketing
    explore: scl_mx_ppc
    type: looker_line
    fields: [arch_timeframes.month, mx_marketing.impr_sum, mx_marketing.ctr]
    fill_fields: [arch_timeframes.month]
    sorts: [arch_timeframes.month desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: mx_marketing.impr_sum,
            id: mx_marketing.impr_sum, name: "# Impressions"}], showLabels: false,
        showValues: true, valueFormat: '#,##0.0,,"MM"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: mx_marketing.ctr, id: mx_marketing.ctr,
            name: "% CTR"}], showLabels: false, showValues: true, valueFormat: "#,##0.0%",
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types:
      mx_marketing.impr_sum: column
    series_colors:
      mx_marketing.impr_sum: "#BBB"
      mx_marketing.ctr: "#592EC2"
    x_axis_datetime_label: "%b-%y"
    discontinuous_nulls: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Timeframes Date: arch_timeframes.date
      Campaign: arch_campaigns.campaign
      Campaign Group: arch_campaigns.campaign_group
      Region: arch_campaigns.campaign_region
      Campaign Category: arch_campaigns.campaign_category
      User - Owner: arch_campaigns.user_owner
      User - Manager: arch_campaigns.user_manager
      Campaign Label: arch_campaigns.campaign_label
    row: 54
    col: 0
    width: 23
    height: 5
  - title: Engagement
    name: Engagement
    model: client_scl_marketing
    explore: scl_mx_ppc
    type: looker_line
    fields: [arch_timeframes.month, mx_marketing.clicks_sum, mx_marketing.otr]
    fill_fields: [arch_timeframes.month]
    sorts: [arch_timeframes.month desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: mx_marketing.clicks_sum,
            id: mx_marketing.clicks_sum, name: "# Clicks"}], showLabels: false,
        showValues: true, valueFormat: '#,##0.0,"K"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: mx_marketing.otr, id: mx_marketing.otr,
            name: "% OTR"}], showLabels: false, showValues: true, valueFormat: "#,##0.0%",
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types:
      mx_marketing.clicks_sum: column
    series_colors:
      mx_marketing.clicks_sum: "#592EC2"
      mx_marketing.otr: "#37bd3c"
    x_axis_datetime_label: "%b-%y"
    discontinuous_nulls: true
    defaults_version: 1
    listen:
      Timeframes Date: arch_timeframes.date
      Campaign: arch_campaigns.campaign
      Campaign Group: arch_campaigns.campaign_group
      Region: arch_campaigns.campaign_region
      Campaign Category: arch_campaigns.campaign_category
      User - Owner: arch_campaigns.user_owner
      User - Manager: arch_campaigns.user_manager
      Campaign Label: arch_campaigns.campaign_label
    row: 59
    col: 0
    width: 23
    height: 6
  filters:
  - name: Campaign Group
    title: Campaign Group
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: client_scl_marketing
    explore: scl_mx_ppc
    listens_to_filters: []
    field: arch_campaigns.campaign_group
  - name: Region
    title: Region
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: client_scl_marketing
    explore: scl_mx_ppc
    listens_to_filters: []
    field: arch_campaigns.campaign_region
  - name: Campaign
    title: Campaign
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: overflow
    model: client_scl_marketing
    explore: scl_mx_ppc
    listens_to_filters: []
    field: arch_campaigns.campaign
  - name: Campaign Label
    title: Campaign Label
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: client_scl_marketing
    explore: scl_mx_ppc
    listens_to_filters: []
    field: arch_campaigns.campaign_label
  - name: Timeframes Date
    title: Timeframes Date
    type: field_filter
    default_value: 12 months ago for 12 months
    allow_multiple_values: true
    required: true
    ui_config:
      type: advanced
      display: overflow
      options: []
    model: client_scl_marketing
    explore: scl_mx_ppc
    listens_to_filters: []
    field: arch_timeframes.date
  - name: Campaign Category
    title: Campaign Category
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: client_scl_marketing
    explore: scl_mx_ppc
    listens_to_filters: []
    field: arch_campaigns.campaign_category
  - name: User - Owner
    title: User - Owner
    type: string_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
  - name: User - Manager
    title: User - Manager
    type: string_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
