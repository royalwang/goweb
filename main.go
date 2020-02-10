package main

import (
	"github.com/kataras/iris"
	"iissy.com/src/routes"
	"iissy.com/src/utils"
)

func main() {
	app := iris.New()
	app.StaticServe("./public", "/")
	tmpl := iris.HTML("./views", ".html")
	tmpl.Layout("shared/layout.html")
	tmpl.Reload(true)
	tmpl.AddFunc("daysString", utils.DaysString)
	tmpl.AddFunc("pageChanging", utils.PageChanging)
	app.RegisterView(tmpl)

	routes.InitRoutes(app)

	app.Run(iris.Addr(":8080"))
}

