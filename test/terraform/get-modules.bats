load 'lib'

function setup() {
  clean
}

function teardown() {
  clean
}

@test "check if terraform modules are valid" {
  skip_unless_terraform
  run terraform init -get -backend=false -input=false
}