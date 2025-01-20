package service

import (
	"context"
	"github.com/cloudwego/kitex/client"
	consul "github.com/kitex-contrib/registry-consul"
	auth "github.com/suyiiyii/hertz101/app/auth/kitex_gen/auth"
	user1 "github.com/suyiiyii/hertz101/rpc_gen/kitex_gen/user"
	"github.com/suyiiyii/hertz101/rpc_gen/rpc/user"
)

type VerifyTokenByRPCService struct {
	ctx context.Context
} // NewVerifyTokenByRPCService new VerifyTokenByRPCService
func NewVerifyTokenByRPCService(ctx context.Context) *VerifyTokenByRPCService {
	return &VerifyTokenByRPCService{ctx: ctx}
}

// Run create note info
func (s *VerifyTokenByRPCService) Run(req *auth.VerifyTokenReq) (resp *auth.VerifyResp, err error) {
	// Finish your business logic.
	r, err := consul.NewConsulResolver("10.21.22.53:8500")
	rpcClient, err := user.NewRPCClient("user", client.WithResolver(r))
	if err != nil {
		return nil, err
	}
	loginResp, err := rpcClient.Login(s.ctx, &user1.LoginReq{
		Email:    "11",
		Password: "22",
	})
	if err != nil {
		return nil, err
	}

	return
}
