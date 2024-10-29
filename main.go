package main

import (
	"fmt"
	"log"

	"github.com/LFroesch/Gator/internal/config"
)

func main() {
	cfg, err := config.Read()
	if err != nil {
		log.Fatal("Failed to read config:", err)
	}
	err = cfg.SetUser("Lucas")
	if err != nil {
		log.Fatal("Failed to set user:", err)
	}

	fmt.Println(cfg)
}
