view: lineage {
  sql_table_name: ovaledgedb.lineage ;;
  drill_fields: [lineageid]

  dimension: lineageid {
    primary_key: yes
    type: number
    sql: ${TABLE}.lineageid ;;
  }

  dimension: datasetid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.datasetid ;;
  }

  dimension: filetableid {
    type: number
    value_format_name: id
    sql: ${TABLE}.filetableid ;;
  }

  dimension: impexpinfoid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.impexpinfoid ;;
  }

  dimension: sourceid {
    type: number
    value_format_name: id
    sql: ${TABLE}.sourceid ;;
  }

  dimension: sourceref {
    type: string
    sql: ${TABLE}.sourceref ;;
  }

  dimension: targetid {
    type: number
    value_format_name: id
    sql: ${TABLE}.targetid ;;
  }

  dimension: targetref {
    type: string
    sql: ${TABLE}.targetref ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      lineageid,
      dataset.datasetid,
      dataset.datasetname,
      impexpinfo.impexpinfoid,
      impexpinfo.name,
      a_lineage.count,
      a_lineagecolumn.count,
      lineagecolumn.count
    ]
  }
}
