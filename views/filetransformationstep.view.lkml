view: filetransformationstep {
  sql_table_name: ovaledgedb.filetransformationstep ;;
  drill_fields: [filetransformationstepid]

  dimension: filetransformationstepid {
    primary_key: yes
    type: number
    sql: ${TABLE}.filetransformationstepid ;;
  }

  dimension_group: creationdate {
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
    sql: ${TABLE}.creationdate ;;
  }

  dimension: filetransformationid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.filetransformationid ;;
  }

  dimension: stepno {
    type: number
    sql: ${TABLE}.stepno ;;
  }

  dimension: transfunction {
    type: string
    sql: ${TABLE}.transfunction ;;
  }

  dimension: transfunctionvar1 {
    type: string
    sql: ${TABLE}.transfunctionvar1 ;;
  }

  dimension: transfunctionvar2 {
    type: string
    sql: ${TABLE}.transfunctionvar2 ;;
  }

  dimension: transfunctionvar3 {
    type: string
    sql: ${TABLE}.transfunctionvar3 ;;
  }

  dimension: transfunctionvar4 {
    type: string
    sql: ${TABLE}.transfunctionvar4 ;;
  }

  dimension: transfunctionvar5 {
    type: string
    sql: ${TABLE}.transfunctionvar5 ;;
  }

  dimension: transfunctionvar6 {
    type: string
    sql: ${TABLE}.transfunctionvar6 ;;
  }

  measure: count {
    type: count
    drill_fields: [filetransformationstepid, filetransformation.filetransformationid, filetransformation.filetransformationname]
  }
}
