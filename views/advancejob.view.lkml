view: advancejob {
  sql_table_name: ovaledgedb.advancejob ;;
  drill_fields: [advancejobid]

  dimension: advancejobid {
    primary_key: yes
    type: number
    sql: ${TABLE}.advancejobid ;;
  }

  dimension: ajname {
    type: string
    sql: ${TABLE}.ajname ;;
  }

  dimension: ajtype {
    type: string
    sql: ${TABLE}.ajtype ;;
  }

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

  dimension: classname {
    type: string
    sql: ${TABLE}.classname ;;
  }

  dimension: help {
    type: string
    sql: ${TABLE}.help ;;
  }

  measure: count {
    type: count
    drill_fields: [advancejobid, ajname, classname]
  }
}
