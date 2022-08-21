package main

import "github.com/oxdz/comichub/serve"

func main() {
	router := serve.NewRouter()
	router.Run()
}
