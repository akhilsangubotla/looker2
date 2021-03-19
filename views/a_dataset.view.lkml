view: a_dataset {
  sql_table_name: ovaledgedb.a_dataset ;;

  dimension: analysismsg {
    type: string
    sql: ${TABLE}.analysismsg ;;
  }

  dimension: append {
    type: yesno
    sql: ${TABLE}.append ;;
  }

  dimension_group: auditdate {
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
    sql: ${TABLE}.auditdate ;;
  }

  dimension: auditflag {
    type: string
    sql: ${TABLE}.auditflag ;;
  }

  dimension: connectioninfoid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.connectioninfoid ;;
  }

  dimension_group: createdate {
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
    sql: ${TABLE}.createdate ;;
  }

  dimension: datasetid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.datasetid ;;
  }

  dimension: datasetname {
    type: string
    sql: ${TABLE}.datasetname ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: isbatch {
    type: yesno
    sql: ${TABLE}.isbatch ;;
  }

  dimension: jobtype {
    type: string
    sql: ${TABLE}.jobtype ;;
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
    sql: ${TABLE}.lastmoddate ;;
  }

  dimension: loadfileid {
    type: number
    value_format_name: id
    sql: ${TABLE}.loadfileid ;;
  }

  dimension: outputdb {
    type: string
    sql: ${TABLE}.outputdb ;;
  }

  dimension: outputtable {
    type: string
    sql: ${TABLE}.outputtable ;;
  }

  dimension: projid {
    type: string
    sql: ${TABLE}.projid ;;
  }

  dimension: query {
    type: string
    sql: ${TABLE}.query ;;
  }

  dimension: saved {
    type: yesno
    sql: ${TABLE}.saved ;;
  }

  dimension: sqltype {
    type: yesno
    sql: ${TABLE}.sqltype ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: subquery {
    type: yesno
    sql: ${TABLE}.subquery ;;
  }

  dimension: tagrelease {
    type: yesno
    sql: ${TABLE}.tagrelease ;;
  }

  dimension: userid {
    type: string
    # hidden: yes
    sql: ${TABLE}.userid ;;
  }

  dimension: userselecteddb {
    type: string
    sql: ${TABLE}.userselecteddb ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      datasetname,
      dataset.datasetid,
      dataset.datasetname,
      user.userid,
      user.fname,
      user.lname,
      connectioninfo.connectioninfoid,
      connectioninfo.username,
      connectioninfo.name,
      connectioninfo.drivername
    ]
  }
}
