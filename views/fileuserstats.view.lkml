view: fileuserstats {
  sql_table_name: ovaledgedb.fileuserstats ;;
  drill_fields: [fileuserstatsid]

  dimension: fileuserstatsid {
    primary_key: yes
    type: number
    sql: ${TABLE}.fileuserstatsid ;;
  }

  dimension: fileid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.fileid ;;
  }

  dimension: fileuserscore {
    type: number
    sql: ${TABLE}.fileuserscore ;;
  }

  dimension: numbercommented {
    type: number
    sql: ${TABLE}.numbercommented ;;
  }

  dimension: numberlooked {
    type: number
    sql: ${TABLE}.numberlooked ;;
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
      fileuserstatsid,
      file.fileid,
      file.filename,
      user.userid,
      user.fname,
      user.lname
    ]
  }
}
