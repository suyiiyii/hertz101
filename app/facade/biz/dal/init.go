package dal

import (
	"github.com/suyiiyii/hertz101/app/facade/biz/dal/mysql"
	"github.com/suyiiyii/hertz101/app/facade/biz/dal/redis"
)

func Init() {
	redis.Init()
	mysql.Init()
}
