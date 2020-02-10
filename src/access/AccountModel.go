package access

import (
	"github.com/jinzhu/gorm"
	"time"
)

type AccountModel struct {
	gorm.Model

	Id uint
	UserId string
	UserName string
	Password string
	RegDate time.Time
	LastLoginDate time.Time
	Status int
	RoleId int
}