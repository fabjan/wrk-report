PROG=wrk-report

$(PROG): *.go hdrhistogram.go
	go build

hdrhistogram.go: hdrhistogram.template
	go generate

install: $(PROG)
	go install
