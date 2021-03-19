view: oetable {
  sql_table_name: ovaledgedb.oetable ;;
  drill_fields: [oetableid]

  dimension: oetableid {
    primary_key: yes
    type: number
    sql: ${TABLE}.oetableid ;;
  }

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

  dimension: filename {
    type: string
    sql: ${TABLE}.filename ;;
  }

  dimension: filetype {
    type: string
    sql: ${TABLE}.filetype ;;
  }

  dimension: inaudit {
    type: yesno
    sql: ${TABLE}.inaudit ;;
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

  dimension: partitioned {
    type: yesno
    sql: ${TABLE}.partitioned ;;
  }

  dimension: rating {
    type: number
    sql: ${TABLE}.rating ;;
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
      oetableid,
      tablename,
      filename,
      oeschema.oeschemaid,
      oeschema.schemaname,
      aiassistedtabletag.count,
      a_oecolumn.count,
      a_oetable.count,
      filetableinfo.count,
      impexpinfo.count,
      oecolumn.count,
      oecolumntimeline.count,
      oetablechanges.count,
      oetabletimeline.count,
      tableendorsement.count,
      tabletag.count,
      tableuserstats.count
    ]
  }
}
