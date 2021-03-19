view: function {
  sql_table_name: ovaledgedb.function ;;

  dimension: datatype {
    type: string
    sql: ${TABLE}.DATATYPE ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: fxdefnition {
    type: string
    sql: ${TABLE}.FXDEFNITION ;;
  }

  dimension: fxname {
    type: string
    sql: ${TABLE}.FXNAME ;;
  }

  measure: count {
    type: count
    drill_fields: [fxname]
  }
}
