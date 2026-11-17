# !/usr/bin/env bash

checkInstalled() {
	echo "Checking if Git is already installed."
	GIT_VERSION=$(git --version)
	if [[ $? == 0 ]]; then
		echo "Git has already been installed.: $GIT_VERSION"
		return $GIT_VERSION 
	fi
	return 0 
}

setup-git() {
	echo "setup git"
	EXIST_GIT=checkInstalled
	if [[ ! "$EXIST_GIT" == 0 ]]; then
		return 0
	fi
}

