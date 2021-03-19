view: a_oetable {
  sql_table_name: ovaledgedb.a_oetable ;;

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
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

  dimension: datasetid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.datasetid ;;
  }

  dimension: filename {
    type: string
    sql: ${TABLE}.filename ;;
  }

  dimension: filetype {
    type: string
    sql: ${TABLE}.filetype ;;
  }

  dimension_group: lastanalyzeddate {
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
    sql: ${TABLE}.lastanalyzeddate ;;
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

  dimension_group: lastmetasyncdate {
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
    sql: ${TABLE}.lastmetasyncdate ;;
  }

  dimension_group: lastpopulateddate {
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
    sql: ${TABLE}.lastpopulateddate ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: oeschemaid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.oeschemaid ;;
  }

  dimension: oetableid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.oetableid ;;
  }

  dimension: partitioned {
    type: yesno
    sql: ${TABLE}.partitioned ;;
  }

  dimension: rawind {
    type: yesno
    sql: ${TABLE}.rawind ;;
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

  dimension: tablename {
    type: string
    sql: ${TABLE}.tablename ;;
  }

  dimension: tablescore {
    type: number
    sql: ${TABLE}.tablescore ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: usescore {
    type: number
    sql: ${TABLE}.usescore ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      tablename,
      filename,
      oetable.oetableid,
      oetable.tablename,
      oetable.filename,
      oeschema.oeschemaid,
      oeschema.schemaname,
      dataset.datasetid,
      dataset.datasetname
    ]
  }
}
