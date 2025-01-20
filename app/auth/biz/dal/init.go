package dal

import (
	"github.com/suyiiyii/hertz101/app/auth/biz/dal/mysql"
)

func Init() {
	//redis.Init()
	mysql.Init()
}
