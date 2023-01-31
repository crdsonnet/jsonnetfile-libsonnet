package main

import (
	"encoding/json"
	"fmt"

	"github.com/invopop/jsonschema"
	"github.com/jsonnet-bundler/jsonnet-bundler/spec/v1/deps"
)

type jsonnetFile struct {
	Version       uint              `json:"version"`
	Dependencies  []deps.Dependency `json:"dependencies"`
	LegacyImports bool              `json:"legacyImports"`
}

func main() {
	s := jsonschema.Reflect(&jsonnetFile{})
	data, err := json.MarshalIndent(s, "", "  ")
	if err != nil {
		panic(err.Error())
	}
	fmt.Printf(string(data))
}
