package access

import (
	"database/sql"
	"iissy.com/src/configs"

	// mysql driver
	_ "github.com/go-sql-driver/mysql"
)

var db *sql.DB

func init() {
	var err error
	db, err = sql.Open("mysql", configs.ConnectSchema())
	if err != nil {
		panic(err)
	}

	return
}
