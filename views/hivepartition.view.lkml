view: hivepartition {
  sql_table_name: ovaledgedb.hivepartition ;;
  drill_fields: [hivepartitionid]

  dimension: hivepartitionid {
    primary_key: yes
    type: number
    sql: ${TABLE}.hivepartitionid ;;
  }

  dimension: analyzed {
    type: yesno
    sql: ${TABLE}.analyzed ;;
  }

  dimension_group: analyzeddate {
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
    sql: ${TABLE}.analyzeddate ;;
  }

  dimension: hivetableid {
    type: number
    value_format_name: id
    sql: ${TABLE}.hivetableid ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: partitionname {
    type: string
    sql: ${TABLE}.partitionname ;;
  }

  dimension: rowcount {
    type: number
    sql: ${TABLE}.rowcount ;;
  }

  dimension: tablescore {
    type: number
    sql: ${TABLE}.tablescore ;;
  }

  measure: count {
    type: count
    drill_fields: [hivepartitionid, partitionname, hivecolumnpartition.count]
  }
}
