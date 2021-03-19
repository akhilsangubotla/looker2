view: tablemessage {
  sql_table_name: ovaledgedb.tablemessage ;;

  dimension: commentid {
    type: string
    # hidden: yes
    sql: ${TABLE}.COMMENTID ;;
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

  dimension: messageid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.MESSAGEID ;;
  }

  dimension: userid {
    type: string
    # hidden: yes
    sql: ${TABLE}.USERID ;;
  }

  measure: count {
    type: count
    drill_fields: [message.messageid, user.userid, user.fname, user.lname, comment.parentcommentid]
  }
}
