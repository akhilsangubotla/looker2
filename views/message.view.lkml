view: message {
  sql_table_name: ovaledgedb.message ;;
  drill_fields: [messageid]

  dimension: messageid {
    primary_key: yes
    type: number
    sql: ${TABLE}.MESSAGEID ;;
  }

  dimension: commentid {
    type: string
    # hidden: yes
    sql: ${TABLE}.COMMENTID ;;
  }

  dimension: hashtagoruserid {
    type: string
    sql: ${TABLE}.HASHTAGORUSERID ;;
  }

  dimension: isread {
    type: yesno
    sql: ${TABLE}.ISREAD ;;
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
    sql: ${TABLE}.LASTMODDATE ;;
  }

  dimension: needanswer {
    type: yesno
    sql: ${TABLE}.NEEDANSWER ;;
  }

  measure: count {
    type: count
    drill_fields: [messageid, comment.parentcommentid, tablemessage.count]
  }
}
