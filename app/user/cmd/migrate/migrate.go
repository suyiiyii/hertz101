package main

import (
	"github.com/suyiiyii/hertz101/app/user/biz/dal/mysql"
	"github.com/suyiiyii/hertz101/app/user/biz/model"
)

func main() {
	err := mysql.DB.AutoMigrate(&model.User{})
	if err != nil {
		panic(err)
	}
}
