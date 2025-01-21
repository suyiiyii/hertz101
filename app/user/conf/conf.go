package conf

import (
	_ "embed"
	"fmt"
	"github.com/spf13/viper"
	"os"
	"sync"

	"github.com/cloudwego/kitex/pkg/klog"
	"github.com/kr/pretty"
	_ "github.com/spf13/viper"
	_ "github.com/spf13/viper/remote"
	"gopkg.in/validator.v2"
	"gopkg.in/yaml.v2"
)

var (
	conf *Config
	once sync.Once
)

type Config struct {
	Env      string
	Kitex    Kitex    `yaml:"kitex"`
	MySQL    MySQL    `yaml:"mysql"`
	Redis    Redis    `yaml:"redis"`
	Registry Registry `yaml:"registry"`
}

type MySQL struct {
	DSN string `yaml:"dsn"`
}

type Redis struct {
	Address  string `yaml:"address"`
	Username string `yaml:"username"`
	Password string `yaml:"password"`
	DB       int    `yaml:"db"`
}

type Kitex struct {
	Service       string `yaml:"service"`
	Address       string `yaml:"address"`
	LogLevel      string `yaml:"log_level"`
	LogFileName   string `yaml:"log_file_name"`
	LogMaxSize    int    `yaml:"log_max_size"`
	LogMaxBackups int    `yaml:"log_max_backups"`
	LogMaxAge     int    `yaml:"log_max_age"`
}

type Registry struct {
	RegistryAddress []string `yaml:"registry_address"`
	Username        string   `yaml:"username"`
	Password        string   `yaml:"password"`
}

// GetConf gets configuration instance
func GetConf() *Config {
	once.Do(initConf)
	return conf
}

//go:embed dev/conf.yaml
var configFile []byte

func initConf() {
	//prefix := "conf"
	//confFileRelPath := filepath.Join(prefix, filepath.Join(GetEnv(), "conf.yaml"))
	//content, err := ioutil.ReadFile(confFileRelPath)
	//if err != nil {
	//	panic(err)
	//}
	conf = new(Config)
	err := yaml.Unmarshal(configFile, conf)

	// viper 获取远程配置测试
	err = viper.AddRemoteProvider("consul", conf.Registry.RegistryAddress[0], "USER")
	if err != nil {
		return
	}
	viper.SetConfigType("yaml")
	err = viper.ReadRemoteConfig()
	if err != nil {
		return
	}
	fmt.Println(conf.Registry.RegistryAddress[0])
	fmt.Println(viper.GetString("MYSQL_DSN"))

	conf.MySQL.DSN = viper.GetString("MYSQL_DSN")

	if err != nil {
		klog.Error("parse yaml error - %v", err)
		panic(err)
	}
	if err := validator.Validate(conf); err != nil {
		klog.Error("validate config error - %v", err)
		panic(err)
	}
	conf.Env = GetEnv()
	pretty.Printf("%+v\n", conf)
}

func GetEnv() string {
	e := os.Getenv("GO_ENV")
	if len(e) == 0 {
		return "test"
	}
	return e
}

func LogLevel() klog.Level {
	level := GetConf().Kitex.LogLevel
	switch level {
	case "trace":
		return klog.LevelTrace
	case "debug":
		return klog.LevelDebug
	case "info":
		return klog.LevelInfo
	case "notice":
		return klog.LevelNotice
	case "warn":
		return klog.LevelWarn
	case "error":
		return klog.LevelError
	case "fatal":
		return klog.LevelFatal
	default:
		return klog.LevelInfo
	}
}
