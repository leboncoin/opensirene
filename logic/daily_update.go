package logic

import (
	"github.com/sirupsen/logrus"

	"github.com/jclebreton/opensirene/api/models"
	"github.com/jclebreton/opensirene/database"
	"github.com/jclebreton/opensirene/opendata/gouvfr/sirene"
)

// GetSuccessfulUpdateList lists the last successful updates in the database
// and returns the slice of filenames which were successfuly imported.
// Returns an empty slice otherwise.
func GetSuccessfulUpdateList() []string {
	var sh []models.History
	if database.DB.Find(&sh, models.History{IsSuccess: true}).RecordNotFound() {
		return []string{}
	}

	var r []string
	for _, h := range sh {
		r = append(r, h.Filename)
	}
	return r
}

// Daily is the cron task that runs every few hours to get and apply the latest
// updates
func Daily() {
	var err error
	var sfs sirene.RemoteFiles

	if sfs, err = sirene.GrabLatestFull(); err != nil {
		logrus.WithError(err).Error("Could not download latest")
		return
	}

	sfs = Diff(GetSuccessfulUpdateList(), sfs)

	if err = Import(sfs); err != nil {
		logrus.WithError(err).Error("Could not download latest")
		return
	}
}