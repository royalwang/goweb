package controller

import (
	"github.com/kataras/iris"
	"iissy.com/src/access"
	"log"
)

// Index 首页
func Index(ctx iris.Context) {
	result, err := access.Index()
	if err != nil {
		log.Fatal(err)
	}
	ctx.ViewData("title", "Home page")
	ctx.ViewData("body", result)
	ctx.View("index.html")
}