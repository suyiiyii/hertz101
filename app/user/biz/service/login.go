package service

import (
	"context"
	user "github.com/suyiiyii/hertz101/rpc_gen/kitex_gen/user"
)

type LoginService struct {
	ctx context.Context
} // NewLoginService new LoginService
func NewLoginService(ctx context.Context) *LoginService {
	return &LoginService{ctx: ctx}
}

// Run create note info
func (s *LoginService) Run(req *user.LoginReq) (resp *user.LoginResp, err error) {
	// Finish your business logic.

	resp = &user.LoginResp{UserId: int32(req.Password[0])}
	return
}
