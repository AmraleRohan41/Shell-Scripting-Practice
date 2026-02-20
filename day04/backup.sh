#!/bin/bash

<< readme
This is script for 5 days backup and rotation

Useage: ./backup.sh <path to your source> <path to backup folder>
readme

display_useage () {
	echo "Useage: ./backup.sh <path to your source> <path to backup folder>"
}

if [ $# -eq 0 ]; then
	display_useage
fi

source_dir=$1
backup_dir=$2
timestamp=$(date '+%Y-%m-%d-%H-%M-%S')

create_backup () {

	sudo zip -r "${backup_dir}/backup_${timestamp}.zip" ${source_dir} > /dev/null

	if  [ $? -eq 0 ]; then
		echo "Backup generated successfully for ${timestamp}"
	fi
}

perform_rotation (){
	
	backups=($(ls -t "${backup_dir}/backup_"*.zip))
	#echo "${backups[@]}"

	if [ "${#backups[@]}" -gt 5 ];then
		echo "Performing rotation for 5 days"
		
		backups_to_remove=("${backups[@]:5}")
		#echo "${backups_to_remove[@]}"

		for backup in "${backups_to_remove[@]}";
		do
			rm -f ${backup}
		done	
	fi

}

create_backup
perform_rotation
