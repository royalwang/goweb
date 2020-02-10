package configs

import "fmt"

const driver = "mysql"
const host = "192.168.3.17"
const database = "iissy"
const username = "root"
const password = "Pigs34@Touch"
const charset = "utf8mb4"
const collation = "utf8mb4_unicode_ci"
const prefix = "ecjia_"
const port = "3306"
const strict = false
const unix_socket = ""

//组装数据库连接字符串
func ConnectSchema() string {
	var connect string
	connect = "%s:%s@tcp(%s:%s)/%s?charset=%s"
	return fmt.Sprintf(connect, username, password, host, port, database, charset)
}
