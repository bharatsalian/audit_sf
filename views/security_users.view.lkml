view: security_users {
  sql_table_name: "DBO"."SECURITY_USERS"
    ;;
  drill_fields: [security_users_id]

  dimension: security_users_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."SECURITY_USERS_ID" ;;
  }

  dimension: account_active {
    type: string
    sql: ${TABLE}."ACCOUNT_ACTIVE" ;;
  }

  dimension: account_locked_flag {
    type: string
    sql: ${TABLE}."ACCOUNT_LOCKED_FLAG" ;;
  }

  dimension: auth_mode {
    type: string
    sql: ${TABLE}."AUTH_MODE" ;;
  }

  dimension: auth_mode_value {
    type: string
    sql: ${TABLE}."AUTH_MODE_VALUE" ;;
  }

  dimension: auth_pin {
    type: string
    sql: ${TABLE}."AUTH_PIN" ;;
  }

  dimension: calendar_url_guid {
    type: string
    sql: ${TABLE}."CALENDAR_URL_GUID" ;;
  }

  dimension: deleted_by {
    type: string
    sql: ${TABLE}."DELETED_BY" ;;
  }

  dimension_group: deleted {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."DELETED_DATE" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
  }

  dimension: e_mail {
    type: string
    sql: ${TABLE}."E_MAIL" ;;
  }

  dimension: exist_in_group_list {
    type: string
    sql: ${TABLE}."EXIST_IN_GROUP_LIST" ;;
  }

  dimension: ext_flag {
    type: string
    sql: ${TABLE}."EXT_FLAG" ;;
  }

  dimension: ext_payment_sys_flag {
    type: string
    sql: ${TABLE}."EXT_PAYMENT_SYS_FLAG" ;;
  }

  dimension: external_id {
    type: string
    sql: ${TABLE}."EXTERNAL_ID" ;;
  }

  dimension: hashed_answer_01 {
    type: string
    sql: ${TABLE}."HASHED_ANSWER_01" ;;
  }

  dimension: hashed_answer_02 {
    type: string
    sql: ${TABLE}."HASHED_ANSWER_02" ;;
  }

  dimension: hashed_answer_03 {
    type: string
    sql: ${TABLE}."HASHED_ANSWER_03" ;;
  }

  dimension: hashed_answer_04 {
    type: string
    sql: ${TABLE}."HASHED_ANSWER_04" ;;
  }

  dimension: hashed_answer_05 {
    type: string
    sql: ${TABLE}."HASHED_ANSWER_05" ;;
  }

  dimension: hashed_password {
    type: string
    sql: ${TABLE}."HASHED_PASSWORD" ;;
  }

  dimension: inserted_by {
    type: string
    sql: ${TABLE}."INSERTED_BY" ;;
  }

  dimension_group: inserted {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."INSERTED_DATE" ;;
  }

  dimension_group: last_logon {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."LAST_LOGON_DATE" ;;
  }

  dimension: password_salt {
    type: string
    sql: ${TABLE}."PASSWORD_SALT" ;;
  }

  dimension: person_id {
    type: number
    sql: ${TABLE}."PERSON_ID" ;;
  }

  dimension_group: pin_timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."PIN_TIMESTAMP" ;;
  }

  dimension: policy_application_id {
    type: number
    sql: ${TABLE}."POLICY_APPLICATION_ID" ;;
  }

  dimension: reset_password_flag {
    type: string
    sql: ${TABLE}."RESET_PASSWORD_FLAG" ;;
  }

  dimension: security_answer_1 {
    type: string
    sql: ${TABLE}."SECURITY_ANSWER_1" ;;
  }

  dimension: security_answer_2 {
    type: string
    sql: ${TABLE}."SECURITY_ANSWER_2" ;;
  }

  dimension: security_answer_3 {
    type: string
    sql: ${TABLE}."SECURITY_ANSWER_3" ;;
  }

  dimension: security_answer_4 {
    type: string
    sql: ${TABLE}."SECURITY_ANSWER_4" ;;
  }

  dimension: security_answer_5 {
    type: string
    sql: ${TABLE}."SECURITY_ANSWER_5" ;;
  }

  dimension: security_provider_id {
    type: number
    sql: ${TABLE}."SECURITY_PROVIDER_ID" ;;
  }

  dimension: security_question_1 {
    type: string
    sql: ${TABLE}."SECURITY_QUESTION_1" ;;
  }

  dimension: security_question_2 {
    type: string
    sql: ${TABLE}."SECURITY_QUESTION_2" ;;
  }

  dimension: security_question_3 {
    type: string
    sql: ${TABLE}."SECURITY_QUESTION_3" ;;
  }

  dimension: security_question_4 {
    type: string
    sql: ${TABLE}."SECURITY_QUESTION_4" ;;
  }

  dimension: security_question_5 {
    type: string
    sql: ${TABLE}."SECURITY_QUESTION_5" ;;
  }

  dimension: ssn_last_four {
    type: number
    sql: ${TABLE}."SSN_LAST_FOUR" ;;
  }

  dimension_group: temp_password_issued {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."TEMP_PASSWORD_ISSUED_DATE" ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}."TITLE" ;;
  }

  dimension: updated_by {
    type: string
    sql: ${TABLE}."UPDATED_BY" ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."UPDATED_DATE" ;;
  }

  dimension: user_lock_count {
    type: number
    sql: ${TABLE}."USER_LOCK_COUNT" ;;
  }

  dimension_group: user_lock {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."USER_LOCK_DATE" ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}."USER_NAME" ;;
  }

  dimension: user_password {
    type: string
    sql: ${TABLE}."USER_PASSWORD" ;;
  }

  dimension: user_ssn {
    type: number
    sql: ${TABLE}."USER_SSN" ;;
  }

  dimension_group: user_status {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."USER_STATUS_DATE" ;;
  }

  dimension: user_type {
    type: string
    sql: ${TABLE}."USER_TYPE" ;;
  }

  dimension: verification_code {
    type: string
    sql: ${TABLE}."VERIFICATION_CODE" ;;
  }

  dimension: viewed_offering_flag {
    type: string
    sql: ${TABLE}."VIEWED_OFFERING_FLAG" ;;
  }

  dimension: waived_coverage_flag {
    type: string
    sql: ${TABLE}."WAIVED_COVERAGE_FLAG" ;;
  }

  dimension: web_language_id {
    type: number
    sql: ${TABLE}."WEB_LANGUAGE_ID" ;;
  }

  measure: count {
    type: count
    drill_fields: [security_users_id, user_name]
  }
}
