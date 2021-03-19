view: commentassociation {
  sql_table_name: ovaledgedb.commentassociation ;;
  drill_fields: [commentassociationid]

  dimension: commentassociationid {
    primary_key: yes
    type: number
    sql: ${TABLE}.commentassociationid ;;
  }

  dimension: assobject {
    type: string
    sql: ${TABLE}.assobject ;;
  }

  dimension: assobjectid {
    type: number
    value_format_name: id
    sql: ${TABLE}.assobjectid ;;
  }

  dimension: commentid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.commentid ;;
  }

  measure: count {
    type: count
    drill_fields: [commentassociationid, comment.parentcommentid]
  }
}
