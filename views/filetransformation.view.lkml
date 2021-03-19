view: filetransformation {
  sql_table_name: ovaledgedb.filetransformation ;;
  drill_fields: [filetransformationid]

  dimension: filetransformationid {
    primary_key: yes
    type: number
    sql: ${TABLE}.filetransformationid ;;
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

  dimension: filetransformationname {
    type: string
    sql: ${TABLE}.filetransformationname ;;
  }

  dimension: filetype {
    type: string
    sql: ${TABLE}.filetype ;;
  }

  dimension: outputpath {
    type: string
    sql: ${TABLE}.outputpath ;;
  }

  dimension: path {
    type: string
    sql: ${TABLE}.path ;;
  }

  dimension: recreateoutputpath {
    type: yesno
    sql: ${TABLE}.recreateoutputpath ;;
  }

  measure: count {
    type: count
    drill_fields: [filetransformationid, filetransformationname, filetransformationstep.count]
  }
}
