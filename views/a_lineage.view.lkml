view: a_lineage {
  sql_table_name: ovaledgedb.a_lineage ;;

  dimension: datasetid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.datasetid ;;
  }

  dimension_group: deletedate {
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
    sql: ${TABLE}.deletedate ;;
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

  dimension: lineageid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.lineageid ;;
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
    drill_fields: [lineage.lineageid, dataset.datasetid, dataset.datasetname, impexpinfo.impexpinfoid, impexpinfo.name]
  }
}
