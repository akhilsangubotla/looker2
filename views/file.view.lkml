view: file {
  sql_table_name: ovaledgedb.file ;;
  drill_fields: [fileid]

  dimension: fileid {
    primary_key: yes
    type: number
    sql: ${TABLE}.fileid ;;
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

  dimension: filefolderid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.filefolderid ;;
  }

  dimension: filename {
    type: string
    sql: ${TABLE}.filename ;;
  }

  dimension: filetype {
    type: string
    sql: ${TABLE}.filetype ;;
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

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: rating {
    type: number
    sql: ${TABLE}.rating ;;
  }

  dimension: size {
    type: number
    sql: ${TABLE}.size ;;
  }

  dimension: userid {
    type: string
    # hidden: yes
    sql: ${TABLE}.userid ;;
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
      fileid,
      filename,
      filefolder.filefolderid,
      user.userid,
      user.fname,
      user.lname,
      filetableinfo.count,
      filetag.count,
      fileuserstats.count
    ]
  }
}
