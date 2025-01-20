package service

import (
	"context"
	"errors"
	"github.com/suyiiyii/hertz101/app/user/biz/dal/query"
	user "github.com/suyiiyii/hertz101/rpc_gen/kitex_gen/user"
)

type RegisterService struct {
	ctx context.Context
} // NewRegisterService new RegisterService
func NewRegisterService(ctx context.Context) *RegisterService {
	return &RegisterService{ctx: ctx}
}

// Run create note info
func (s *RegisterService) Run(req *user.RegisterReq) (resp *user.RegisterResp, err error) {
	// Finish your business logic.
	if req.Password == "" || req.Email == "" {
		return nil, errors.New("password or email is empty")
	}
	query.Q.User

	return
}
