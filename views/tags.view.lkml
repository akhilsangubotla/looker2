view: tags {
  sql_table_name: ovaledgedb.tags ;;
  drill_fields: [parenttagid]

  dimension: parenttagid {
    primary_key: yes
    type: number
    sql: ${TABLE}.PARENTTAGID ;;
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

  dimension: logo {
    type: string
    sql: ${TABLE}.logo ;;
  }

  dimension: tagid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.TAGID ;;
  }

  dimension: tagname {
    type: string
    sql: ${TABLE}.TAGNAME ;;
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
      parenttagid,
      tagname,
      tags.tagname,
      tags.parenttagid,
      user.userid,
      user.fname,
      user.lname,
      aiassistedtabletag.count,
      aiassistedtag.count,
      charttag.count,
      columntag.count,
      datastorytag.count,
      filetag.count,
      querytag.count,
      schematag.count,
      tabletag.count,
      tags.count
    ]
  }
}
