view: hivecolumntimeline {
  sql_table_name: ovaledgedb.hivecolumntimeline ;;
  drill_fields: [hivecolumntimelineid]

  dimension: hivecolumntimelineid {
    primary_key: yes
    type: number
    sql: ${TABLE}.hivecolumntimelineid ;;
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

  dimension: hivetabletimelineid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.hivetabletimelineid ;;
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
    drill_fields: [hivecolumntimelineid, columnname, hivetabletimeline.hivetabletimelineid, hivetabletimeline.filename]
  }
}
