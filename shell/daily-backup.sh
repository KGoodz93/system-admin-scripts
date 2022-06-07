#!/bin/bash

# Perform Backup

zip daily_backup_`date +"%Y%m%d"`.gz /home/goodikel/* 
zip daily_backup_`date +"%Y%m%d"`.gz /export/shared-`hostname`/*

# Move .gz to backup directory


mv daily_backup_`date +"%Y%m%d"`.gz /export/shared-`hostname`/backup
