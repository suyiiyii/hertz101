export ROOT_MOD=github.com/suyiiyii/hertz101

.PHONY: gen-user
gen-user:
	@cd app/user && cwgo server --type RPC  --server_name user --module  ${ROOT_MOD}/app/user  --pass "-use  ${ROOT_MOD}/rpc_gen/kitex_gen" -I ../../idl  --idl ../../idl/user.proto
	@cd rpc_gen && cwgo client --type RPC  --server_name user --module  ${ROOT_MOD}/rpc_gen --I ../idl --idl ../idl/user.proto


.PHONY: gen-auth
gen-auth:
	@cd app/auth && cwgo server --type RPC  --server_name auth --module  ${ROOT_MOD}/app/auth  --pass "-use  ${ROOT_MOD}/rpc_gen/kitex_gen" -I ../../idl  --idl ../../idl/auth.proto
	@cd rpc_gen && cwgo client --type RPC  --server_name auth --module  ${ROOT_MOD}/rpc_gen --I ../idl --idl ../idl/auth.proto

.PHONY: gen-facade
gen-facade:
	@cd app/facade && cwgo server --type HTTP  --server_name facade --module ${ROOT_MOD}/app/facade -I ../../idl  --idl ../../idl/facade/facade.proto
