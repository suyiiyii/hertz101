package facade

import (
	"context"
	facade "github.com/suyiiyii/hertz101/rpc_gen/kitex_gen/facade"
	"github.com/cloudwego/kitex/client/callopt"
	"github.com/cloudwego/kitex/pkg/klog"
)

func Login(ctx context.Context, req *facade.LoginReq, callOptions ...callopt.Option) (resp *facade.LoginResp, err error) {
	resp, err = defaultClient.Login(ctx, req, callOptions...)
	if err != nil {
		klog.CtxErrorf(ctx, "Login call failed,err =%+v", err)
		return nil, err
	}
	return resp, nil
}
