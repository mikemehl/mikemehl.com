alias w := watch
alias s := serve
alias b := build

watch:
  fd -e go -e templ | entr -cr just serve

serve: build
  go run .

build:
  go generate
  go build
