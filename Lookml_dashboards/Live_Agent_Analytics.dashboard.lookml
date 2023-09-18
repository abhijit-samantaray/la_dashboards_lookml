- dashboard: live_agent_analytics
  title: Live Agent Analytics
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 9MwunYpWg6SCVEILGgKiM4
  elements:
  - title: qai_la_analytics
    name: qai_la_analytics
    model: qai_la_analytics
    explore: ccai_to_bq_cleaned_copy
    type: single_value
    fields: [ccai_to_bq_cleaned_copy.count_distinct_callid]
    limit: 500
    column_limit: 50
    query_timezone: UTC
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Total Sessions
    defaults_version: 1
    listen:
      Date: ccai_to_bq_cleaned_copy.start_time_date
    row: 4
    col: 0
    width: 6
    height: 3
  - title: Average Session Per Day
    name: Average Session Per Day
    model: qai_la_analytics
    explore: ccai_to_bq_cleaned_copy
    type: single_value
    fields: [ccai_to_bq_cleaned_copy.call_id, ccai_to_bq_cleaned_copy.start_time_date,
      ccai_to_bq_cleaned_copy.session_per_day]
    sorts: [ccai_to_bq_cleaned_copy.start_time_date desc]
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
    defaults_version: 1
    listen:
      Date: ccai_to_bq_cleaned_copy.start_time_date
    row: 4
    col: 6
    width: 6
    height: 3
  - title: Busiest Hour
    name: Busiest Hour
    model: qai_la_analytics
    explore: ccai_to_bq_cleaned_copy
    type: single_value
    fields: [ccai_to_bq_cleaned_copy.Hour_bucket, ccai_to_bq_cleaned_copy.start_time_hour_of_day,
      ccai_to_bq_cleaned_copy.total_session]
    sorts: [ccai_to_bq_cleaned_copy.total_session desc 0]
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
    defaults_version: 1
    hidden_fields: [ccai_to_bq_cleaned_copy.total_session, ccai_to_bq_cleaned_copy.start_time_hour_of_day]
    listen:
      Date: ccai_to_bq_cleaned_copy.start_time_date
    row: 4
    col: 12
    width: 6
    height: 3
  - title: New Tile
    name: New Tile
    model: qai_la_analytics
    explore: ccai_to_bq_cleaned_copy
    type: single_value
    fields: [ccai_to_bq_cleaned_copy.avg_callback]
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
    single_value_title: "% Callback"
    value_format: '0.00'
    show_view_names: false
    defaults_version: 1
    listen:
      Date: ccai_to_bq_cleaned_copy.start_time_date
    row: 4
    col: 18
    width: 6
    height: 3
  - title: New Tile
    name: New Tile (2)
    model: qai_la_analytics
    explore: ccai_to_bq_cleaned_copy
    type: single_value
    fields: [ccai_to_bq_cleaned_copy.avg_Total_Call_Duration]
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
    single_value_title: Average Total Call Duration
    defaults_version: 1
    listen:
      Date: ccai_to_bq_cleaned_copy.start_time_date
    row: 7
    col: 6
    width: 6
    height: 3
  - title: New Tile
    name: New Tile (3)
    model: qai_la_analytics
    explore: ccai_to_bq_cleaned_copy
    type: single_value
    fields: [ccai_to_bq_cleaned_copy.per_calls_beyond_avg_call_Length]
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
    single_value_title: "% Calls Beyond Average Call Length"
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Date: ccai_to_bq_cleaned_copy.start_time_date
    row: 7
    col: 12
    width: 6
    height: 3
  - title: New Tile
    name: New Tile (4)
    model: qai_la_analytics
    explore: ccai_to_bq_cleaned_copy
    type: single_value
    fields: [ccai_to_bq_cleaned_copy.avg_silence_duration]
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
    single_value_title: Average Silence Duration
    defaults_version: 1
    # listen:
    #   Date: ccai_to_bq_cleaned_copy.start_time_date
    row: 7
    col: 0
    width: 6
    height: 3
  - title: New Tile
    name: New Tile (5)
    model: qai_la_analytics
    explore: ccai_to_bq_cleaned_copy
    type: single_value
    fields: [ccai_to_bq_cleaned_copy.avg_talk_time]
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
    single_value_title: Average Talktime
    defaults_version: 1
    listen:
      Date: ccai_to_bq_cleaned_copy.start_time_date
    row: 7
    col: 18
    width: 6
    height: 3
  - title: Agent vs User Talk Time & Silence Time
    name: Agent vs User Talk Time & Silence Time
    model: qai_la_analytics
    explore: ccai_to_bq_cleaned_copy
    type: looker_column
    fields: [ccai_to_bq_cleaned_copy.avg_agent_silence1, ccai_to_bq_cleaned_copy.avg_agent_talk_time1,
      ccai_to_bq_cleaned_copy.avg_user_talk_time1, ccai_to_bq_cleaned_copy.avg_user_silence1]
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
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: row
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: time
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
    y_axes: [{label: Time Duration, orientation: left, series: [{axisId: ccai_to_bq_cleaned_copy.avg_agent_silence1,
            id: ccai_to_bq_cleaned_copy.avg_agent_silence1, name: Avg Agent Silence1},
          {axisId: ccai_to_bq_cleaned_copy.avg_agent_talk_time1, id: ccai_to_bq_cleaned_copy.avg_agent_talk_time1,
            name: Avg Agent Talk Time1}, {axisId: ccai_to_bq_cleaned_copy.avg_user_talk_time1,
            id: ccai_to_bq_cleaned_copy.avg_user_talk_time1, name: Avg User Talk Time1},
          {axisId: ccai_to_bq_cleaned_copy.avg_user_silence1, id: ccai_to_bq_cleaned_copy.avg_user_silence1,
            name: Avg User Silence1}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Speaker
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: true
    column_spacing_ratio: 0.5
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Date: ccai_to_bq_cleaned_copy.start_time_date
    row: 10
    col: 12
    width: 12
    height: 7
  - title: Silence Time Distribution
    name: Silence Time Distribution
    model: qai_la_analytics
    explore: ccai_to_bq_cleaned_copy
    type: looker_column
    fields: [ccai_to_bq_cleaned_copy.sil_time_bucket, ccai_to_bq_cleaned_copy.silence_duration_percentage]
    fill_fields: [ccai_to_bq_cleaned_copy.sil_time_bucket]
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: standalone-project
      palette_id: standalone-project-categorical-0
      options:
        steps: 5
    y_axes: [{label: Percentage of Calls, orientation: left, series: [{axisId: ccai_to_bq_cleaned_copy.silence_duration_percentage,
            id: ccai_to_bq_cleaned_copy.silence_duration_percentage, name: Silence
              Duration Percentage}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Time Brackets (Sec)
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: false
    defaults_version: 1
    listen:
      Date: ccai_to_bq_cleaned_copy.start_time_date
    row: 10
    col: 0
    width: 12
    height: 7
  - title: Trend of Silence Time With Respect to Business Hours
    name: Trend of Silence Time With Respect to Business Hours
    model: qai_la_analytics
    explore: ccai_to_bq_cleaned_copy
    type: looker_column
    fields: [ccai_to_bq_cleaned_copy.Business_hour_bucket, ccai_to_bq_cleaned_copy.avg_silence_duration]
    pivots: [ccai_to_bq_cleaned_copy.Business_hour_bucket]
    filters:
      ccai_to_bq_cleaned_copy.Business_hour_bucket: "-Below 0"
    sorts: [ccai_to_bq_cleaned_copy.Business_hour_bucket]
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
    show_x_axis_ticks: false
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
    color_application:
      collection_id: standalone-project
      palette_id: standalone-project-categorical-0
      options:
        steps: 5
        reverse: false
    y_axes: [{label: Silence Duration, orientation: left, series: [{axisId: ccai_to_bq_cleaned_copy.avg_silence_duration,
            id: Below 0 - 00 - ccai_to_bq_cleaned_copy.avg_silence_duration, name: Below
              0}, {axisId: ccai_to_bq_cleaned_copy.avg_silence_duration, id: 0 to
              1 - 01 - ccai_to_bq_cleaned_copy.avg_silence_duration, name: 0 to 1},
          {axisId: ccai_to_bq_cleaned_copy.avg_silence_duration, id: 2 to 3 - 02 -
              ccai_to_bq_cleaned_copy.avg_silence_duration, name: 2 to 3}, {axisId: ccai_to_bq_cleaned_copy.avg_silence_duration,
            id: 4 to 5 - 03 - ccai_to_bq_cleaned_copy.avg_silence_duration, name: 4
              to 5}, {axisId: ccai_to_bq_cleaned_copy.avg_silence_duration, id: 6
              to 7 - 04 - ccai_to_bq_cleaned_copy.avg_silence_duration, name: 6 to
              7}, {axisId: ccai_to_bq_cleaned_copy.avg_silence_duration, id: 8 to
              9 - 05 - ccai_to_bq_cleaned_copy.avg_silence_duration, name: 8 to 9},
          {axisId: ccai_to_bq_cleaned_copy.avg_silence_duration, id: 10 to 11 - 06
              - ccai_to_bq_cleaned_copy.avg_silence_duration, name: 10 to 11}, {axisId: ccai_to_bq_cleaned_copy.avg_silence_duration,
            id: 12 to 13 - 07 - ccai_to_bq_cleaned_copy.avg_silence_duration, name: 12
              to 13}, {axisId: ccai_to_bq_cleaned_copy.avg_silence_duration, id: 14
              to 15 - 08 - ccai_to_bq_cleaned_copy.avg_silence_duration, name: 14
              to 15}, {axisId: ccai_to_bq_cleaned_copy.avg_silence_duration, id: 16
              to 17 - 09 - ccai_to_bq_cleaned_copy.avg_silence_duration, name: 16
              to 17}, {axisId: ccai_to_bq_cleaned_copy.avg_silence_duration, id: 18
              to 19 - 10 - ccai_to_bq_cleaned_copy.avg_silence_duration, name: 18
              to 19}, {axisId: ccai_to_bq_cleaned_copy.avg_silence_duration, id: 20
              to 21 - 11 - ccai_to_bq_cleaned_copy.avg_silence_duration, name: 20
              to 21}, {axisId: ccai_to_bq_cleaned_copy.avg_silence_duration, id: 22
              to 23 - 12 - ccai_to_bq_cleaned_copy.avg_silence_duration, name: 22
              to 23}, {axisId: ccai_to_bq_cleaned_copy.avg_silence_duration, id: 24
              or Above - 13 - ccai_to_bq_cleaned_copy.avg_silence_duration, name: 24
              or Above}, {axisId: ccai_to_bq_cleaned_copy.avg_silence_duration, id: Undefined
              - 14 - ccai_to_bq_cleaned_copy.avg_silence_duration, name: Undefined}],
        showLabels: true, showValues: true, valueFormat: '0.00', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Hours of the Day
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: last
      num_rows: ''
    hide_legend: false
    series_colors: {}
    series_labels:
      8 to 9 - 05 - ccai_to_bq_cleaned_copy.avg_silence_duration: 8:00 AM to 10:00
        AM
      0 to 1 - 01 - ccai_to_bq_cleaned_copy.avg_silence_duration: 12:00 AM to 2:00
        AM
      2 to 3 - 02 - ccai_to_bq_cleaned_copy.avg_silence_duration: 2:00 AM to 4:00
        AM
      4 to 5 - 03 - ccai_to_bq_cleaned_copy.avg_silence_duration: 4:00 AM to 6:00
        AM
      6 to 7 - 04 - ccai_to_bq_cleaned_copy.avg_silence_duration: 6:00 AM to 8:00
        AM
      10 to 11 - 06 - ccai_to_bq_cleaned_copy.avg_silence_duration: 10:00 AM to 12:00
        PM
      12 to 13 - 07 - ccai_to_bq_cleaned_copy.avg_silence_duration: 12:00 PM to 2:00
        PM
      14 to 15 - 08 - ccai_to_bq_cleaned_copy.avg_silence_duration: 2:00 PM to 4:00
        PM
      16 to 17 - 09 - ccai_to_bq_cleaned_copy.avg_silence_duration: 4:00 PM to 6:00
        PM
      18 to 19 - 10 - ccai_to_bq_cleaned_copy.avg_silence_duration: 6:00 PM to 8:00
        PM
      20 to 21 - 11 - ccai_to_bq_cleaned_copy.avg_silence_duration: 8:00 PM to 10:00
        PM
      22 to 23 - 12 - ccai_to_bq_cleaned_copy.avg_silence_duration: 10:00 PM to 12:00
        AM
      24 or Above - 13 - ccai_to_bq_cleaned_copy.avg_silence_duration: 12:00 AM and
        above
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Date: ccai_to_bq_cleaned_copy.start_time_date
    row: 17
    col: 12
    width: 12
    height: 7
  - title: Keywords Around Silence Time
    name: Keywords Around Silence Time
    model: qai_la_analytics
    explore: ccai_to_bq_cleaned_copy
    type: looker_wordcloud
    fields: [ccai_to_bq_cleaned_copy.bigrams, ccai_to_bq_cleaned_copy.sil_time_bucket,
      ccai_to_bq_cleaned_copy.count]
    filters:
      ccai_to_bq_cleaned_copy.bigrams: "-NULL"
    sorts: [ccai_to_bq_cleaned_copy.count desc]
    limit: 500
    query_timezone: UTC
    color_application:
      collection_id: standalone-project
      palette_id: standalone-project-categorical-0
      options:
        steps: 5
    rotation: true
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
    hidden_fields: [ccai_to_bq_cleaned_copy.sil_time_bucket]
    listen:
      Date: ccai_to_bq_cleaned_copy.start_time_date
    row: 24
    col: 0
    width: 24
    height: 10
  - title: Call Distribution By Topic
    name: Call Distribution By Topic
    model: qai_la_analytics
    explore: ccai_to_bq_cleaned_copy
    type: looker_pie
    fields: [ccai_to_bq_cleaned_copy.topic_name, ccai_to_bq_cleaned_copy.count]
    sorts: [ccai_to_bq_cleaned_copy.count desc 0]
    limit: 10
    column_limit: 50
    value_labels: legend
    label_type: labPer
    inner_radius: 45
    start_angle:
    color_application:
      collection_id: standalone-project
      palette_id: standalone-project-categorical-0
      options:
        steps: 5
    series_colors: {}
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
    listen:
      Date: ccai_to_bq_cleaned_copy.start_time_date
    row: 17
    col: 0
    width: 12
    height: 7
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <table style="width:100%; border-radius: 6px; background-color:#FFFFFF; margin: 0px;"><tr>
                <td class="vis" style="width:80%; text-align:left; padding-left:10px;">
                  <h1 style="color:#005495; margin-bottom: 0px;" > Live Agent Analytics </h1><br>
                  <div style="letter-spacing:0.3px;line-height:1;">
                  <table style="letter-spacing:0.3px;line-height:1.5; margin: 0px;"><tr><td style="width:30%;">
                  <font color="#129fd9" size="3"> Live Agent Analytics </font>
                  </td><td style="width:20%;">
                  <a href="/embed/dashboards/1734">
                  <font color="#005495" size="3">| Topic Analytics</font></a>
                  </td><td style="width:30%;">
                  <a href="/embed/dashboards/1733">
                  <font color="#005495" size="3">| User Analytics</font></a>
                  </td></tr><tr><td>
                  <a href="/embed/dashboards/1735">
                  <font color="#005495" size="3"> Agent Analytics</font></a>
                  </td><td>

                  </td></tr></table>
                  <br/>
                  </div>
                </td>
                <td>
                  <div><img style="width:100%" src="https://logovectorseek.com/wp-content/uploads/2021/06/quantiphi-inc-logo-vector.png"></div>
                </td>
              </tr></table>
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
    model: qai_la_analytics
    explore: ccai_to_bq_cleaned_copy
    listens_to_filters: []
    field: ccai_to_bq_cleaned_copy.start_time_date
