package access

import (
	"github.com/jinzhu/gorm"
	"time"
)

type RolesModel struct {
	gorm.Model

	Id uint
	RoleName string
	Status int
	CreateTime time.Time
	UpdatedTime time.Time
}