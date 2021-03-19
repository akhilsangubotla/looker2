view: dataset {
  sql_table_name: ovaledgedb.dataset ;;
  drill_fields: [datasetid]

  dimension: datasetid {
    primary_key: yes
    type: number
    sql: ${TABLE}.datasetid ;;
  }

  dimension: analysismsg {
    type: string
    sql: ${TABLE}.analysismsg ;;
  }

  dimension: append {
    type: yesno
    sql: ${TABLE}.append ;;
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
      datasetid,
      datasetname,
      user.userid,
      user.fname,
      user.lname,
      connectioninfo.connectioninfoid,
      connectioninfo.username,
      connectioninfo.name,
      connectioninfo.drivername,
      alert.count,
      a_dataset.count,
      a_datasetassociation.count,
      a_lineage.count,
      a_oetable.count,
      chart.count,
      dataset1.count,
      dataset2.count,
      dataset3.count,
      datasetassociation.count,
      datasetcorrection.count,
      discovery.count,
      filetableinfo.count,
      impexpinfo.count,
      lineage.count,
      querytag.count,
      queryuserstats.count,
      variableassociation.count
    ]
  }
}
