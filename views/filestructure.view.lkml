view: filestructure {
  sql_table_name: ovaledgedb.filestructure ;;
  drill_fields: [filestructureid]

  dimension: filestructureid {
    primary_key: yes
    type: number
    sql: ${TABLE}.filestructureid ;;
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

  dimension: filetype {
    type: string
    sql: ${TABLE}.filetype ;;
  }

  dimension: functioncount {
    type: number
    sql: ${TABLE}.functioncount ;;
  }

  dimension: jobname {
    type: string
    sql: ${TABLE}.jobname ;;
  }

  dimension: learndatalake {
    type: yesno
    sql: ${TABLE}.learndatalake ;;
  }

  dimension: packagecount {
    type: number
    sql: ${TABLE}.packagecount ;;
  }

  dimension: path {
    type: string
    sql: ${TABLE}.path ;;
  }

  dimension: schemaname {
    type: string
    sql: ${TABLE}.schemaname ;;
  }

  dimension: tablename {
    type: string
    sql: ${TABLE}.tablename ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      filestructureid,
      schemaname,
      tablename,
      jobname,
      filestructurepackage.count,
      regextable.count,
      structureguide.count
    ]
  }
}
