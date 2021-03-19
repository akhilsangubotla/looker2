view: jobvariable {
  sql_table_name: ovaledgedb.jobvariable ;;
  drill_fields: [jobvariableid]

  dimension: jobvariableid {
    primary_key: yes
    type: number
    sql: ${TABLE}.jobvariableid ;;
  }

  dimension: jdescription {
    type: string
    sql: ${TABLE}.jdescription ;;
  }

  dimension: jkey {
    type: string
    sql: ${TABLE}.jkey ;;
  }

  dimension: jtype {
    type: string
    sql: ${TABLE}.jtype ;;
  }

  dimension: jvalue {
    type: string
    sql: ${TABLE}.jvalue ;;
  }

  measure: count {
    type: count
    drill_fields: [jobvariableid]
  }
}
