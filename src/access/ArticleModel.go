package access

import (
	"github.com/jinzhu/gorm"
	"time"
)

type ArticleModel struct {
	gorm.Model

	Id uint
	Subject string
	Picture string
	Description string
	Body string
	UserId int
	NickName string
	Origin string
	Visited int
	PostType string
	status int
	AddDate time.Time
}