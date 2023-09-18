# The name of this view in Looker is "Ccai to Bq Cleaned Copy"
view: ccai_to_bq_cleaned_copy {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `qai-insurance-health-prod.ccai_dataset_bigquery.CCAI_TO_BQ_cleaned_copy` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Agent Sentiment Magnitude" in Explore.

  dimension: agent_sentiment_magnitude {
    type: number
    sql: ${TABLE}.agentSentimentMagnitude ;;
  }

  dimension: agent_sentiment_score {
    type: number
    sql: ${TABLE}.agentSentimentScore ;;
  }

  dimension: agent_speaking_percentage {
    type: number
    sql: ${TABLE}.agentSpeakingPercentage ;;
  }

  dimension: bigrams {
    type: string
    sql: ${TABLE}.bigrams ;;
  }

  dimension: call_duration {
    type: number
    sql: ${TABLE}.call_duration ;;
  }

  dimension: call_id {
    type: string
    sql: ${TABLE}.call_id ;;
  }

  dimension: call_silence_duration {
    type: number
    sql: ${TABLE}.call_silence_duration ;;
  }

  dimension: user_sentiment_magnitude {
    type: number
    sql: ${TABLE}.clientSentimentMagnitude ;;
  }

  dimension: user_sentiment_score {
    type: number
    sql: ${TABLE}.clientSentimentScore ;;
  }

  dimension: user_speaking_percentage {
    type: number
    sql: ${TABLE}.clientSpeakingPercentage ;;
  }

  dimension: entity_name {
    type: string
    sql: ${TABLE}.entity_name ;;
  }

  dimension: entity_salience {
    type: number
    sql: ${TABLE}.entity_salience ;;
  }

  dimension: entity_speaker_tag {
    type: number
    sql: ${TABLE}.entity_speaker_tag ;;
  }

  dimension: entity_type {
    type: string
    sql: ${TABLE}.entity_type ;;
  }

  dimension: highlighter_name {
    type: string
    sql: ${TABLE}.highlighter_name ;;
  }

  dimension: highlighter_type {
    type: string
    sql: ${TABLE}.highlighter_type ;;
  }

  dimension: is_callback {
    type: yesno
    sql: ${TABLE}.is_callback ;;
  }

  dimension: issues_name {
    type: string
    sql: ${TABLE}.issues_name ;;
  }

  dimension: keywords {
    type: string
    sql: ${TABLE}.keywords ;;
  }

  dimension: language_code {
    type: string
    sql: ${TABLE}.languageCode ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: sentence_end_sec {
    type: number
    sql: ${TABLE}.sentence_end_sec ;;
  }

  dimension: sentence_start_sec {
    type: number
    sql: ${TABLE}.sentence_start_sec ;;
  }

  dimension: sessionid {
    type: string
    sql: ${TABLE}.sessionid ;;
  }

  dimension: silence_percentage {
    type: number
    sql: ${TABLE}.silencePercentage ;;
  }

  dimension: speaker {
    type: string
    sql: ${TABLE}.speaker ;;
  }

  dimension: speaker_duration_sec {
    type: number
    sql: ${TABLE}.speaker_duration_sec ;;
  }

  dimension: Business_hour_bucket{
    type: tier
    style: integer
    tiers: [0,2,4,6,8,10,12,14,16,18,20,22,24]
    sql: ${start_time_hour_of_day} ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: start_time {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      hour_of_day,
      quarter,
      year
    ]
    sql: ${TABLE}.start_time ;;
  }

  dimension: Hour_bucket {
    type: string
    case: {
      when: {
        sql: ${start_time_hour_of_day}=0;;
        label: "12AM - 01AM"
      }
      when: {
        sql: ${start_time_hour_of_day}=1;;
        label: "01AM - 02AM"
      }
      when: {
        sql: ${start_time_hour_of_day}=2;;
        label: "02AM - 03AM"
      }
      when: {
        sql: ${start_time_hour_of_day}=3;;
        label: "03AM - 04AM"
      }
      when: {
        sql: ${start_time_hour_of_day}=4;;
        label: "04AM - 05AM"
      }
      when: {
        sql: ${start_time_hour_of_day}=5;;
        label: "05AM - 06AM"
      }
      when: {
        sql: ${start_time_hour_of_day}=6;;
        label: "06AM - 07AM"
      }
      when: {
        sql: ${start_time_hour_of_day}=7;;
        label: "07AM - 08AM"
      }
      when: {
        sql: ${start_time_hour_of_day}=8;;
        label: "08AM - 09AM"
      }
      when: {
        sql: ${start_time_hour_of_day}=9;;
        label: "09AM - 10AM"
      }
      when: {
        sql: ${start_time_hour_of_day}=10;;
        label: "10AM - 11AM"
      }
      when: {
        sql: ${start_time_hour_of_day}=11;;
        label: "11AM - 12PM"
      }
      when: {
        sql: ${start_time_hour_of_day}=12;;
        label: "12PM - 01PM"
      }
      when: {
        sql: ${start_time_hour_of_day}=13;;
        label: "01PM - 02PM"
      }
      when: {
        sql: ${start_time_hour_of_day}=14;;
        label: "02PM - 03PM"
      }
      when: {
        sql: ${start_time_hour_of_day}=15;;
        label: "03PM - 04PM"
      }
      when: {
        sql: ${start_time_hour_of_day}=16;;
        label: "04PM - 05PM"
      }
      when: {
        sql: ${start_time_hour_of_day}=17;;
        label: "05PM - 06PM"
      }
      when: {
        sql: ${start_time_hour_of_day}=18;;
        label: "06PM - 07PM"
      }
      when: {
        sql: ${start_time_hour_of_day}=19;;
        label: "07PM - 08PM"
      }
      when: {
        sql: ${start_time_hour_of_day}=20;;
        label: "08PM - 09PM"
      }
      when: {
        sql: ${start_time_hour_of_day}=21;;
        label: "09PM - 10PM"
      }
      when: {
        sql: ${start_time_hour_of_day}=22;;
        label: "10PM - 11PM"
      }
      when: {
        sql: ${start_time_hour_of_day}=23;;
        label: "11PM - 12AM"
      }
    }
  }

  dimension: Hour_of_date {
    type: date_time
    sql: extract(hour from ${TABLE}.start_time);;
    html: {{ rendered_value | date: "%I %P" }};;
  }

  dimension: talktime {
    type: number
    sql: ${TABLE}.talktime ;;
  }

  dimension: topic_name {
    type: string
    sql: ${TABLE}.topic_name ;;
  }

  dimension: transcript {
    type: string
    sql: ${TABLE}.transcript ;;
  }

  dimension: transcript_duration {
    type: number
    sql: ${TABLE}.transcript_duration ;;
  }

  dimension: transcript_sentiment_magnitude {
    type: number
    sql: ${TABLE}.transcriptSentimentMagnitude ;;
  }

  dimension: transcript_sentiment_score {
    type: number
    sql: ${TABLE}.transcriptSentimentScore ;;
  }

  dimension: transcript_silence_sec {
    type: number
    sql: ${TABLE}.transcript_silence_sec ;;
  }

  dimension: trigrams {
    type: string
    sql: ${TABLE}.trigrams ;;
  }

  dimension: sil_time_bucket {
    type: tier
    style: integer
    tiers: [0,31,61,91,121]
    sql: ${TABLE}.call_silence_duration ;;
  }

  dimension: time_formatted {
    group_label: "start_time_time" label: "hour_of_day"
    sql: ${start_time_time} ;;
    html: {{ rendered_value | time: "%R" }};;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_call_duration {
    type: sum
    sql: ${call_duration} ;;
  }
  measure: total_call_duration1 {
    type: number
    sql: ${total_call_duration} ;;
  }

  measure: average_call_duration {
    type: average
    sql: ${call_duration} ;;
  }
  measure: count {
    type: count
    drill_fields: [issues_name, entity_name, highlighter_name, topic_name]
  }

  measure: total_session {
    type: count_distinct
    sql: ${TABLE}.call_id ;;
  }

  # measure: silence_percentage{
  #   type: percent_of_total
  #   sql: ${total_session} ;;
  # }


  measure: date_count {
    type: count_distinct
    sql: ${start_time_date} ;;
  }

  measure:session_per_day {
    type: number
    sql: ${total_session}/${date_count};;
  }


  measure: avg_silence_duration {
    type: average
    sql: ${TABLE}.call_silence_duration/60 ;;
    value_format: "0.00"
  }


  measure: avg_Total_Call_Duration {
    type: average
    sql: ${TABLE}.call_duration/60 ;;
    value_format: "0.00"
  }

  measure: max_Silence_Duration {
    type: max
    sql: ${TABLE}.call_silence_duration/60 ;;
  }


  measure: avg_talk_time {
    type: average
    sql: ${TABLE}.talktime  ;;
    value_format: "0.00"
  }


  measure: avg_agent_talk_time {
    type: average
    sql: ${TABLE}.speaker_duration_sec ;;
    filters: [speaker: "Agent"]
  }

  measure: avg_agent_talk_time1 {
    type: number
    sql: round(${avg_agent_talk_time},2) ;;
  }


  measure: avg_user_talk_time {
    type: average
    sql: ${TABLE}.speaker_duration_sec;;
    filters: [speaker: "User"]
  }

  measure: avg_user_talk_time1 {
    type: number
    sql: round(${avg_user_talk_time},2) ;;
  }


  measure: avg_agent_silence {
    type: average
    sql: ${TABLE}.transcript_silence_sec ;;
    filters: [speaker: "Agent"]
  }

  measure: avg_agent_silence1 {
    type: number
    sql: round(${avg_agent_silence},2) ;;
  }


  measure: avg_user_silence {
    type: average
    sql: ${TABLE}.transcript_silence_sec  ;;
    filters: [speaker: "User"]
  }

  measure: avg_user_silence1 {
    type: number
    sql: round(${avg_user_silence},2) ;;
  }


  measure: silence_duration_sum{
    type: sum
    sql: ${TABLE}.call_silence_duration ;;
  }


  measure: avg_callback {
    type: average
    sql: cast(${TABLE}.is_callback as int64) * 100 ;;
  }


  measure: Average_session_per_day {
    type: number
    # sql: (select
    #   avg(aaa)
    #   from(
    #   SELECT
    #   date(starttime)strta,
    #   count(distinct calluuid)aaa
    #   FROM `qp-qai-training-1-2021-05.tiaa_poc_looker_analytics_dataset.tiaa_stt_topic_sentiment_results_CALL_ID_LEVEL_VIEW`
    #   group by 1)) ;;
    sql: ifnull(count(distinct ${call_id}) / nullif(count(distinct ${date_count}),0),0) ;;
  }


  measure: call_beyond_avg {
    type: number
    sql: (select
      round(sum(calid_cnt)/sum(callid)*100,2) from(
      select calluuid,count(distinct calluuid)calid_cnt
      FROM `qp-qai-training-1-2021-05.tiaa_poc_looker_analytics_dataset.tiaa_stt_topic_sentiment_results_CALL_ID_LEVEL_VIEW`
      group by 1
      having sum(Total_Call_Duration) > (select sum(Total_Call_Duration)/count(distinct calluuid)
      from `qp-qai-training-1-2021-05.tiaa_poc_looker_analytics_dataset.tiaa_stt_topic_sentiment_results_VIEW`)) a
      right join
      (select calluuid,count(distinct calluuid) callid from `qp-qai-training-1-2021-05.tiaa_poc_looker_analytics_dataset.tiaa_stt_topic_sentiment_results_CALL_ID_LEVEL_VIEW` group by 1) b on a.calluuid = b.calluuid) ;;
  }

  measure: call_beyond_avg_new {
    type: number
    sql: ${call_beyond_avg} ;;
  }

  measure: call_beyond1 {
    type: number
    sql: ${total_call_duration}>${avg_Total_Call_Duration} ;;
  }


  dimension: silence_duration_bucket {
    case: {
      when: {
        sql: ${TABLE}.call_silence_duration <30 ;;
        label: "<30 sec"
      }
      when: {
        sql: ${TABLE}.call_silence_duration >=60 and ${TABLE}.call_silence_duration <90  ;;
        label: "30-60 sec"
      }
      when: {
        sql: ${TABLE}.call_silence_duration >=60 and ${TABLE}.call_silence_duration <90  ;;
        label: "60-90 sec"
      }
      when: {
        sql: ${TABLE}.call_silence_duration >=90 and ${TABLE}.call_silence_duration <120  ;;
        label: "90-120 sec"
      }
      when: {
        sql: ${TABLE}.call_silence_duration >120 ;;
        label: ">120 sec"
      }
    }
  }

  measure: User_avg_sentiment {
    type: average
    sql: ${TABLE}.clientSentimentScore ;;
  }

  measure: User_avg_sentiment1 {
    type: number
    sql: ${User_avg_sentiment} ;;
  }

  measure: Agent_avg_sentiment {
    type: average
    sql: ${TABLE}.agentSentimentScore  ;;
  }

  measure: Agent_avg_sentiment1 {
    type: number
    sql: ${Agent_avg_sentiment} ;;
  }

  measure: count_distinct_callid {
    type: count_distinct
    sql: ${TABLE}.call_id  ;;
  }



  dimension: total_call_duration_bucket {
    type: tier
    style: integer
    tiers: [0,3000,6000,9000,12000,15000]
    sql: ${total_call_duration} ;;
  }

  # measure: speaker_Agent_avg_sentiment_callID_level_measure {
  #   type: average
  #   sql: ${TABLE}.speaker_Agent_avg_sentiment_callID_level ;;
  #   value_format: "0.00"
  # }

  # measure: speaker_User_avg_sentiment_callID_level_measure {
  #   type: average
  #   sql: ${TABLE}.speaker_User_avg_sentiment_callID_level ;;
  #   value_format: "0.00"
  # }

  dimension: total_call_duration_minu {
    type: number
    sql: ${total_call_duration}/60 ;;
  }

  dimension: total_call_duration_bucket_minu {
    type: tier
    style: integer
    tiers: [0,50,100,150,200,250]
    sql: ${TABLE}.call_duration/60 ;;
  }

  # dimension_group: user_tenure_days_years{

  #   type: duration

  #   intervals: [day,year]

  #   sql_start:${TABLE}.min_cc_issue_dt;;

  #   sql_end:${TABLE}.starttime ;;

  # }


  # dimension: user_tenure_days_years_bucket {
  #   type: tier
  #   style: integer
  #   tiers: [0,5,10,15,20,25]
  #   sql: ${years_user_tenure_days_years} ;;
  # }

  dimension: speaker_User_avg_sentiment_bucket {
    case: {
      when: {
        sql: ${user_sentiment_score}>=-1 AND ${user_sentiment_score}<-0.1;;
        label: "Negative"
      }
      when: {
        sql: ${user_sentiment_score}>=-0.1 AND ${user_sentiment_score} <=0.1;;
        label: "Neutral"
      }
      when: {
        sql: ${user_sentiment_score}>0.1 AND ${user_sentiment_score} <=1;;
        label: "Positive"
      }
      else:"Unknown"
    }
  }

  dimension: speaker_Agent_avg_sentiment_bucket {
    case: {
      when: {
        sql: ${agent_sentiment_score} >=-1 AND ${agent_sentiment_score} <-0.1;;
        label: "Negative"
      }
      when: {
        sql: ${agent_sentiment_score} >=-0.1 AND ${agent_sentiment_score} <=0.1;;
        label: "Neutral"
      }
      when: {
        sql: ${agent_sentiment_score} >0.1 AND ${agent_sentiment_score} <=1;;
        label: "Positive"
      }
      else:"Unknown"
    }
  }

  measure: silence_duration_measure_min {
    type: sum
    sql: ${TABLE}.silence_duration/60 ;;
  }

  measure: avg_silence_duration_measure_min {
    type: average
    sql: ${TABLE}.silence_duration/60 ;;
  }

  measure: total_call_duration_measure_min {
    type: sum
    sql: ${total_call_duration}/60 ;;
  }

  measure: avg_total_call_duration_measure_min {
    type: average
    sql: ${total_call_duration}/60 ;;
  }


  measure:total_call_duration_sum{
    type: sum
    sql: ${call_duration} ;;
  }

  measure: total_call_duration_sum1 {
    type: number
    sql: ${total_call_duration_sum} ;;
  }

  measure:silence_duration_per{
    type: number
    sql: ${silence_duration_sum}/${total_call_duration_sum1};;
  }

  measure: silence_duration_percentage {
    type:number
    sql: ${silence_duration_per}*100 ;;
    value_format: "0.00"

  }

  measure: Calls_beyond_Avg_Call_Length{
    hidden: yes
    type:count_distinct
    sql: ${call_id} ;;
    filters: [is_beyond_duration: "yes"]

  }

  measure:per_calls_beyond_avg_call_Length {
    type: number
    sql: ${Calls_beyond_Avg_Call_Length}/nullif(${total_session},0) ;;
    value_format_name: percent_2
  }

  dimension: avg_duration2 {
    hidden: yes
    type: number
    sql: ${transcript_duration}/86400 ;;
  }

  dimension: is_beyond_duration {
    hidden: yes
    type: yesno
    sql: ${transcript_duration} > ${avg_duration2};;
  }

  # measure: sum_speaker_User_agent_user_message_duration {
  #   type: sum
  #   sql: ${TABLE}.talktime /60 ;;
  # }

  # measure: avg_speaker_User_agent_user_message_duration {
  #   type: average
  #   sql: ${TABLE}.talktime  ;;
  # }

  # measure: avg_speaker_User_silence_duration {
  #   type: average
  #   sql: ${TABLE}.transcript_silence_sec  ;;
  #   filters: [speaker: "User"]
  # }

  # measure: sum_speaker_User_silence_duration {
  #   type: sum
  #   sql: ${TABLE}.transcript_silence_sec  ;;
  #   filters: [speaker: "User"]
  # }

  measure:sum_topics{
    type: sum
    sql: ${TABLE}.topics;;
  }

  measure:count_topic_name{
    type: count_distinct
    sql: ${TABLE}.topic_name ;;
  }

  measure: sum_callbacks {
    type: sum
    sql: cast(${TABLE}.is_callback as int64) ;;
  }

  # measure:count_ivr_call_type{
  #   type: count_distinct
  #   sql: ${TABLE}.ivr_call_type;;
  # }


  measure:call_id_countdist_measure{
    type: count_distinct
    sql: ${TABLE}.call_id;;
  }
}

  # measure:topic_analysis{
  #   type: count_distinct
  #   sql:(SELECT safe_cast(m.client_id as string) as client_id,n.topic_name,n.frequency
  #     FROM
  #     (select count(calluuid) cnt_calluuid,client_id from `qp-qai-training-1-2021-05.tiaa_poc_looker_analytics_dataset.tiaa_stt_topic_sentiment_results_CALL_ID_LEVEL_VIEW` group by 2 order by cnt_calluuid DESC limit 10 )m
  #     LEFT JOIN
  #     (WITH cte as
  #     (select client_id, topic_name, frequency, row_number() over (partition by client_id order by frequency desc) as row_num
  #               from
  #                   (select client_id, topic_name, count(distinct calluuid) as frequency
  #                   from
  #                   (select client_id,topic_name,  calluuid, date(starttime) starttime, from
  #                   `qp-qai-training-1-2021-05.tiaa_poc_looker_analytics_dataset.tiaa_stt_topic_sentiment_results_CALL_ID_LEVEL_VIEW`
  #                     where topic_name != '?'
  #                     group by 1,2,3,4)
  #                     group by 1,2 order by frequency desc) ) select * from cte where row_num<6 order by frequency desc) n
  #     ON m.client_id = n.client_id order by frequency Desc) ;;

#   }
# }
