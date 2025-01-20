package facade

import (
	"context"
	facade "github.com/suyiiyii/hertz101/rpc_gen/kitex_gen/facade"

	"github.com/suyiiyii/hertz101/rpc_gen/kitex_gen/facade/frontendservice"
	"github.com/cloudwego/kitex/client"
	"github.com/cloudwego/kitex/client/callopt"
)

type RPCClient interface {
	KitexClient() frontendservice.Client
	Service() string
	Login(ctx context.Context, Req *facade.LoginReq, callOptions ...callopt.Option) (r *facade.LoginResp, err error)
}

func NewRPCClient(dstService string, opts ...client.Option) (RPCClient, error) {
	kitexClient, err := frontendservice.NewClient(dstService, opts...)
	if err != nil {
		return nil, err
	}
	cli := &clientImpl{
		service:     dstService,
		kitexClient: kitexClient,
	}

	return cli, nil
}

type clientImpl struct {
	service     string
	kitexClient frontendservice.Client
}

func (c *clientImpl) Service() string {
	return c.service
}

func (c *clientImpl) KitexClient() frontendservice.Client {
	return c.kitexClient
}

func (c *clientImpl) Login(ctx context.Context, Req *facade.LoginReq, callOptions ...callopt.Option) (r *facade.LoginResp, err error) {
	return c.kitexClient.Login(ctx, Req, callOptions...)
}
