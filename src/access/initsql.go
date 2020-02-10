package access

import (
	"database/sql"
	_ "github.com/go-sql-driver/mysql"
	"github.com/jinzhu/gorm"
	"iissy.com/src/configs"
)

var db *sql.DB
var db2 *gorm.DB

func init() {
	var err error
	db, err = sql.Open("mysql", configs.ConnectSchema())
	if err != nil {
		panic(err)
	}
	//defer db.Close()

	init2()

	return
}

func init2() {
	var err error
	db2, err = gorm.Open("mysql", configs.ConnectSchema())
	if err != nil {
		panic(err)
	}
	//defer db2.Close()
	return
}
