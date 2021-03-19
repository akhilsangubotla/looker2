view: filetableinfo {
  sql_table_name: ovaledgedb.filetableinfo ;;
  drill_fields: [filetableinfoid]

  dimension: filetableinfoid {
    primary_key: yes
    type: number
    sql: ${TABLE}.filetableinfoid ;;
  }

  dimension: append {
    type: yesno
    sql: ${TABLE}.append ;;
  }

  dimension: columnregex {
    type: string
    sql: ${TABLE}.columnregex ;;
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

  dimension: fileid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.fileid ;;
  }

  dimension: import {
    type: yesno
    sql: ${TABLE}.import ;;
  }

  dimension_group: lastrundate {
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
    sql: ${TABLE}.lastrundate ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: oetableid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.oetableid ;;
  }

  dimension: userid {
    type: string
    # hidden: yes
    sql: ${TABLE}.userid ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      filetableinfoid,
      name,
      file.fileid,
      file.filename,
      oetable.oetableid,
      oetable.tablename,
      oetable.filename,
      dataset.datasetid,
      dataset.datasetname,
      user.userid,
      user.fname,
      user.lname,
      impexcolumnmap.count
    ]
  }
}
