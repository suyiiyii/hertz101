package dal

import (
	"github.com/suyiiyii/hertz101/app/user/biz/dal/mysql"
)

func Init() {
	//redis.Init()
	mysql.Init()
}
