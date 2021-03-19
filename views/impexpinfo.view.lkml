view: impexpinfo {
  sql_table_name: ovaledgedb.impexpinfo ;;
  drill_fields: [impexpinfoid]

  dimension: impexpinfoid {
    primary_key: yes
    type: number
    sql: ${TABLE}.impexpinfoid ;;
  }

  dimension: append {
    type: number
    sql: ${TABLE}.append ;;
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

  dimension: datasetid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.datasetid ;;
  }

  dimension_group: lastrundate {
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
    sql: ${TABLE}.lastrundate ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: oetableid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.oetableid ;;
  }

  dimension: sourcetableid {
    type: number
    value_format_name: id
    sql: ${TABLE}.sourcetableid ;;
  }

  dimension: tempdestschemaid {
    type: number
    value_format_name: id
    sql: ${TABLE}.tempdestschemaid ;;
  }

  dimension: tempdesttable {
    type: string
    sql: ${TABLE}.tempdesttable ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      impexpinfoid,
      name,
      dataset.datasetid,
      dataset.datasetname,
      oetable.oetableid,
      oetable.tablename,
      oetable.filename,
      a_lineage.count,
      lineage.count
    ]
  }
}
