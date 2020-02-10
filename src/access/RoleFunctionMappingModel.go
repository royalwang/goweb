package access

import "github.com/jinzhu/gorm"

type RoleFunctionMappingModel struct {
	gorm.Model

	FunID uint
	RoleID uint
}