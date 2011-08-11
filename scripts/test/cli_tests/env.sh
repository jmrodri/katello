ENV="tstenv_$RAND"
ENV2="tstenv2_$RAND"
test "environment create" environment create --org="$FIRST_ORG" --name="$ENV" --prior="Locker"
test "environment update" environment update --org="$FIRST_ORG" --name="$ENV" --new_name="$ENV2"
test "environment list" environment list --org="$FIRST_ORG"
test "environment info" environment info --org="$FIRST_ORG" --name="$ENV2"
test "environment delete" environment delete --org="$FIRST_ORG" --name="$ENV2"
