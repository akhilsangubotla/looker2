view: hivecolumnpartition {
  sql_table_name: ovaledgedb.hivecolumnpartition ;;
  drill_fields: [hivecolumnpartitionid]

  dimension: hivecolumnpartitionid {
    primary_key: yes
    type: number
    sql: ${TABLE}.hivecolumnpartitionid ;;
  }

  dimension: beavercolumntype {
    type: string
    sql: ${TABLE}.beavercolumntype ;;
  }

  dimension: columnname {
    type: string
    sql: ${TABLE}.columnname ;;
  }

  dimension: columnrank {
    type: number
    sql: ${TABLE}.columnrank ;;
  }

  dimension: columnscore {
    type: number
    sql: ${TABLE}.columnscore ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.comments ;;
  }

  dimension: distinctcount {
    type: number
    sql: ${TABLE}.distinctcount ;;
  }

  dimension: hivecolumntype {
    type: string
    sql: ${TABLE}.hivecolumntype ;;
  }

  dimension: hivepartitionid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.hivepartitionid ;;
  }

  dimension: maxval {
    type: string
    sql: ${TABLE}.maxval ;;
  }

  dimension: minval {
    type: string
    sql: ${TABLE}.minval ;;
  }

  dimension: nullcount {
    type: number
    sql: ${TABLE}.nullcount ;;
  }

  dimension: topvalues {
    type: string
    sql: ${TABLE}.topvalues ;;
  }

  dimension: typestats {
    type: string
    sql: ${TABLE}.typestats ;;
  }

  measure: count {
    type: count
    drill_fields: [hivecolumnpartitionid, columnname, hivepartition.hivepartitionid, hivepartition.partitionname]
  }
}
