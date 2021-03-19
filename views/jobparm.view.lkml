view: jobparm {
  sql_table_name: ovaledgedb.jobparm ;;
  drill_fields: [jobparmid]

  dimension: jobparmid {
    primary_key: yes
    type: number
    sql: ${TABLE}.jobparmid ;;
  }

  dimension: ispassword {
    type: yesno
    sql: ${TABLE}.ispassword ;;
  }

  dimension: jobparmdescription {
    type: string
    sql: ${TABLE}.jobparmdescription ;;
  }

  dimension: jobparmkey {
    type: string
    sql: ${TABLE}.jobparmkey ;;
  }

  dimension: jobparmtype {
    type: string
    sql: ${TABLE}.jobparmtype ;;
  }

  dimension: jobparmvalue {
    type: string
    sql: ${TABLE}.jobparmvalue ;;
  }

  dimension: needinlite {
    type: yesno
    sql: ${TABLE}.needinlite ;;
  }

  measure: count {
    type: count
    drill_fields: [jobparmid]
  }
}
