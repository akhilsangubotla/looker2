view: s3importinfo {
  sql_table_name: ovaledgedb.s3importinfo ;;

  dimension: batchid {
    type: number
    value_format_name: id
    sql: ${TABLE}.batchid ;;
  }

  dimension: hdfspath {
    type: string
    sql: ${TABLE}.hdfspath ;;
  }

  dimension: jobname {
    type: string
    sql: ${TABLE}.jobname ;;
  }

  dimension: overwrite {
    type: yesno
    sql: ${TABLE}.overwrite ;;
  }

  dimension: s3conid {
    type: number
    value_format_name: id
    sql: ${TABLE}.s3conid ;;
  }

  dimension: s3infoid {
    type: number
    value_format_name: id
    sql: ${TABLE}.s3infoid ;;
  }

  dimension: s3path {
    type: string
    sql: ${TABLE}.s3path ;;
  }

  measure: count {
    type: count
    drill_fields: [jobname]
  }
}
