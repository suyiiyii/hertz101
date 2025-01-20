export ROOT_MOD=github.com/suyiiyii/hertz101

.PHONY: gen-user
gen-user:
	@cd app/user && cwgo server --type RPC  --service user --module  ${ROOT_MOD}/app/user  --pass "-use  ${ROOT_MOD}/rpc_gen/kitex_gen" -I ../../idl  --idl ../../idl/user.proto
	@cd rpc_gen && cwgo client --type RPC  --service user --module  ${ROOT_MOD}/rpc_gen --I ../idl --idl ../idl/user.proto


.PHONY: gen-auth
gen-auth:
	@cd app/auth && cwgo server --type RPC  --service auth --module  ${ROOT_MOD}/app/auth  --pass "-use  ${ROOT_MOD}/rpc_gen/kitex_gen" -I ../../idl  --idl ../../idl/auth.proto
	@cd rpc_gen && cwgo client --type RPC  --service auth --module  ${ROOT_MOD}/rpc_gen --I ../idl --idl ../idl/auth.proto