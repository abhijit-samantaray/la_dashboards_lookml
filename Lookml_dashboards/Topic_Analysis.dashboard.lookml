- dashboard: topic_analytics
  title: Topic Analytics
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: thwIWAUIJoMoDNMg47E0v9
  elements:
  - title: Top 10 Call Topics
    name: Top 10 Call Topics
    model: qai_la_analytic
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
    row: 4
    col: 0
    width: 12
    height: 7
  - title: " Call Topic Distribution"
    name: " Call Topic Distribution"
    model: qai_la_analytic
    explore: ccai_to_bq_cleaned_copy
    type: looker_grid
    fields: [ccai_to_bq_cleaned_copy.topic_name, ccai_to_bq_cleaned_copy.count_distinct_callid,
      ccai_to_bq_cleaned_copy.avg_silence_duration, ccai_to_bq_cleaned_copy.avg_Total_Call_Duration,
      ccai_to_bq_cleaned_copy.Agent_avg_sentiment, ccai_to_bq_cleaned_copy.User_avg_sentiment]
    sorts: [ccai_to_bq_cleaned_copy.avg_silence_duration desc 0]
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
    color_application:
      collection_id: standalone-project
      palette_id: standalone-project-categorical-0
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      ccai_to_bq_cleaned_copy.count_distinct_callid: Total Number of Calls
    series_cell_visualizations:
      ccai_to_bq_cleaned_copy.count_distinct_callid:
        is_active: true
      ccai_to_bq_cleaned_copy.avg_silence_duration:
        is_active: true
        palette:
          palette_id: new-sequence-2-diverging-0
          collection_id: new-sequence-2
      ccai_to_bq_cleaned_copy.avg_Total_Call_Duration:
        is_active: true
    series_value_format:
      ccai_to_bq_cleaned_copy.Agent_avg_sentiment:
        name: decimal_2
        decimals: '2'
        format_string: "#,##0.00"
        label: Decimals (2)
        label_prefix: Decimals
      ccai_to_bq_cleaned_copy.User_avg_sentiment:
        name: decimal_2
        decimals: '2'
        format_string: "#,##0.00"
        label: Decimals (2)
        label_prefix: Decimals
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
    row: 11
    col: 0
    width: 24
    height: 8
  - title: Trending Topic Volume
    name: Trending Topic Volume
    model: qai_la_analytic
    explore: ccai_to_bq_cleaned_copy
    type: looker_scatter
    fields: [ccai_to_bq_cleaned_copy.start_time_date, ccai_to_bq_cleaned_copy.count,
      ccai_to_bq_cleaned_copy.topic_name]
    pivots: [ccai_to_bq_cleaned_copy.topic_name]
    fill_fields: [ccai_to_bq_cleaned_copy.start_time_date]
    filters: {}
    sorts: [ccai_to_bq_cleaned_copy.topic_name, ccai_to_bq_cleaned_copy.start_time_date
        desc]
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    color_application:
      collection_id: standalone-project
      palette_id: standalone-project-categorical-0
      options:
        steps: 5
    y_axes: [{label: Number Of Calls, orientation: left, series: [{axisId: ccai_to_bq_cleaned_copy.count,
            id: 457b private plan - ccai_to_bq_cleaned_copy.count, name: 457b private
              plan}, {axisId: ccai_to_bq_cleaned_copy.count, id: Accelerate RMD -
              ccai_to_bq_cleaned_copy.count, name: Accelerate RMD}, {axisId: ccai_to_bq_cleaned_copy.count,
            id: additional security grab - ccai_to_bq_cleaned_copy.count, name: additional
              security grab}, {axisId: ccai_to_bq_cleaned_copy.count, id: agree term
              condition - ccai_to_bq_cleaned_copy.count, name: agree term condition},
          {axisId: ccai_to_bq_cleaned_copy.count, id: agree term submit - ccai_to_bq_cleaned_copy.count,
            name: agree term submit}, {axisId: ccai_to_bq_cleaned_copy.count, id: Annuity
              Income Valuation - ccai_to_bq_cleaned_copy.count, name: Annuity Income
              Valuation}, {axisId: ccai_to_bq_cleaned_copy.count, id: Appointment
              Scheduling - ccai_to_bq_cleaned_copy.count, name: Appointment Scheduling},
          {axisId: ccai_to_bq_cleaned_copy.count, id: Asset Allocation - ccai_to_bq_cleaned_copy.count,
            name: Asset Allocation}, {axisId: ccai_to_bq_cleaned_copy.count, id: ATA
              -Transfer to Insurance - ccai_to_bq_cleaned_copy.count, name: ATA -Transfer
              to Insurance}, {axisId: ccai_to_bq_cleaned_copy.count, id: Audio Issues
              - ccai_to_bq_cleaned_copy.count, name: Audio Issues}, {axisId: ccai_to_bq_cleaned_copy.count,
            id: beneficial relationship team - ccai_to_bq_cleaned_copy.count, name: beneficial
              relationship team}, {axisId: ccai_to_bq_cleaned_copy.count, id: Beneficiary
              - ccai_to_bq_cleaned_copy.count, name: Beneficiary}, {axisId: ccai_to_bq_cleaned_copy.count,
            id: Brokerage - ccai_to_bq_cleaned_copy.count, name: Brokerage}, {axisId: ccai_to_bq_cleaned_copy.count,
            id: Brokerage Investment Options - ccai_to_bq_cleaned_copy.count, name: Brokerage
              Investment Options}, {axisId: ccai_to_bq_cleaned_copy.count, id: Brokerage
              Trade - ccai_to_bq_cleaned_copy.count, name: Brokerage Trade}, {axisId: ccai_to_bq_cleaned_copy.count,
            id: CARES Act - ccai_to_bq_cleaned_copy.count, name: CARES Act}, {axisId: ccai_to_bq_cleaned_copy.count,
            id: Cares Act - ccai_to_bq_cleaned_copy.count, name: Cares Act}, {axisId: ccai_to_bq_cleaned_copy.count,
            id: cash withdrawal - ccai_to_bq_cleaned_copy.count, name: cash withdrawal},
          {axisId: ccai_to_bq_cleaned_copy.count, id: cash withdrawal loan - ccai_to_bq_cleaned_copy.count,
            name: cash withdrawal loan}, {axisId: ccai_to_bq_cleaned_copy.count, id: change
              tax withholding - ccai_to_bq_cleaned_copy.count, name: change tax withholding},
          {axisId: ccai_to_bq_cleaned_copy.count, id: CIU Question - ccai_to_bq_cleaned_copy.count,
            name: CIU Question}, {axisId: ccai_to_bq_cleaned_copy.count, id: Cobrowse
              - ccai_to_bq_cleaned_copy.count, name: Cobrowse}, {axisId: ccai_to_bq_cleaned_copy.count,
            id: continue member team - ccai_to_bq_cleaned_copy.count, name: continue
              member team}, {axisId: ccai_to_bq_cleaned_copy.count, id: Contributions
              - ccai_to_bq_cleaned_copy.count, name: Contributions}, {axisId: ccai_to_bq_cleaned_copy.count,
            id: CREF - ccai_to_bq_cleaned_copy.count, name: CREF}, {axisId: ccai_to_bq_cleaned_copy.count,
            id: Cross Contract Transfer - ccai_to_bq_cleaned_copy.count, name: Cross
              Contract Transfer}, {axisId: ccai_to_bq_cleaned_copy.count, id: current
              email address - ccai_to_bq_cleaned_copy.count, name: current email address},
          {axisId: ccai_to_bq_cleaned_copy.count, id: customized investment portfolio
              - ccai_to_bq_cleaned_copy.count, name: customized investment portfolio},
          {axisId: ccai_to_bq_cleaned_copy.count, id: daily summary statement - ccai_to_bq_cleaned_copy.count,
            name: daily summary statement}, {axisId: ccai_to_bq_cleaned_copy.count,
            id: data rate apply - ccai_to_bq_cleaned_copy.count, name: data rate apply},
          {axisId: ccai_to_bq_cleaned_copy.count, id: Defaulted Loan - ccai_to_bq_cleaned_copy.count,
            name: Defaulted Loan}, {axisId: ccai_to_bq_cleaned_copy.count, id: detail
              information security - ccai_to_bq_cleaned_copy.count, name: detail information
              security}, {axisId: ccai_to_bq_cleaned_copy.count, id: direct deposit
              - ccai_to_bq_cleaned_copy.count, name: direct deposit}, {axisId: ccai_to_bq_cleaned_copy.count,
            id: direct deposit bank - ccai_to_bq_cleaned_copy.count, name: direct
              deposit bank}, {axisId: ccai_to_bq_cleaned_copy.count, id: direct deposit
              business - ccai_to_bq_cleaned_copy.count, name: direct deposit business},
          {axisId: ccai_to_bq_cleaned_copy.count, id: Dividends Brokerage - ccai_to_bq_cleaned_copy.count,
            name: Dividends Brokerage}, {axisId: ccai_to_bq_cleaned_copy.count, id: Docusign
              - ccai_to_bq_cleaned_copy.count, name: Docusign}, {axisId: ccai_to_bq_cleaned_copy.count,
            id: Docusign & Browser Related - ccai_to_bq_cleaned_copy.count, name: Docusign
              & Browser Related}, {axisId: ccai_to_bq_cleaned_copy.count, id: Duplicate
              Statement - ccai_to_bq_cleaned_copy.count, name: Duplicate Statement},
          {axisId: ccai_to_bq_cleaned_copy.count, id: Duplicate Tax Statement - ccai_to_bq_cleaned_copy.count,
            name: Duplicate Tax Statement}, {axisId: ccai_to_bq_cleaned_copy.count,
            id: durable power attorney - ccai_to_bq_cleaned_copy.count, name: durable
              power attorney}, {axisId: ccai_to_bq_cleaned_copy.count, id: Early Withdrawal
              Penalty - ccai_to_bq_cleaned_copy.count, name: Early Withdrawal Penalty},
          {axisId: ccai_to_bq_cleaned_copy.count, id: Edelivery Options - ccai_to_bq_cleaned_copy.count,
            name: Edelivery Options}, {axisId: ccai_to_bq_cleaned_copy.count, id: email
              address update - ccai_to_bq_cleaned_copy.count, name: email address
              update}, {axisId: ccai_to_bq_cleaned_copy.count, id: Enrollment - ccai_to_bq_cleaned_copy.count,
            name: Enrollment}, {axisId: ccai_to_bq_cleaned_copy.count, id: enter information
              automate - ccai_to_bq_cleaned_copy.count, name: enter information automate},
          {axisId: ccai_to_bq_cleaned_copy.count, id: ERISA Plan - ccai_to_bq_cleaned_copy.count,
            name: ERISA Plan}, {axisId: ccai_to_bq_cleaned_copy.count, id: Escalation
              - ccai_to_bq_cleaned_copy.count, name: Escalation}, {axisId: ccai_to_bq_cleaned_copy.count,
            id: Fees - ccai_to_bq_cleaned_copy.count, name: Fees}, {axisId: ccai_to_bq_cleaned_copy.count,
            id: find late perspective - ccai_to_bq_cleaned_copy.count, name: find
              late perspective}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Date
    x_axis_zoom: true
    y_axis_zoom: true
    cluster_points: false
    quadrants_enabled: false
    quadrant_properties:
      '0':
        color: ''
        label: Quadrant 1
      '1':
        color: ''
        label: Quadrant 2
      '2':
        color: ''
        label: Quadrant 3
      '3':
        color: ''
        label: Quadrant 4
    custom_quadrant_point_x: 5
    custom_quadrant_point_y: 5
    custom_x_column: ''
    custom_y_column: ''
    custom_value_label_column: ''
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
    col: 12
    width: 12
    height: 7
  - title: Agent Sentiment By Topic
    name: Agent Sentiment By Topic
    model: qai_la_analytic
    explore: ccai_to_bq_cleaned_copy
    type: looker_column
    fields: [ccai_to_bq_cleaned_copy.topic_name, ccai_to_bq_cleaned_copy.count_distinct_callid,
      ccai_to_bq_cleaned_copy.speaker_Agent_avg_sentiment_bucket]
    pivots: [ccai_to_bq_cleaned_copy.speaker_Agent_avg_sentiment_bucket]
    fill_fields: [ccai_to_bq_cleaned_copy.speaker_Agent_avg_sentiment_bucket]
    sorts: [ccai_to_bq_cleaned_copy.speaker_Agent_avg_sentiment_bucket, ccai_to_bq_cleaned_copy.topic_name]
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
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
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
    y_axes: [{label: Agent Sentiment Score, orientation: left, series: [{axisId: Negative
              - 0 - ccai_to_bq_cleaned_copy.count_distinct_callid, id: Negative -
              0 - ccai_to_bq_cleaned_copy.count_distinct_callid, name: Negative},
          {axisId: Neutral - 1 - ccai_to_bq_cleaned_copy.count_distinct_callid, id: Neutral
              - 1 - ccai_to_bq_cleaned_copy.count_distinct_callid, name: Neutral},
          {axisId: Positive - 2 - ccai_to_bq_cleaned_copy.count_distinct_callid, id: Positive
              - 2 - ccai_to_bq_cleaned_copy.count_distinct_callid, name: Positive}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Topics
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      Neutral - 1 - ccai_to_bq_cleaned_copy.count_distinct_callid: "#dfe3e8"
      Positive - 2 - ccai_to_bq_cleaned_copy.count_distinct_callid: "#20B283"
      Negative - 0 - ccai_to_bq_cleaned_copy.count_distinct_callid: "#2a61cd"
    show_null_points: true
    cluster_points: false
    quadrants_enabled: false
    quadrant_properties:
      '0':
        color: ''
        label: Quadrant 1
      '1':
        color: ''
        label: Quadrant 2
      '2':
        color: ''
        label: Quadrant 3
      '3':
        color: ''
        label: Quadrant 4
    custom_quadrant_point_x: 5
    custom_quadrant_point_y: 5
    custom_x_column: ''
    custom_y_column: ''
    custom_value_label_column: ''
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Date: ccai_to_bq_cleaned_copy.start_time_date
    row: 19
    col: 0
    width: 12
    height: 8
  - title: User Sentiment By Topic
    name: User Sentiment By Topic
    model: qai_la_analytic
    explore: ccai_to_bq_cleaned_copy
    type: looker_column
    fields: [ccai_to_bq_cleaned_copy.topic_name, ccai_to_bq_cleaned_copy.count_distinct_callid,
      ccai_to_bq_cleaned_copy.speaker_User_avg_sentiment_bucket]
    pivots: [ccai_to_bq_cleaned_copy.speaker_User_avg_sentiment_bucket]
    fill_fields: [ccai_to_bq_cleaned_copy.speaker_User_avg_sentiment_bucket]
    sorts: [ccai_to_bq_cleaned_copy.speaker_User_avg_sentiment_bucket, ccai_to_bq_cleaned_copy.topic_name]
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
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
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
    y_axes: [{label: User Sentiment Score, orientation: left, series: [{axisId: Negative
              - 0 - ccai_to_bq_cleaned_copy.count_distinct_callid, id: Negative -
              0 - ccai_to_bq_cleaned_copy.count_distinct_callid, name: Negative},
          {axisId: Neutral - 1 - ccai_to_bq_cleaned_copy.count_distinct_callid, id: Neutral
              - 1 - ccai_to_bq_cleaned_copy.count_distinct_callid, name: Neutral},
          {axisId: Positive - 2 - ccai_to_bq_cleaned_copy.count_distinct_callid, id: Positive
              - 2 - ccai_to_bq_cleaned_copy.count_distinct_callid, name: Positive}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Topics
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      Neutral - 1 - ccai_to_bq_cleaned_copy.count_distinct_callid: "#dfe3e8"
      Positive - 2 - ccai_to_bq_cleaned_copy.count_distinct_callid: "#20B283"
      Negative - 0 - ccai_to_bq_cleaned_copy.count_distinct_callid: "#2a61cd"
    show_null_points: true
    cluster_points: false
    quadrants_enabled: false
    quadrant_properties:
      '0':
        color: ''
        label: Quadrant 1
      '1':
        color: ''
        label: Quadrant 2
      '2':
        color: ''
        label: Quadrant 3
      '3':
        color: ''
        label: Quadrant 4
    custom_quadrant_point_x: 5
    custom_quadrant_point_y: 5
    custom_x_column: ''
    custom_y_column: ''
    custom_value_label_column: ''
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Date: ccai_to_bq_cleaned_copy.start_time_date
    row: 19
    col: 12
    width: 12
    height: 8
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
      >\n            <font color=\"#005495\" size=\"3\"> Live Agent Analytics </font></a>\n\
      \            </td><td style=\"width:20%;\">\n            <font color=\"#129fd9\"\
      \ size=\"3\">| Topic Analytics </font>\n            </td><td style=\"width:30%;\"\
      >\n            <a href=\"/embed/dashboards/1733\">\n            <font color=\"\
      #005495\" size=\"3\">| User Analytics </font></a>\n            </td></tr><tr><td>\n\
      \            <a href=\"/embed/dashboards/1735\">\n            <font color=\"\
      #005495\" size=\"3\"> Agent Analytics </font></a>\n            </td></tr></table>\n\
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
