view: dataidentifier {
  sql_table_name: ovaledgedb.dataidentifier ;;
  drill_fields: [dataidentifierid]

  dimension: dataidentifierid {
    primary_key: yes
    type: number
    sql: ${TABLE}.dataidentifierid ;;
  }

  dimension: datatype {
    type: string
    sql: ${TABLE}.datatype ;;
  }

  dimension: datatypedesc {
    type: string
    sql: ${TABLE}.datatypedesc ;;
  }

  dimension_group: lastmoddate {
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
    sql: ${TABLE}.LASTMODDATE ;;
  }

  dimension: regex {
    type: string
    sql: ${TABLE}.regex ;;
  }

  measure: count {
    type: count
    drill_fields: [dataidentifierid]
  }
}
