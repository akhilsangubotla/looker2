view: comment {
  sql_table_name: ovaledgedb.comment ;;
  drill_fields: [parentcommentid]

  dimension: parentcommentid {
    primary_key: yes
    type: number
    sql: ${TABLE}.parentcommentid ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}.comment ;;
  }

  dimension: commentid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.commentid ;;
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

  dimension: numberofreply {
    type: number
    sql: ${TABLE}.numberofreply ;;
  }

  dimension: userid {
    type: string
    # hidden: yes
    sql: ${TABLE}.userid ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      parentcommentid,
      comment.parentcommentid,
      user.userid,
      user.fname,
      user.lname,
      comment.count,
      commentassociation.count,
      message.count,
      tablemessage.count
    ]
  }
}
