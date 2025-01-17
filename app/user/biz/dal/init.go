package dal

import (
	"github.com/suyiiyii/hertz101/app/user/biz/dal/mysql"
	"github.com/suyiiyii/hertz101/app/user/biz/dal/redis"
)

func Init() {
	redis.Init()
	mysql.Init()
}
