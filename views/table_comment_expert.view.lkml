view: table_comment_expert {
  sql_table_name: ovaledgedb.table_comment_expert ;;

  dimension: expertid {
    type: number
    value_format_name: id
    sql: ${TABLE}.expertid ;;
  }

  dimension: filefolderid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.filefolderid ;;
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

  dimension: schemaid {
    type: number
    value_format_name: id
    sql: ${TABLE}.schemaid ;;
  }

  dimension: tableid {
    type: number
    value_format_name: id
    sql: ${TABLE}.tableid ;;
  }

  dimension: userid {
    type: string
    # hidden: yes
    sql: ${TABLE}.userid ;;
  }

  measure: count {
    type: count
    drill_fields: [user.userid, user.fname, user.lname, filefolder.filefolderid]
  }
}
