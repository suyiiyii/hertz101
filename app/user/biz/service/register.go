package service

import (
	"context"
	user "github.com/suyiiyii/hertz101/rpc_gen/kitex_gen/user"
)

type RegisterService struct {
	ctx context.Context
} // NewRegisterService new RegisterService
func NewRegisterService(ctx context.Context) *RegisterService {
	return &RegisterService{ctx: ctx}
}

// Run create note info
func (s *RegisterService) Run(req *user.RegisterResp) (resp *user.RegisterResp, err error) {
	// Finish your business logic.

	return
}
