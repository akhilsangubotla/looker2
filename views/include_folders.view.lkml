view: include_folders {
  sql_table_name: ovaledgedb.include_folders ;;

  dimension: connectioninfoid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.connectioninfoid ;;
  }

  dimension_group: createdate {
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
    sql: ${TABLE}.createdate ;;
  }

  dimension: folder_name {
    type: string
    sql: ${TABLE}.Folder_Name ;;
  }

  measure: count {
    type: count
    drill_fields: [folder_name, connectioninfo.connectioninfoid, connectioninfo.username, connectioninfo.name, connectioninfo.drivername]
  }
}
