package model

import (
	"gorm.io/gen"
	"gorm.io/gorm"
)

type User struct {
	gorm.Model
	Email          string `gorm:"uniqueIndex;type:varchar(255) not null"`
	PasswordHashed string `gorm:"type:varchar(255) not null"`
}

type Querier interface {
	// GetByEmail get user by email
	//
	// SELECT * FROM @@table WHERE email = @email
	GetByEmail(email string) (*gen.T, error)
}
