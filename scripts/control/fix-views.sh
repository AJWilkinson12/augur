#!/bin/sh
vacuumdb -h localhost -p 5432 -U augur -j 4 -z -v augur; 
psql -U augur -h localhost -p 5432 -d augur -c 'REFRESH MATERIALIZED VIEW augur_data.api_get_all_repos_issues with data;'
psql -U augur -h localhost -p 5432 -d augur -c 'REFRESH MATERIALIZED VIEW augur_data.explorer_commits_and_committers_daily_count with data;'
psql -U augur -h localhost -p 5432 -d augur -c 'REFRESH MATERIALIZED VIEW augur_data.api_get_all_repo_prs with data;'
psql -U augur -h localhost -p 5432 -d augur -c 'REFRESH MATERIALIZED VIEW augur_data.api_get_all_repos_commits with data;'
psql -U augur -h localhost -p 5432 -d augur -c 'REFRESH MATERIALIZED VIEW augur_data.augur_new_contributors with data;'
psql -U augur -h localhost -p 5432 -d augur -c 'REFRESH MATERIALIZED VIEW augur_data.explorer_contributor_actions with data;'
psql -U augur -h localhost -p 5432 -d augur -c 'REFRESH MATERIALIZED VIEW augur_data.explorer_new_contributors with data;'
psql -U augur -h localhost -p 5432 -d augur -c 'REFRESH MATERIALIZED VIEW augur_data.explorer_entry_list with data;'
psql -U augur -h localhost -p 5432 -d augur -c 'REFRESH MATERIALIZED VIEW augur_data.explorer_contributor_metrics with data; '
psql -U augur -h localhost -p 5432 -d augur -c 'REFRESH MATERIALIZED VIEW augur_data.explorer_issue_assignments with data;' 
psql -U augur -h localhost -p 5432 -d augur -c 'REFRESH MATERIALIZED VIEW augur_data.explorer_pr_assignments with data;' 
psql -U augur -h localhost -p 5432 -d augur -c 'REFRESH MATERIALIZED VIEW augur_data.explorer_repo_languages with data; '
psql -U augur -h localhost -p 5432 -d augur -c 'REFRESH MATERIALIZED VIEW augur_data.explorer_user_repos with data;'
psql -U augur -h localhost -p 5432 -d augur -c 'REFRESH MATERIALIZED VIEW augur_data.explorer_pr_response_times with data;'
psql -U augur -h localhost -p 5432 -d augur -c 'REFRESH MATERIALIZED VIEW concurrently augur_data.explorer_contributor_recent_actions with data;'
psql -U augur -h localhost -p 5432 -d augur -c 'REFRESH MATERIALIZED VIEW concurrently augur_data.explorer_pr_response with data;'
 

