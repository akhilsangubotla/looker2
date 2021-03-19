view: filetransfunctiondef {
  sql_table_name: ovaledgedb.filetransfunctiondef ;;

  dimension: attr1 {
    type: string
    sql: ${TABLE}.attr1 ;;
  }

  dimension: attr2 {
    type: string
    sql: ${TABLE}.attr2 ;;
  }

  dimension: attr3 {
    type: string
    sql: ${TABLE}.attr3 ;;
  }

  dimension: attr4 {
    type: string
    sql: ${TABLE}.attr4 ;;
  }

  dimension: attr5 {
    type: string
    sql: ${TABLE}.attr5 ;;
  }

  dimension: attr6 {
    type: string
    sql: ${TABLE}.attr6 ;;
  }

  dimension: functionhelp {
    type: string
    sql: ${TABLE}.functionhelp ;;
  }

  dimension: functionname {
    type: string
    sql: ${TABLE}.functionname ;;
  }

  dimension: helpattr1 {
    type: string
    sql: ${TABLE}.helpattr1 ;;
  }

  dimension: helpattr2 {
    type: string
    sql: ${TABLE}.helpattr2 ;;
  }

  dimension: helpattr3 {
    type: string
    sql: ${TABLE}.helpattr3 ;;
  }

  dimension: helpattr4 {
    type: string
    sql: ${TABLE}.helpattr4 ;;
  }

  dimension: helpattr5 {
    type: string
    sql: ${TABLE}.helpattr5 ;;
  }

  dimension: helpattr6 {
    type: string
    sql: ${TABLE}.helpattr6 ;;
  }

  measure: count {
    type: count
    drill_fields: [functionname]
  }
}
