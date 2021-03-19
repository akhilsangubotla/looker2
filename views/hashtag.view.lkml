view: hashtag {
  sql_table_name: ovaledgedb.hashtag ;;
  drill_fields: [hashtagid]

  dimension: hashtagid {
    primary_key: yes
    type: number
    sql: ${TABLE}.hashtagid ;;
  }

  dimension: hashtag {
    type: string
    sql: ${TABLE}.hashtag ;;
  }

  dimension_group: lastmoddate {
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
    sql: ${TABLE}.lastmoddate ;;
  }

  dimension: userid {
    type: string
    # hidden: yes
    sql: ${TABLE}.userid ;;
  }

  measure: count {
    type: count
    drill_fields: [hashtagid, user.userid, user.fname, user.lname]
  }
}
