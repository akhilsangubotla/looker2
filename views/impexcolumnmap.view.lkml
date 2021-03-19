view: impexcolumnmap {
  sql_table_name: ovaledgedb.impexcolumnmap ;;

  dimension: destcolumnname {
    type: string
    sql: ${TABLE}.destcolumnname ;;
  }

  dimension: filetableinfoid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.filetableinfoid ;;
  }

  dimension: formula {
    type: string
    sql: ${TABLE}.formula ;;
  }

  dimension: importcolumnmapid {
    type: number
    value_format_name: id
    sql: ${TABLE}.importcolumnmapid ;;
  }

  dimension: importinfoid {
    type: number
    value_format_name: id
    sql: ${TABLE}.importinfoid ;;
  }

  dimension: sourcecolumnname {
    type: string
    sql: ${TABLE}.sourcecolumnname ;;
  }

  measure: count {
    type: count
    drill_fields: [sourcecolumnname, destcolumnname, filetableinfo.filetableinfoid, filetableinfo.name]
  }
}
