connection: "mysql"

# include all the views
include: "/views/**/*.view"

datagroup: sampleproject_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: sampleproject_default_datagroup

explore: a_dataset {
  join: dataset {
    type: left_outer
    sql_on: ${a_dataset.datasetid} = ${dataset.datasetid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${a_dataset.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${a_dataset.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }
}

explore: a_datasetassociation {
  join: datasetassociation {
    type: left_outer
    sql_on: ${a_datasetassociation.datasetassociationid} = ${datasetassociation.datasetassociationid} ;;
    relationship: many_to_one
  }

  join: dataset {
    type: left_outer
    sql_on: ${a_datasetassociation.datasetid} = ${dataset.datasetid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${dataset.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${dataset.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }
}

explore: a_lineage {
  join: lineage {
    type: left_outer
    sql_on: ${a_lineage.lineageid} = ${lineage.lineageid} ;;
    relationship: many_to_one
  }

  join: dataset {
    type: left_outer
    sql_on: ${a_lineage.datasetid} = ${dataset.datasetid} ;;
    relationship: many_to_one
  }

  join: impexpinfo {
    type: left_outer
    sql_on: ${a_lineage.impexpinfoid} = ${impexpinfo.impexpinfoid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${dataset.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${dataset.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }

  join: oetable {
    type: left_outer
    sql_on: ${impexpinfo.oetableid} = ${oetable.oetableid} ;;
    relationship: many_to_one
  }

  join: oeschema {
    type: left_outer
    sql_on: ${oetable.oeschemaid} = ${oeschema.oeschemaid} ;;
    relationship: many_to_one
  }
}

explore: a_lineagecolumn {
  join: lineagecolumn {
    type: left_outer
    sql_on: ${a_lineagecolumn.lineagecolumnid} = ${lineagecolumn.lineagecolumnid} ;;
    relationship: many_to_one
  }

  join: lineage {
    type: left_outer
    sql_on: ${a_lineagecolumn.lineageid} = ${lineage.lineageid} ;;
    relationship: many_to_one
  }

  join: dataset {
    type: left_outer
    sql_on: ${lineage.datasetid} = ${dataset.datasetid} ;;
    relationship: many_to_one
  }

  join: impexpinfo {
    type: left_outer
    sql_on: ${lineage.impexpinfoid} = ${impexpinfo.impexpinfoid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${dataset.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${dataset.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }

  join: oetable {
    type: left_outer
    sql_on: ${impexpinfo.oetableid} = ${oetable.oetableid} ;;
    relationship: many_to_one
  }

  join: oeschema {
    type: left_outer
    sql_on: ${oetable.oeschemaid} = ${oeschema.oeschemaid} ;;
    relationship: many_to_one
  }
}

explore: a_oecolumn {
  join: oecolumn {
    type: left_outer
    sql_on: ${a_oecolumn.oecolumnid} = ${oecolumn.oecolumnid} ;;
    relationship: many_to_one
  }

  join: oetable {
    type: left_outer
    sql_on: ${a_oecolumn.oetableid} = ${oetable.oetableid} ;;
    relationship: many_to_one
  }

  join: oeschema {
    type: left_outer
    sql_on: ${oetable.oeschemaid} = ${oeschema.oeschemaid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${oeschema.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${connectioninfo.userid} = ${user.userid} ;;
    relationship: many_to_one
  }
}

explore: a_oeschema {
  join: oeschema {
    type: left_outer
    sql_on: ${a_oeschema.oeschemaid} = ${oeschema.oeschemaid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${a_oeschema.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${connectioninfo.userid} = ${user.userid} ;;
    relationship: many_to_one
  }
}

explore: a_oetable {
  join: oetable {
    type: left_outer
    sql_on: ${a_oetable.oetableid} = ${oetable.oetableid} ;;
    relationship: many_to_one
  }

  join: oeschema {
    type: left_outer
    sql_on: ${a_oetable.oeschemaid} = ${oeschema.oeschemaid} ;;
    relationship: many_to_one
  }

  join: dataset {
    type: left_outer
    sql_on: ${a_oetable.datasetid} = ${dataset.datasetid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${oeschema.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${connectioninfo.userid} = ${user.userid} ;;
    relationship: many_to_one
  }
}

explore: acl_class {}

explore: acl_entry {}

explore: acl_object_identity {}

explore: acl_sid {}

explore: action {}

explore: action2 {
  join: action {
    type: left_outer
    sql_on: ${action2.actionid} = ${action.actionid} ;;
    relationship: many_to_one
  }
}

explore: advancejob {}

explore: aiassistedtabletag {
  join: tags {
    type: left_outer
    sql_on: ${aiassistedtabletag.tagid} = ${tags.parenttagid} ;;
    relationship: many_to_one
  }

  join: oetable {
    type: left_outer
    sql_on: ${aiassistedtabletag.oetableid} = ${oetable.oetableid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${tags.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: oeschema {
    type: left_outer
    sql_on: ${oetable.oeschemaid} = ${oeschema.oeschemaid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${oeschema.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }
}

explore: aiassistedtag {
  join: tags {
    type: left_outer
    sql_on: ${aiassistedtag.tagid} = ${tags.parenttagid} ;;
    relationship: many_to_one
  }

  join: oecolumn {
    type: left_outer
    sql_on: ${aiassistedtag.oecolumnid} = ${oecolumn.oecolumnid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${tags.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: oetable {
    type: left_outer
    sql_on: ${oecolumn.oetableid} = ${oetable.oetableid} ;;
    relationship: many_to_one
  }

  join: oeschema {
    type: left_outer
    sql_on: ${oetable.oeschemaid} = ${oeschema.oeschemaid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${oeschema.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }
}

explore: alert {
  join: dataset {
    type: left_outer
    sql_on: ${alert.datasetid} = ${dataset.datasetid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${dataset.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${dataset.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }
}

explore: alertuser {
  join: alert {
    type: left_outer
    sql_on: ${alertuser.alertid} = ${alert.alertid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${alertuser.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: dataset {
    type: left_outer
    sql_on: ${alert.datasetid} = ${dataset.datasetid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${dataset.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }
}

explore: application {}

explore: audit {}

explore: book333_xlsx {}

explore: chart {
  join: dataset {
    type: left_outer
    sql_on: ${chart.datasetid} = ${dataset.datasetid} ;;
    relationship: many_to_one
  }

  join: domain {
    type: left_outer
    sql_on: ${chart.domainid} = ${domain.domainid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${dataset.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${dataset.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }
}

explore: chartchild {
  join: chart {
    type: left_outer
    sql_on: ${chartchild.chartid} = ${chart.parentchartid} ;;
    relationship: many_to_one
  }

  join: dataset {
    type: left_outer
    sql_on: ${chart.datasetid} = ${dataset.datasetid} ;;
    relationship: many_to_one
  }

  join: domain {
    type: left_outer
    sql_on: ${chart.domainid} = ${domain.domainid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${dataset.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${dataset.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }
}

explore: charttag {
  join: chart {
    type: left_outer
    sql_on: ${charttag.chartid} = ${chart.parentchartid} ;;
    relationship: many_to_one
  }

  join: tags {
    type: left_outer
    sql_on: ${charttag.tagid} = ${tags.parenttagid} ;;
    relationship: many_to_one
  }

  join: dataset {
    type: left_outer
    sql_on: ${chart.datasetid} = ${dataset.datasetid} ;;
    relationship: many_to_one
  }

  join: domain {
    type: left_outer
    sql_on: ${chart.domainid} = ${domain.domainid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${dataset.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${dataset.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }
}

explore: chartuserstats {
  join: chart {
    type: left_outer
    sql_on: ${chartuserstats.chartid} = ${chart.parentchartid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${chartuserstats.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: dataset {
    type: left_outer
    sql_on: ${chart.datasetid} = ${dataset.datasetid} ;;
    relationship: many_to_one
  }

  join: domain {
    type: left_outer
    sql_on: ${chart.domainid} = ${domain.domainid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${dataset.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }
}

explore: clickstream {
  join: user {
    type: left_outer
    sql_on: ${clickstream.userid} = ${user.userid} ;;
    relationship: many_to_one
  }
}

explore: columnpattern {
  join: oecolumn {
    type: left_outer
    sql_on: ${columnpattern.oecolumnid} = ${oecolumn.oecolumnid} ;;
    relationship: many_to_one
  }

  join: oetable {
    type: left_outer
    sql_on: ${oecolumn.oetableid} = ${oetable.oetableid} ;;
    relationship: many_to_one
  }

  join: oeschema {
    type: left_outer
    sql_on: ${oetable.oeschemaid} = ${oeschema.oeschemaid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${oeschema.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${connectioninfo.userid} = ${user.userid} ;;
    relationship: many_to_one
  }
}

explore: columnrelation {}

explore: columntag {
  join: tags {
    type: left_outer
    sql_on: ${columntag.tagid} = ${tags.parenttagid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${tags.userid} = ${user.userid} ;;
    relationship: many_to_one
  }
}

explore: comment {
  join: user {
    type: left_outer
    sql_on: ${comment.userid} = ${user.userid} ;;
    relationship: many_to_one
  }
}

explore: commentassociation {
  join: comment {
    type: left_outer
    sql_on: ${commentassociation.commentid} = ${comment.parentcommentid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${comment.userid} = ${user.userid} ;;
    relationship: many_to_one
  }
}

explore: connectioninfo {
  join: user {
    type: left_outer
    sql_on: ${connectioninfo.userid} = ${user.userid} ;;
    relationship: many_to_one
  }
}

explore: connectioninfoadnl {
  join: connectioninfo {
    type: left_outer
    sql_on: ${connectioninfoadnl.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${connectioninfo.userid} = ${user.userid} ;;
    relationship: many_to_one
  }
}

explore: crawlersetting {
  join: connectioninfo {
    type: left_outer
    sql_on: ${crawlersetting.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${connectioninfo.userid} = ${user.userid} ;;
    relationship: many_to_one
  }
}

explore: dashboard {}

explore: dataapp {}

explore: dataappchart {
  join: dataapp {
    type: left_outer
    sql_on: ${dataappchart.dataappid} = ${dataapp.dataappid} ;;
    relationship: many_to_one
  }

  join: chart {
    type: left_outer
    sql_on: ${dataappchart.chartid} = ${chart.parentchartid} ;;
    relationship: many_to_one
  }

  join: dataset {
    type: left_outer
    sql_on: ${chart.datasetid} = ${dataset.datasetid} ;;
    relationship: many_to_one
  }

  join: domain {
    type: left_outer
    sql_on: ${chart.domainid} = ${domain.domainid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${dataset.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${dataset.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }
}

explore: dataidentifier {}

explore: dataset {
  join: user {
    type: left_outer
    sql_on: ${dataset.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${dataset.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }
}

explore: dataset1 {
  join: dataset {
    type: left_outer
    sql_on: ${dataset1.datasetid} = ${dataset.datasetid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${dataset1.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${dataset1.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }
}

explore: dataset2 {
  join: dataset {
    type: left_outer
    sql_on: ${dataset2.datasetid} = ${dataset.datasetid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${dataset2.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${dataset2.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }
}

explore: dataset3 {
  join: dataset {
    type: left_outer
    sql_on: ${dataset3.datasetid} = ${dataset.datasetid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${dataset3.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${dataset3.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }
}

explore: datasetassociation {
  join: dataset {
    type: left_outer
    sql_on: ${datasetassociation.datasetid} = ${dataset.datasetid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${dataset.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${dataset.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }
}

explore: datasetcorrection {
  join: dataset {
    type: left_outer
    sql_on: ${datasetcorrection.datasetid} = ${dataset.datasetid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${dataset.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${dataset.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }
}

explore: datasource {}

explore: datastorytag {
  join: tags {
    type: left_outer
    sql_on: ${datastorytag.tagid} = ${tags.parenttagid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${tags.userid} = ${user.userid} ;;
    relationship: many_to_one
  }
}

explore: dept {}

explore: discovery {
  join: user {
    type: left_outer
    sql_on: ${discovery.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: dataset {
    type: left_outer
    sql_on: ${discovery.datasetid} = ${dataset.datasetid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${dataset.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }
}

explore: docpackage {
  join: docpackageinfo {
    type: left_outer
    sql_on: ${docpackage.docpackageinfoid} = ${docpackageinfo.docpackageinfoid} ;;
    relationship: many_to_one
  }
}

explore: docpackageinfo {}

explore: domain {
  join: connectioninfo {
    type: left_outer
    sql_on: ${domain.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${connectioninfo.userid} = ${user.userid} ;;
    relationship: many_to_one
  }
}

explore: emp {}

explore: exporttableinfo {
  join: connectioninfo {
    type: left_outer
    sql_on: ${exporttableinfo.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${connectioninfo.userid} = ${user.userid} ;;
    relationship: many_to_one
  }
}

explore: file {
  join: filefolder {
    type: left_outer
    sql_on: ${file.filefolderid} = ${filefolder.filefolderid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${file.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${filefolder.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }
}

explore: filefolder {
  join: connectioninfo {
    type: left_outer
    sql_on: ${filefolder.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${connectioninfo.userid} = ${user.userid} ;;
    relationship: many_to_one
  }
}

explore: fileoperation {}

explore: filestructure {}

explore: filestructurefcn {}

explore: filestructurepackage {
  join: filestructure {
    type: left_outer
    sql_on: ${filestructurepackage.filestructureid} = ${filestructure.filestructureid} ;;
    relationship: many_to_one
  }
}

explore: filetableinfo {
  join: file {
    type: left_outer
    sql_on: ${filetableinfo.fileid} = ${file.fileid} ;;
    relationship: many_to_one
  }

  join: oetable {
    type: left_outer
    sql_on: ${filetableinfo.oetableid} = ${oetable.oetableid} ;;
    relationship: many_to_one
  }

  join: dataset {
    type: left_outer
    sql_on: ${filetableinfo.datasetid} = ${dataset.datasetid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${filetableinfo.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: filefolder {
    type: left_outer
    sql_on: ${file.filefolderid} = ${filefolder.filefolderid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${filefolder.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }

  join: oeschema {
    type: left_outer
    sql_on: ${oetable.oeschemaid} = ${oeschema.oeschemaid} ;;
    relationship: many_to_one
  }
}

explore: filetag {
  join: file {
    type: left_outer
    sql_on: ${filetag.fileid} = ${file.fileid} ;;
    relationship: many_to_one
  }

  join: tags {
    type: left_outer
    sql_on: ${filetag.tagid} = ${tags.parenttagid} ;;
    relationship: many_to_one
  }

  join: filefolder {
    type: left_outer
    sql_on: ${file.filefolderid} = ${filefolder.filefolderid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${file.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${filefolder.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }
}

explore: filetransformation {}

explore: filetransformationstep {
  join: filetransformation {
    type: left_outer
    sql_on: ${filetransformationstep.filetransformationid} = ${filetransformation.filetransformationid} ;;
    relationship: many_to_one
  }
}

explore: filetransfunctiondef {}

explore: fileuserstats {
  join: file {
    type: left_outer
    sql_on: ${fileuserstats.fileid} = ${file.fileid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${fileuserstats.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: filefolder {
    type: left_outer
    sql_on: ${file.filefolderid} = ${filefolder.filefolderid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${filefolder.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }
}

explore: folderstats {}

explore: ftpconnectioninfo {}

explore: ftpimportinfo {}

explore: function {}

explore: graph {}

explore: hashtag {
  join: user {
    type: left_outer
    sql_on: ${hashtag.userid} = ${user.userid} ;;
    relationship: many_to_one
  }
}

explore: hive_partition_mtdt {}

explore: hivecolumn1 {}

explore: hivecolumnpartition {
  join: hivepartition {
    type: left_outer
    sql_on: ${hivecolumnpartition.hivepartitionid} = ${hivepartition.hivepartitionid} ;;
    relationship: many_to_one
  }
}

explore: hivecolumntimeline {
  join: hivetabletimeline {
    type: left_outer
    sql_on: ${hivecolumntimeline.hivetabletimelineid} = ${hivetabletimeline.hivetabletimelineid} ;;
    relationship: many_to_one
  }
}

explore: hivepartition {}

explore: hiverelation {}

explore: hivetabletimeline {}

explore: impexcolumnmap {
  join: filetableinfo {
    type: left_outer
    sql_on: ${impexcolumnmap.filetableinfoid} = ${filetableinfo.filetableinfoid} ;;
    relationship: many_to_one
  }

  join: file {
    type: left_outer
    sql_on: ${filetableinfo.fileid} = ${file.fileid} ;;
    relationship: many_to_one
  }

  join: oetable {
    type: left_outer
    sql_on: ${filetableinfo.oetableid} = ${oetable.oetableid} ;;
    relationship: many_to_one
  }

  join: dataset {
    type: left_outer
    sql_on: ${filetableinfo.datasetid} = ${dataset.datasetid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${filetableinfo.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: filefolder {
    type: left_outer
    sql_on: ${file.filefolderid} = ${filefolder.filefolderid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${filefolder.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }

  join: oeschema {
    type: left_outer
    sql_on: ${oetable.oeschemaid} = ${oeschema.oeschemaid} ;;
    relationship: many_to_one
  }
}

explore: impexpinfo {
  join: dataset {
    type: left_outer
    sql_on: ${impexpinfo.datasetid} = ${dataset.datasetid} ;;
    relationship: many_to_one
  }

  join: oetable {
    type: left_outer
    sql_on: ${impexpinfo.oetableid} = ${oetable.oetableid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${dataset.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${dataset.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }

  join: oeschema {
    type: left_outer
    sql_on: ${oetable.oeschemaid} = ${oeschema.oeschemaid} ;;
    relationship: many_to_one
  }
}

explore: include_folders {
  join: connectioninfo {
    type: left_outer
    sql_on: ${include_folders.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${connectioninfo.userid} = ${user.userid} ;;
    relationship: many_to_one
  }
}

explore: job {
  join: user {
    type: left_outer
    sql_on: ${job.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: jobflow {
    type: left_outer
    sql_on: ${job.jobflowid} = ${jobflow.jobflowid} ;;
    relationship: many_to_one
  }

  join: project {
    type: left_outer
    sql_on: ${jobflow.projectid} = ${project.projectid} ;;
    relationship: many_to_one
  }
}

explore: jobflow {
  join: user {
    type: left_outer
    sql_on: ${jobflow.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: project {
    type: left_outer
    sql_on: ${jobflow.projectid} = ${project.projectid} ;;
    relationship: many_to_one
  }
}

explore: jobflow_expert {
  join: user {
    type: left_outer
    sql_on: ${jobflow_expert.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: jobflow {
    type: left_outer
    sql_on: ${jobflow_expert.jobflowid} = ${jobflow.jobflowid} ;;
    relationship: many_to_one
  }

  join: project {
    type: left_outer
    sql_on: ${jobflow.projectid} = ${project.projectid} ;;
    relationship: many_to_one
  }
}

explore: jobflowstep {
  join: jobflow {
    type: left_outer
    sql_on: ${jobflowstep.jobflowid} = ${jobflow.jobflowid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${jobflow.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: project {
    type: left_outer
    sql_on: ${jobflow.projectid} = ${project.projectid} ;;
    relationship: many_to_one
  }
}

explore: jobparm {}

explore: jobstep {
  join: multipredecessor {
    type: left_outer
    sql_on: ${jobstep.multipredecessorid} = ${multipredecessor.multipredecessorid} ;;
    relationship: many_to_one
  }

  join: job {
    type: left_outer
    sql_on: ${jobstep.jobid} = ${job.jobid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${jobstep.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: jobflowstep {
    type: left_outer
    sql_on: ${jobstep.jobflowstepid} = ${jobflowstep.jobflowstepid} ;;
    relationship: many_to_one
  }

  join: jobflow {
    type: left_outer
    sql_on: ${job.jobflowid} = ${jobflow.jobflowid} ;;
    relationship: many_to_one
  }

  join: project {
    type: left_outer
    sql_on: ${jobflow.projectid} = ${project.projectid} ;;
    relationship: many_to_one
  }
}

explore: jobstepmultithread {
  join: jobstep {
    type: left_outer
    sql_on: ${jobstepmultithread.jobstepid} = ${jobstep.jobstepid} ;;
    relationship: many_to_one
  }

  join: multipredecessor {
    type: left_outer
    sql_on: ${jobstep.multipredecessorid} = ${multipredecessor.multipredecessorid} ;;
    relationship: many_to_one
  }

  join: job {
    type: left_outer
    sql_on: ${jobstep.jobid} = ${job.jobid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${jobstep.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: jobflowstep {
    type: left_outer
    sql_on: ${jobstep.jobflowstepid} = ${jobflowstep.jobflowstepid} ;;
    relationship: many_to_one
  }

  join: jobflow {
    type: left_outer
    sql_on: ${job.jobflowid} = ${jobflow.jobflowid} ;;
    relationship: many_to_one
  }

  join: project {
    type: left_outer
    sql_on: ${jobflow.projectid} = ${project.projectid} ;;
    relationship: many_to_one
  }
}

explore: jobstepthreadstatus {
  join: jobstep {
    type: left_outer
    sql_on: ${jobstepthreadstatus.jobstepid} = ${jobstep.jobstepid} ;;
    relationship: many_to_one
  }

  join: multipredecessor {
    type: left_outer
    sql_on: ${jobstep.multipredecessorid} = ${multipredecessor.multipredecessorid} ;;
    relationship: many_to_one
  }

  join: job {
    type: left_outer
    sql_on: ${jobstep.jobid} = ${job.jobid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${jobstep.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: jobflowstep {
    type: left_outer
    sql_on: ${jobstep.jobflowstepid} = ${jobflowstep.jobflowstepid} ;;
    relationship: many_to_one
  }

  join: jobflow {
    type: left_outer
    sql_on: ${job.jobflowid} = ${jobflow.jobflowid} ;;
    relationship: many_to_one
  }

  join: project {
    type: left_outer
    sql_on: ${jobflow.projectid} = ${project.projectid} ;;
    relationship: many_to_one
  }
}

explore: jobstepvar {
  join: jobstep {
    type: left_outer
    sql_on: ${jobstepvar.jobstepid} = ${jobstep.jobstepid} ;;
    relationship: many_to_one
  }

  join: multipredecessor {
    type: left_outer
    sql_on: ${jobstep.multipredecessorid} = ${multipredecessor.multipredecessorid} ;;
    relationship: many_to_one
  }

  join: job {
    type: left_outer
    sql_on: ${jobstep.jobid} = ${job.jobid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${jobstep.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: jobflowstep {
    type: left_outer
    sql_on: ${jobstep.jobflowstepid} = ${jobflowstep.jobflowstepid} ;;
    relationship: many_to_one
  }

  join: jobflow {
    type: left_outer
    sql_on: ${job.jobflowid} = ${jobflow.jobflowid} ;;
    relationship: many_to_one
  }

  join: project {
    type: left_outer
    sql_on: ${jobflow.projectid} = ${project.projectid} ;;
    relationship: many_to_one
  }
}

explore: jobvariable {}

explore: license {}

explore: lineage {
  join: dataset {
    type: left_outer
    sql_on: ${lineage.datasetid} = ${dataset.datasetid} ;;
    relationship: many_to_one
  }

  join: impexpinfo {
    type: left_outer
    sql_on: ${lineage.impexpinfoid} = ${impexpinfo.impexpinfoid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${dataset.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${dataset.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }

  join: oetable {
    type: left_outer
    sql_on: ${impexpinfo.oetableid} = ${oetable.oetableid} ;;
    relationship: many_to_one
  }

  join: oeschema {
    type: left_outer
    sql_on: ${oetable.oeschemaid} = ${oeschema.oeschemaid} ;;
    relationship: many_to_one
  }
}

explore: lineagecolumn {
  join: lineage {
    type: left_outer
    sql_on: ${lineagecolumn.lineageid} = ${lineage.lineageid} ;;
    relationship: many_to_one
  }

  join: dataset {
    type: left_outer
    sql_on: ${lineage.datasetid} = ${dataset.datasetid} ;;
    relationship: many_to_one
  }

  join: impexpinfo {
    type: left_outer
    sql_on: ${lineage.impexpinfoid} = ${impexpinfo.impexpinfoid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${dataset.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${dataset.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }

  join: oetable {
    type: left_outer
    sql_on: ${impexpinfo.oetableid} = ${oetable.oetableid} ;;
    relationship: many_to_one
  }

  join: oeschema {
    type: left_outer
    sql_on: ${oetable.oeschemaid} = ${oeschema.oeschemaid} ;;
    relationship: many_to_one
  }
}

explore: log {
  join: job {
    type: left_outer
    sql_on: ${log.jobid} = ${job.jobid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${job.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: jobflow {
    type: left_outer
    sql_on: ${job.jobflowid} = ${jobflow.jobflowid} ;;
    relationship: many_to_one
  }

  join: project {
    type: left_outer
    sql_on: ${jobflow.projectid} = ${project.projectid} ;;
    relationship: many_to_one
  }
}

explore: message {
  join: comment {
    type: left_outer
    sql_on: ${message.commentid} = ${comment.parentcommentid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${comment.userid} = ${user.userid} ;;
    relationship: many_to_one
  }
}

explore: multipredecessor {
  join: jobstep {
    type: left_outer
    sql_on: ${multipredecessor.jobstepid} = ${jobstep.jobstepid} ;;
    relationship: many_to_one
  }

  join: job {
    type: left_outer
    sql_on: ${jobstep.jobid} = ${job.jobid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${jobstep.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: jobflowstep {
    type: left_outer
    sql_on: ${jobstep.jobflowstepid} = ${jobflowstep.jobflowstepid} ;;
    relationship: many_to_one
  }

  join: jobflow {
    type: left_outer
    sql_on: ${job.jobflowid} = ${jobflow.jobflowid} ;;
    relationship: many_to_one
  }

  join: project {
    type: left_outer
    sql_on: ${jobflow.projectid} = ${project.projectid} ;;
    relationship: many_to_one
  }
}

explore: objectendorsement {
  join: user {
    type: left_outer
    sql_on: ${objectendorsement.userid} = ${user.userid} ;;
    relationship: many_to_one
  }
}

explore: oecolumn {
  join: oetable {
    type: left_outer
    sql_on: ${oecolumn.oetableid} = ${oetable.oetableid} ;;
    relationship: many_to_one
  }

  join: oeschema {
    type: left_outer
    sql_on: ${oetable.oeschemaid} = ${oeschema.oeschemaid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${oeschema.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${connectioninfo.userid} = ${user.userid} ;;
    relationship: many_to_one
  }
}

explore: oecolumntimeline {
  join: oetabletimeline {
    type: left_outer
    sql_on: ${oecolumntimeline.oetabletimelineid} = ${oetabletimeline.oetabletimelineid} ;;
    relationship: many_to_one
  }

  join: oecolumn {
    type: left_outer
    sql_on: ${oecolumntimeline.oecolumnid} = ${oecolumn.oecolumnid} ;;
    relationship: many_to_one
  }

  join: oetable {
    type: left_outer
    sql_on: ${oecolumntimeline.oetableid} = ${oetable.oetableid} ;;
    relationship: many_to_one
  }

  join: oeschema {
    type: left_outer
    sql_on: ${oetable.oeschemaid} = ${oeschema.oeschemaid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${oeschema.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${connectioninfo.userid} = ${user.userid} ;;
    relationship: many_to_one
  }
}

explore: oeobject {
  join: oeschema {
    type: left_outer
    sql_on: ${oeobject.oeschemaid} = ${oeschema.oeschemaid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${oeschema.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${connectioninfo.userid} = ${user.userid} ;;
    relationship: many_to_one
  }
}

explore: oeschema {
  join: connectioninfo {
    type: left_outer
    sql_on: ${oeschema.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${connectioninfo.userid} = ${user.userid} ;;
    relationship: many_to_one
  }
}

explore: oetable {
  join: oeschema {
    type: left_outer
    sql_on: ${oetable.oeschemaid} = ${oeschema.oeschemaid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${oeschema.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${connectioninfo.userid} = ${user.userid} ;;
    relationship: many_to_one
  }
}

explore: oetablechanges {
  join: oetable {
    type: left_outer
    sql_on: ${oetablechanges.oetableid} = ${oetable.oetableid} ;;
    relationship: many_to_one
  }

  join: oeschema {
    type: left_outer
    sql_on: ${oetable.oeschemaid} = ${oeschema.oeschemaid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${oeschema.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${connectioninfo.userid} = ${user.userid} ;;
    relationship: many_to_one
  }
}

explore: oetabletimeline {
  join: oetable {
    type: left_outer
    sql_on: ${oetabletimeline.oetableid} = ${oetable.oetableid} ;;
    relationship: many_to_one
  }

  join: oeschema {
    type: left_outer
    sql_on: ${oetable.oeschemaid} = ${oeschema.oeschemaid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${oeschema.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${connectioninfo.userid} = ${user.userid} ;;
    relationship: many_to_one
  }
}

explore: operation {
  join: user {
    type: left_outer
    sql_on: ${operation.userid} = ${user.userid} ;;
    relationship: many_to_one
  }
}

explore: partition_sample {}

explore: profile {}

explore: project {}

explore: querytag {
  join: dataset {
    type: left_outer
    sql_on: ${querytag.datasetid} = ${dataset.datasetid} ;;
    relationship: many_to_one
  }

  join: tags {
    type: left_outer
    sql_on: ${querytag.tagid} = ${tags.parenttagid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${dataset.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${dataset.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }
}

explore: queryuserstats {
  join: dataset {
    type: left_outer
    sql_on: ${queryuserstats.datasetid} = ${dataset.datasetid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${queryuserstats.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${dataset.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }
}

explore: regextable {
  join: filestructure {
    type: left_outer
    sql_on: ${regextable.filestructureid} = ${filestructure.filestructureid} ;;
    relationship: many_to_one
  }
}

explore: remotetableinfo {
  join: connectioninfo {
    type: left_outer
    sql_on: ${remotetableinfo.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${connectioninfo.userid} = ${user.userid} ;;
    relationship: many_to_one
  }
}

explore: roles {}

explore: s3connectioninfo {}

explore: s3importinfo {}

explore: sampletable {}

explore: schedule {
  join: user {
    type: left_outer
    sql_on: ${schedule.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: jobflow {
    type: left_outer
    sql_on: ${schedule.jobflowid} = ${jobflow.jobflowid} ;;
    relationship: many_to_one
  }

  join: project {
    type: left_outer
    sql_on: ${jobflow.projectid} = ${project.projectid} ;;
    relationship: many_to_one
  }
}

explore: schematag {
  join: oeschema {
    type: left_outer
    sql_on: ${schematag.oeschemaid} = ${oeschema.oeschemaid} ;;
    relationship: many_to_one
  }

  join: tags {
    type: left_outer
    sql_on: ${schematag.tagid} = ${tags.parenttagid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${oeschema.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${connectioninfo.userid} = ${user.userid} ;;
    relationship: many_to_one
  }
}

explore: schemaxref {}

explore: shellprocessor {
  join: user {
    type: left_outer
    sql_on: ${shellprocessor.userid} = ${user.userid} ;;
    relationship: many_to_one
  }
}

explore: stg_oereportext {}

explore: stg_tbl_catalog {}

explore: storyline {
  join: domain {
    type: left_outer
    sql_on: ${storyline.domainid} = ${domain.domainid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${domain.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${connectioninfo.userid} = ${user.userid} ;;
    relationship: many_to_one
  }
}

explore: structureguide {
  join: filestructure {
    type: left_outer
    sql_on: ${structureguide.filestructureid} = ${filestructure.filestructureid} ;;
    relationship: many_to_one
  }
}

explore: stxpackage {}

explore: subscriber {
  join: chart {
    type: left_outer
    sql_on: ${subscriber.chartid} = ${chart.parentchartid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${subscriber.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: dataset {
    type: left_outer
    sql_on: ${chart.datasetid} = ${dataset.datasetid} ;;
    relationship: many_to_one
  }

  join: domain {
    type: left_outer
    sql_on: ${chart.domainid} = ${domain.domainid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${dataset.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }
}

explore: tab_ins {}

explore: table_comment_expert {
  join: user {
    type: left_outer
    sql_on: ${table_comment_expert.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: filefolder {
    type: left_outer
    sql_on: ${table_comment_expert.filefolderid} = ${filefolder.filefolderid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${filefolder.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }
}

explore: tableendorsement {
  join: oetable {
    type: left_outer
    sql_on: ${tableendorsement.oetableid} = ${oetable.oetableid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${tableendorsement.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: oeschema {
    type: left_outer
    sql_on: ${oetable.oeschemaid} = ${oeschema.oeschemaid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${oeschema.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }
}

explore: tablemessage {
  join: message {
    type: left_outer
    sql_on: ${tablemessage.messageid} = ${message.messageid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${tablemessage.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: comment {
    type: left_outer
    sql_on: ${tablemessage.commentid} = ${comment.parentcommentid} ;;
    relationship: many_to_one
  }
}

explore: tablerelation {}

explore: tabletag {
  join: oetable {
    type: left_outer
    sql_on: ${tabletag.oetableid} = ${oetable.oetableid} ;;
    relationship: many_to_one
  }

  join: tags {
    type: left_outer
    sql_on: ${tabletag.tagid} = ${tags.parenttagid} ;;
    relationship: many_to_one
  }

  join: oeschema {
    type: left_outer
    sql_on: ${oetable.oeschemaid} = ${oeschema.oeschemaid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${oeschema.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${connectioninfo.userid} = ${user.userid} ;;
    relationship: many_to_one
  }
}

explore: tableuserstats {
  join: oetable {
    type: left_outer
    sql_on: ${tableuserstats.oetableid} = ${oetable.oetableid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${tableuserstats.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: oeschema {
    type: left_outer
    sql_on: ${oetable.oeschemaid} = ${oeschema.oeschemaid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${oeschema.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }
}

explore: tags {
  join: user {
    type: left_outer
    sql_on: ${tags.userid} = ${user.userid} ;;
    relationship: many_to_one
  }
}

explore: user {}

explore: user_role {
  join: user {
    type: left_outer
    sql_on: ${user_role.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: roles {
    type: left_outer
    sql_on: ${user_role.roleid} = ${roles.roleid} ;;
    relationship: many_to_one
  }
}

explore: userdashboard {}

explore: userfavorite {
  join: user {
    type: left_outer
    sql_on: ${userfavorite.userid} = ${user.userid} ;;
    relationship: many_to_one
  }
}

explore: usersearchhistory {
  join: user {
    type: left_outer
    sql_on: ${usersearchhistory.userid} = ${user.userid} ;;
    relationship: many_to_one
  }
}

explore: variableassociation {
  join: dataset {
    type: left_outer
    sql_on: ${variableassociation.datasetid} = ${dataset.datasetid} ;;
    relationship: many_to_one
  }

  join: user {
    type: left_outer
    sql_on: ${dataset.userid} = ${user.userid} ;;
    relationship: many_to_one
  }

  join: connectioninfo {
    type: left_outer
    sql_on: ${dataset.connectioninfoid} = ${connectioninfo.connectioninfoid} ;;
    relationship: many_to_one
  }
}

explore: version {}

explore: wiki {}
