module github.com/suyiiyii/hertz101/app/user

go 1.23.4

replace github.com/apache/thrift => github.com/apache/thrift v0.13.0

require (
	github.com/cloudwego/kitex v0.12.1
	github.com/kitex-contrib/obs-opentelemetry v0.2.9
	github.com/kitex-contrib/obs-opentelemetry/logging/logrus v0.0.0-20241120035129-55da83caab1b
	github.com/kitex-contrib/registry-consul v0.0.0-20240508100819-2905e45155c1
	github.com/kr/pretty v0.3.1
	github.com/redis/go-redis/v9 v9.7.0
	github.com/spf13/viper v1.19.0
	github.com/suyiiyii/hertz101/common v0.0.0-20250122045641-275221adbdb7
	github.com/suyiiyii/hertz101/rpc_gen v0.0.0-20250120154629-56839f5ded0a
	go.uber.org/zap v1.27.0
	gopkg.in/natefinch/lumberjack.v2 v2.2.1
	gopkg.in/validator.v2 v2.0.1
	gopkg.in/yaml.v2 v2.4.0
	gorm.io/driver/mysql v1.5.7
	gorm.io/gen v0.3.26
	gorm.io/gorm v1.25.12
	gorm.io/plugin/dbresolver v1.5.3
)

require (
	cloud.google.com/go v0.118.0 // indirect
	cloud.google.com/go/auth v0.13.0 // indirect
	cloud.google.com/go/auth/oauth2adapt v0.2.6 // indirect
	cloud.google.com/go/compute/metadata v0.6.0 // indirect
	cloud.google.com/go/firestore v1.18.0 // indirect
	cloud.google.com/go/longrunning v0.6.4 // indirect
	filippo.io/edwards25519 v1.1.0 // indirect
	github.com/armon/go-metrics v0.4.1 // indirect
	github.com/bufbuild/protocompile v0.14.1 // indirect
	github.com/bytedance/gopkg v0.1.1 // indirect
	github.com/bytedance/sonic v1.12.7 // indirect
	github.com/bytedance/sonic/loader v0.2.3 // indirect
	github.com/cenkalti/backoff/v4 v4.3.0 // indirect
	github.com/cespare/xxhash/v2 v2.3.0 // indirect
	github.com/cloudwego/base64x v0.1.5 // indirect
	github.com/cloudwego/configmanager v0.2.2 // indirect
	github.com/cloudwego/dynamicgo v0.5.0 // indirect
	github.com/cloudwego/fastpb v0.0.5 // indirect
	github.com/cloudwego/frugal v0.2.4 // indirect
	github.com/cloudwego/gopkg v0.1.3 // indirect
	github.com/cloudwego/iasm v0.2.0 // indirect
	github.com/cloudwego/localsession v0.1.2 // indirect
	github.com/cloudwego/netpoll v0.6.5 // indirect
	github.com/cloudwego/runtimex v0.1.1 // indirect
	github.com/cloudwego/thriftgo v0.3.18 // indirect
	github.com/coreos/go-semver v0.3.0 // indirect
	github.com/coreos/go-systemd/v22 v22.3.2 // indirect
	github.com/davecgh/go-spew v1.1.2-0.20180830191138-d8f796af33cc // indirect
	github.com/dgryski/go-rendezvous v0.0.0-20200823014737-9f7001d12a5f // indirect
	github.com/fatih/color v1.14.1 // indirect
	github.com/fatih/structtag v1.2.0 // indirect
	github.com/felixge/httpsnoop v1.0.4 // indirect
	github.com/fsnotify/fsnotify v1.7.0 // indirect
	github.com/go-logr/logr v1.4.2 // indirect
	github.com/go-logr/stdr v1.2.2 // indirect
	github.com/go-sql-driver/mysql v1.8.1 // indirect
	github.com/gogo/protobuf v1.3.2 // indirect
	github.com/golang/protobuf v1.5.4 // indirect
	github.com/google/pprof v0.0.0-20250120214715-4e5bb2051dab // indirect
	github.com/google/s2a-go v0.1.8 // indirect
	github.com/google/uuid v1.6.0 // indirect
	github.com/googleapis/enterprise-certificate-proxy v0.3.4 // indirect
	github.com/googleapis/gax-go/v2 v2.14.0 // indirect
	github.com/grpc-ecosystem/grpc-gateway/v2 v2.25.1 // indirect
	github.com/hashicorp/consul/api v1.28.2 // indirect
	github.com/hashicorp/errwrap v1.1.0 // indirect
	github.com/hashicorp/go-cleanhttp v0.5.2 // indirect
	github.com/hashicorp/go-hclog v1.5.0 // indirect
	github.com/hashicorp/go-immutable-radix v1.3.1 // indirect
	github.com/hashicorp/go-multierror v1.1.1 // indirect
	github.com/hashicorp/go-rootcerts v1.0.2 // indirect
	github.com/hashicorp/golang-lru v0.5.4 // indirect
	github.com/hashicorp/hcl v1.0.0 // indirect
	github.com/hashicorp/serf v0.10.1 // indirect
	github.com/iancoleman/strcase v0.3.0 // indirect
	github.com/jhump/protoreflect v1.17.0 // indirect
	github.com/jinzhu/inflection v1.0.0 // indirect
	github.com/jinzhu/now v1.1.5 // indirect
	github.com/json-iterator/go v1.1.12 // indirect
	github.com/klauspost/compress v1.17.2 // indirect
	github.com/klauspost/cpuid/v2 v2.2.9 // indirect
	github.com/kr/text v0.2.0 // indirect
	github.com/magiconair/properties v1.8.7 // indirect
	github.com/mattn/go-colorable v0.1.13 // indirect
	github.com/mattn/go-isatty v0.0.17 // indirect
	github.com/mitchellh/go-homedir v1.1.0 // indirect
	github.com/mitchellh/mapstructure v1.5.0 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.2 // indirect
	github.com/nats-io/nats.go v1.34.0 // indirect
	github.com/nats-io/nkeys v0.4.7 // indirect
	github.com/nats-io/nuid v1.0.1 // indirect
	github.com/pelletier/go-toml/v2 v2.2.2 // indirect
	github.com/pkg/errors v0.9.1 // indirect
	github.com/pmezard/go-difflib v1.0.1-0.20181226105442-5d4384ee4fb2 // indirect
	github.com/rogpeppe/go-internal v1.13.1 // indirect
	github.com/sagikazarmark/crypt v0.19.0 // indirect
	github.com/sagikazarmark/locafero v0.4.0 // indirect
	github.com/sagikazarmark/slog-shim v0.1.0 // indirect
	github.com/sirupsen/logrus v1.9.2 // indirect
	github.com/sourcegraph/conc v0.3.0 // indirect
	github.com/spf13/afero v1.11.0 // indirect
	github.com/spf13/cast v1.6.0 // indirect
	github.com/spf13/pflag v1.0.5 // indirect
	github.com/stretchr/testify v1.10.0 // indirect
	github.com/subosito/gotenv v1.6.0 // indirect
	github.com/tidwall/gjson v1.18.0 // indirect
	github.com/tidwall/match v1.1.1 // indirect
	github.com/tidwall/pretty v1.2.1 // indirect
	github.com/twitchyliquid64/golang-asm v0.15.1 // indirect
	go.etcd.io/etcd/api/v3 v3.5.12 // indirect
	go.etcd.io/etcd/client/pkg/v3 v3.5.12 // indirect
	go.etcd.io/etcd/client/v2 v2.305.12 // indirect
	go.etcd.io/etcd/client/v3 v3.5.12 // indirect
	go.opentelemetry.io/auto/sdk v1.1.0 // indirect
	go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc v0.54.0 // indirect
	go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp v0.54.0 // indirect
	go.opentelemetry.io/contrib/instrumentation/runtime v0.45.0 // indirect
	go.opentelemetry.io/contrib/propagators/b3 v1.20.0 // indirect
	go.opentelemetry.io/contrib/propagators/ot v1.25.0 // indirect
	go.opentelemetry.io/otel v1.34.0 // indirect
	go.opentelemetry.io/otel/exporters/otlp/otlpmetric v0.42.0 // indirect
	go.opentelemetry.io/otel/exporters/otlp/otlpmetric/otlpmetricgrpc v0.42.0 // indirect
	go.opentelemetry.io/otel/exporters/otlp/otlptrace v1.34.0 // indirect
	go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracegrpc v1.34.0 // indirect
	go.opentelemetry.io/otel/metric v1.34.0 // indirect
	go.opentelemetry.io/otel/sdk v1.34.0 // indirect
	go.opentelemetry.io/otel/sdk/metric v1.31.0 // indirect
	go.opentelemetry.io/otel/trace v1.34.0 // indirect
	go.opentelemetry.io/proto/otlp v1.5.0 // indirect
	go.uber.org/multierr v1.11.0 // indirect
	golang.org/x/arch v0.13.0 // indirect
	golang.org/x/crypto v0.32.0 // indirect
	golang.org/x/exp v0.0.0-20230905200255-921286631fa9 // indirect
	golang.org/x/mod v0.22.0 // indirect
	golang.org/x/net v0.34.0 // indirect
	golang.org/x/oauth2 v0.24.0 // indirect
	golang.org/x/sync v0.10.0 // indirect
	golang.org/x/sys v0.29.0 // indirect
	golang.org/x/text v0.21.0 // indirect
	golang.org/x/time v0.8.0 // indirect
	golang.org/x/tools v0.29.0 // indirect
	google.golang.org/api v0.214.0 // indirect
	google.golang.org/genproto v0.0.0-20250115164207-1a7da9e5054f // indirect
	google.golang.org/genproto/googleapis/api v0.0.0-20250115164207-1a7da9e5054f // indirect
	google.golang.org/genproto/googleapis/rpc v0.0.0-20250115164207-1a7da9e5054f // indirect
	google.golang.org/grpc v1.69.4 // indirect
	google.golang.org/protobuf v1.36.3 // indirect
	gopkg.in/ini.v1 v1.67.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
	gorm.io/datatypes v1.2.5 // indirect
	gorm.io/hints v1.1.2 // indirect
)
