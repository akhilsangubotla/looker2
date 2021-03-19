view: filefolder {
  sql_table_name: ovaledgedb.filefolder ;;
  drill_fields: [filefolderid]

  dimension: filefolderid {
    primary_key: yes
    type: number
    sql: ${TABLE}.filefolderid ;;
  }

  dimension: connectioninfoid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.connectioninfoid ;;
  }

  dimension: filefolder {
    type: string
    sql: ${TABLE}.filefolder ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      filefolderid,
      connectioninfo.connectioninfoid,
      connectioninfo.username,
      connectioninfo.name,
      connectioninfo.drivername,
      file.count,
      table_comment_expert.count
    ]
  }
}
