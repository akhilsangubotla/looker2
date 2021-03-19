view: crawlersetting {
  sql_table_name: ovaledgedb.crawlersetting ;;
  drill_fields: [crawlersettingid]

  dimension: crawlersettingid {
    primary_key: yes
    type: number
    sql: ${TABLE}.crawlersettingid ;;
  }

  dimension: connectioninfoid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.connectioninfoid ;;
  }

  dimension: dayofweek {
    type: number
    sql: ${TABLE}.dayofweek ;;
  }

  dimension_group: endtime {
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
    sql: ${TABLE}.endtime ;;
  }

  dimension_group: lastupdatedate {
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
    sql: ${TABLE}.lastupdatedate ;;
  }

  dimension: lastupdateuser {
    type: string
    sql: ${TABLE}.lastupdateuser ;;
  }

  dimension: parms {
    type: string
    sql: ${TABLE}.parms ;;
  }

  dimension: profiletype {
    type: number
    sql: ${TABLE}.profiletype ;;
  }

  dimension: rowcountcheck {
    type: yesno
    sql: ${TABLE}.rowcountcheck ;;
  }

  dimension: rowcountlimit {
    type: number
    sql: ${TABLE}.rowcountlimit ;;
  }

  dimension: setorder {
    type: number
    sql: ${TABLE}.setorder ;;
  }

  dimension_group: starttime {
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
    sql: ${TABLE}.starttime ;;
  }

  dimension: threadcount {
    type: number
    sql: ${TABLE}.threadcount ;;
  }

  measure: count {
    type: count
    drill_fields: [crawlersettingid, connectioninfo.connectioninfoid, connectioninfo.username, connectioninfo.name, connectioninfo.drivername]
  }
}
