view: connectioninfo {
  sql_table_name: ovaledgedb.connectioninfo ;;
  drill_fields: [connectioninfoid]

  dimension: connectioninfoid {
    primary_key: yes
    type: number
    sql: ${TABLE}.connectioninfoid ;;
  }

  dimension: connectionstring {
    type: string
    sql: ${TABLE}.connectionstring ;;
  }

  dimension: conntype {
    type: number
    sql: ${TABLE}.conntype ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.createdDate ;;
  }

  dimension: datapersist {
    type: yesno
    sql: ${TABLE}.datapersist ;;
  }

  dimension: drivername {
    type: string
    sql: ${TABLE}.drivername ;;
  }

  dimension: hadoopdependent {
    type: yesno
    sql: ${TABLE}.hadoopdependent ;;
  }

  dimension: ipaddress {
    type: string
    sql: ${TABLE}.ipaddress ;;
  }

  dimension_group: last_sync {
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
    sql: ${TABLE}.lastSyncDate ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }

  dimension: portnumber {
    type: string
    sql: ${TABLE}.portnumber ;;
  }

  dimension: servertype {
    type: string
    sql: ${TABLE}.servertype ;;
  }

  dimension: sid {
    type: string
    sql: ${TABLE}.sid ;;
  }

  dimension: userid {
    type: string
    # hidden: yes
    sql: ${TABLE}.userid ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.username ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      connectioninfoid,
      username,
      name,
      drivername,
      user.userid,
      user.fname,
      user.lname,
      a_dataset.count,
      a_oeschema.count,
      connectioninfoadnl.count,
      crawlersetting.count,
      dataset.count,
      dataset1.count,
      dataset2.count,
      dataset3.count,
      domain.count,
      exporttableinfo.count,
      filefolder.count,
      include_folders.count,
      oeschema.count,
      remotetableinfo.count
    ]
  }
}
