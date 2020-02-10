package access

import (
	"github.com/jinzhu/gorm"
	"time"
)

type FunctionalityModel struct {
	gorm.Model

	Id uint
	FunName string
	FunType string
	Controller string
	CreateTime time.Time
	UpdatedTime time.Time
}