view: graph {
  sql_table_name: ovaledgedb.graph ;;
  drill_fields: [graphid]

  dimension: graphid {
    primary_key: yes
    type: number
    sql: ${TABLE}.GRAPHID ;;
  }

  dimension: business_function {
    type: string
    sql: ${TABLE}.BUSINESS_FUNCTION ;;
  }

  dimension: element {
    type: string
    sql: ${TABLE}.ELEMENT ;;
  }

  dimension: graphname {
    type: string
    sql: ${TABLE}.GRAPHNAME ;;
  }

  dimension: graphtype {
    type: string
    sql: ${TABLE}.GRAPHTYPE ;;
  }

  dimension: query {
    type: string
    sql: ${TABLE}.QUERY ;;
  }

  dimension: stack {
    type: string
    sql: ${TABLE}.STACK ;;
  }

  measure: count {
    type: count
    drill_fields: [graphid, graphname]
  }
}
