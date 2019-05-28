load 'lib'

function setup() {
:
}

function teardown() {
:
}

@test "check if terraform modules are properly pinned" {
  skip_unless_terraform
  run bash -c "cat *.tf | json2hcl -reverse | jq -r '..|.source?//empty' | sort -u | sed 's/^.*?ref=//' | grep -Ev '^(tags/[0-9]+\\.[0-9]+.*|)$$'"
  log "$output"
  [ $status -ne 0 ]
}