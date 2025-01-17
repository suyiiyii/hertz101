package main

import (
	"github.com/suyiiyii/hertz101/app/user/biz/dal/mysql"
	"gorm.io/gen"
)

func main() {
	db := mysql.DB

	g := gen.NewGenerator(gen.Config{
		OutPath: "biz/dal/query",
		Mode:    gen.WithoutContext | gen.WithDefaultQuery | gen.WithDefaultQuery,
	})

	g.UseDB(db)

	g.ApplyBasic(g.GenerateModel("users"))
}
