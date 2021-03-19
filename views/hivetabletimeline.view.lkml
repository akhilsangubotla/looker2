view: hivetabletimeline {
  sql_table_name: ovaledgedb.hivetabletimeline ;;
  drill_fields: [hivetabletimelineid]

  dimension: hivetabletimelineid {
    primary_key: yes
    type: number
    sql: ${TABLE}.hivetabletimelineid ;;
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }

  dimension_group: analyzeddate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.analyzeddate ;;
  }

  dimension: analyzedstatus {
    type: string
    sql: ${TABLE}.analyzedstatus ;;
  }

  dimension: blurstatus {
    type: yesno
    sql: ${TABLE}.blurstatus ;;
  }

  dimension: columnsecure {
    type: yesno
    sql: ${TABLE}.columnsecure ;;
  }

  dimension: filename {
    type: string
    sql: ${TABLE}.filename ;;
  }

  dimension: filetype {
    type: string
    sql: ${TABLE}.filetype ;;
  }

  dimension: hivetableid {
    type: number
    value_format_name: id
    sql: ${TABLE}.hivetableid ;;
  }

  dimension_group: lastblurdate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.lastblurdate ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: partitionfield1 {
    type: string
    sql: ${TABLE}.partitionfield1 ;;
  }

  dimension: partitionfield2 {
    type: string
    sql: ${TABLE}.partitionfield2 ;;
  }

  dimension: rowcount {
    type: number
    sql: ${TABLE}.rowcount ;;
  }

  dimension: sampletable {
    type: string
    sql: ${TABLE}.sampletable ;;
  }

  dimension: tabledescription {
    type: string
    sql: ${TABLE}.tabledescription ;;
  }

  dimension: tablescore {
    type: number
    sql: ${TABLE}.tablescore ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [hivetabletimelineid, filename, hivecolumntimeline.count]
  }
}
