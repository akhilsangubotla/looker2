view: profile {
  sql_table_name: ovaledgedb.profile ;;
  drill_fields: [profileid]

  dimension: profileid {
    primary_key: yes
    type: number
    sql: ${TABLE}.PROFILEID ;;
  }

  dimension: business_phone {
    type: string
    sql: ${TABLE}.BUSINESS_PHONE ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.EMAIL ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: personal_phone {
    type: string
    sql: ${TABLE}.PERSONAL_PHONE ;;
  }

  dimension: picture {
    type: string
    sql: ${TABLE}.PICTURE ;;
  }

  dimension: schedule {
    type: string
    sql: ${TABLE}.SCHEDULE ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.TITLE ;;
  }

  dimension: user_userid {
    type: string
    sql: ${TABLE}.USER_USERID ;;
  }

  measure: count {
    type: count
    drill_fields: [profileid, name]
  }
}
