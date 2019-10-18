datagroup: fivetran_datagroup {
  sql_trigger: SELECT max(date_trunc('minute', done)) FROM jira_for_looker.fivetran_audit ;;
  max_cache_age: "24 hours"
}

persist_with: fivetran_datagroup

explore: sprint_config {
  extends: [sprint_core]
  extension: required
}

explore: version_config {
  extends: [version_core]
  extension: required
}

explore: issue_config {
  extends: [issue_core]
  extension: required
}

explore: project_config {
  extends: [project_core]
  extension: required
}
