package access

import (
	"github.com/davecgh/go-spew/spew"
	"iissy.com/src/models"
	"iissy.com/src/utils"
)

// Index is yes.
//func Index() (*models.Course, error) {
//	list, err := db.Query("select ID,Subject,Picture,Description from Article order by AddDate desc limit ?", 30)
//	utils.CheckErr(err)
//	course := models.Course{}
//	course.ArticleItems = []*models.Article{}
//	for list.Next() {
//		var article models.Article
//		err = list.Scan(&article.ID, &article.Subject, &article.Picture, &article.Description)
//		utils.CheckErr(err)
//
//		course.ArticleItems = append(course.ArticleItems, &article)
//	}
//
//	list.Close()
//	return &course, nil
//}

func Index() (*models.Course, error) {
	list, err := db2.Raw("select `ID`, `Subject`, `Picture`, `Description` from `Article` order by `AddDate` desc limit ?", 30).Rows()
	utils.CheckErr(err)
	course := models.Course{}
	course.ArticleItems = []*models.Article{}
	for list.Next() {
		var article models.Article
		err = list.Scan(&article.ID, &article.Subject, &article.Picture, &article.Description)
		utils.CheckErr(err)

		course.ArticleItems = append(course.ArticleItems, &article)
	}

	spew.Dump(course)

	list.Close()
	return &course, nil
}
