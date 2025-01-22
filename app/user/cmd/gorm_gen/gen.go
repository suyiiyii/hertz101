package main

import (
	"github.com/suyiiyii/hertz101/app/user/biz/model"
	"gorm.io/gen"
)

func main() {
	//mysql.Init()

	//db := mysql.DB

	g := gen.NewGenerator(gen.Config{
		OutPath: "biz/dal/query",
		Mode:    gen.WithoutContext | gen.WithDefaultQuery | gen.WithQueryInterface,
	})

	//g.UseDB(db)

	//g.ApplyBasic(g.GenerateModel("users"))
	g.ApplyInterface(func(model.Querier) {}, model.User{})

	g.Execute()
}
