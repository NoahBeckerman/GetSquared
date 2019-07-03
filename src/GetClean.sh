#!/bin/bash

MY_REPOS=("/Users/cpg/notebook/" "/Users/cpg/datamia0619" "/Users/cpg/rss-reader")
for i in  "%s\n" "${MY_REPOS[@]}"
do
	pushd "${i}"
	git status
	popd
done
