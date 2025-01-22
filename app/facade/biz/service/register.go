package service

import (
	"context"
	"fmt"

	"github.com/cloudwego/hertz/pkg/app"
	"github.com/cloudwego/kitex/client"
	consul "github.com/kitex-contrib/registry-consul"
	facade "github.com/suyiiyii/hertz101/app/facade/hertz_gen/facade"
	user1 "github.com/suyiiyii/hertz101/rpc_gen/kitex_gen/user"
	"github.com/suyiiyii/hertz101/rpc_gen/rpc/user"
)

type RegisterService struct {
	RequestContext *app.RequestContext
	Context        context.Context
}

func NewRegisterService(Context context.Context, RequestContext *app.RequestContext) *RegisterService {
	return &RegisterService{RequestContext: RequestContext, Context: Context}
}

// curl -X POST 10.42.0.106:8080/register
// 使用 POST 请求，即可看到效果
// 使用了 rpc 调用，并且使用 hertz 框架暴露出 http 接口

func (h *RegisterService) Run(req *facade.RegisterReq) (resp *facade.RegisterResp, err error) {
	//defer func() {
	// hlog.CtxInfof(h.Context, "req = %+v", req)
	// hlog.CtxInfof(h.Context, "resp = %+v", resp)
	//}()
	r, err := consul.NewConsulResolver("consul:8500")
	if err != nil {
		return nil, err
	}
	rpcClient, err := user.NewRPCClient("user", client.WithResolver(r))
	if err != nil {
		return nil, err
	}
	loginResp, err := rpcClient.Login(h.Context, &user1.LoginReq{
		Email:    req.Email,
		Password: req.Password,
	})
	if err != nil {
		return nil, err
	}
	fmt.Println(loginResp)

	resp = &facade.RegisterResp{
		UserId: loginResp.UserId,
	}
	return
}
