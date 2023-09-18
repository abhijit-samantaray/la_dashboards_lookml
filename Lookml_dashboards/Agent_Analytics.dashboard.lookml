- dashboard: agent_analytics
  title: Agent Analytics
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 07KU5QbfEPshKlxm95jiB7
  elements:
  - title: New Tile
    name: New Tile
    model: qai_la_analytic
    explore: ccai_to_bq_cleaned_copy
    type: single_value
    fields: [ccai_to_bq_cleaned_copy.count_distinct_callid]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Total Number Of Interactions
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
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Date: ccai_to_bq_cleaned_copy.start_time_date
    row: 4
    col: 0
    width: 10
    height: 3
  - title: Average User Sentiment of Agent
    name: Average User Sentiment of Agent
    model: qai_la_analytic
    explore: ccai_to_bq_cleaned_copy
    type: looker_line
    fields: [ccai_to_bq_cleaned_copy.Agent_avg_sentiment, ccai_to_bq_cleaned_copy.start_time_date]
    fill_fields: [ccai_to_bq_cleaned_copy.start_time_date]
    filters: {}
    sorts: [ccai_to_bq_cleaned_copy.start_time_date desc]
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
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Total Number Of Interactions
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Date: ccai_to_bq_cleaned_copy.start_time_date
    row: 12
    col: 0
    width: 12
    height: 8
  - title: Average Silence Time With Respect to Topics
    name: Average Silence Time With Respect to Topics
    model: qai_la_analytic
    explore: ccai_to_bq_cleaned_copy
    type: looker_column
    fields: [ccai_to_bq_cleaned_copy.sil_time_bucket, ccai_to_bq_cleaned_copy.avg_agent_silence1,
      ccai_to_bq_cleaned_copy.topic_name]
    pivots: [ccai_to_bq_cleaned_copy.sil_time_bucket]
    filters:
      ccai_to_bq_cleaned_copy.sil_time_bucket: "-Below 0"
    sorts: [ccai_to_bq_cleaned_copy.sil_time_bucket, ccai_to_bq_cleaned_copy.avg_agent_silence1
        desc 0]
    limit: 20
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
    stacking: normal
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
    color_application:
      collection_id: standalone-project
      palette_id: standalone-project-categorical-0
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      31 to 60 - 2 - ccai_to_bq_cleaned_copy.avg_agent_silence1: "#847c7d"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Date: ccai_to_bq_cleaned_copy.start_time_date
    row: 12
    col: 12
    width: 12
    height: 8
  - title: Agent Utterances
    name: Agent Utterances
    model: qai_la_analytic
    explore: ccai_to_bq_cleaned_copy
    type: looker_grid
    fields: [ccai_to_bq_cleaned_copy.trigrams, ccai_to_bq_cleaned_copy.count]
    filters:
      ccai_to_bq_cleaned_copy.trigrams: "-NULL"
    sorts: [ccai_to_bq_cleaned_copy.count desc 0]
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
      ccai_to_bq_cleaned_copy.trigrams: Positive Agent Utterance
      ccai_to_bq_cleaned_copy.count: Frequency
    series_cell_visualizations:
      ccai_to_bq_cleaned_copy.count:
        is_active: true
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
    defaults_version: 1
    listen:
      Date: ccai_to_bq_cleaned_copy.start_time_date
    row: 4
    col: 10
    width: 14
    height: 8
  - title: Average Agent Sentiment
    name: Average Agent Sentiment
    model: qai_la_analytic
    explore: ccai_to_bq_cleaned_copy
    type: marketplace_viz_radial_gauge::radial_gauge-marketplace
    fields: [ccai_to_bq_cleaned_copy.Agent_avg_sentiment]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: false
    arm_length: 10.5
    arm_weight: 50
    spinner_length: 66
    spinner_weight: 18
    target_length: 15
    target_gap: 15
    target_weight: 26
    range_min: -1
    range_max: 1
    value_label_type: both
    value_label_font: 12
    value_formatting: '0.00'
    value_label_override: Average Agent Sentiment
    value_label_padding: 60
    target_source: 'off'
    target_label_type: both
    target_label_font: 3
    label_font_size: 3
    spinner_type: needle
    fill_color: "#2188ff"
    background_color: "#ecdfff"
    spinner_color: "#1a0603"
    range_color: "#1a0b0a"
    gauge_fill_type: segment
    fill_colors: ["#7FCDAE", "#ffed6f", "#EE7772"]
    viz_trellis_by: none
    trellis_rows: 2
    trellis_cols: 2
    angle: 90
    cutout: 31
    range_x: 1
    range_y: 1
    target_label_padding: 1.08
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
    listen:
      Date: ccai_to_bq_cleaned_copy.start_time_date
    row: 7
    col: 0
    width: 10
    height: 5
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<table style=\"width:100%; border-radius: 6px; background-color:#FFFFFF;\
      \ margin: 0px;\"><tr>\n          <td class=\"vis\" style=\"width:80%; text-align:left;\
      \ padding-left:10px;\">\n            <h1 style=\"color:#005495; margin-bottom:\
      \ 0px;\" > Live Agent Analytics </h1><br>\n            <div style=\"letter-spacing:0.3px;line-height:1;\"\
      >\n            <table style=\"letter-spacing:0.3px;line-height:1.5; margin:\
      \ 0px;\"><tr><td style=\"width:30%;\">\n\t    <a href=\"https://quantiphi.looker.com/embed/dashboards/1736\"\
      >\n            <font color=\"#005495\" size=\"3\"> Live Agent Analytics</font></a>\n\
      \            </td><td style=\"width:20%;\">\n\t    <a href=\"/embed/dashboards/1734\"\
      >\n            <font color=\"#005495\" size=\"3\">| Topic Analytics </font></a>\n\
      \            </td><td style=\"width:30%;\">\n\t    <a href=\"/embed/dashboards/1733\"\
      >\n            <font color=\"#005495\" size=\"3\">| User Analytics </font></a>\n\
      \            </td></tr><tr><td>\n            <font color=\"#129fd9\" size=\"\
      3\"> Agent Analytics</font>\n            </td><td>\n\n            </td></tr></table>\n\
      \            <br/>\n            </div>\n          </td>\n          <td>\n  \
      \          <div><img style=\"width:100%\" src=\"https://logovectorseek.com/wp-content/uploads/2021/06/quantiphi-inc-logo-vector.png\"\
      ></div>\n          </td>\n        </tr></table>"
    row: 0
    col: 0
    width: 24
    height: 4
  filters:
  - name: Date
    title: Date
    type: field_filter
    default_value: 90 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: qai_la_analytic
    explore: ccai_to_bq_cleaned_copy
    listens_to_filters: []
    field: ccai_to_bq_cleaned_copy.start_time_date
