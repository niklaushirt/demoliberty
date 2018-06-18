#!/bin/bash
#-----------------------------------------------------------------------------------------------------------------
#REMOVE PACKAGES
#-----------------------------------------------------------------------------------------------------------------
#rm ./*.tgz

#REMOVE INDEX.YAML
rm ./index.yaml

#-----------------------------------------------------------------------------------------------------------------
#CREATE PACKAGES
#-----------------------------------------------------------------------------------------------------------------
helm package demoliberty

#CREATE INDEX.YAML
helm repo index --url https://raw.githubusercontent.com/niklaushirt/demoliberty/master/charts/stable/repo/stable/ ./

#-----------------------------------------------------------------------------------------------------------------
#REMOVE PACKAGES in stable
#-----------------------------------------------------------------------------------------------------------------
rm ../stable/repo/stable/*.tgz


#REMOVE INDEX.YAML in charts
rm ../stable/repo/stable/index.yaml


#-----------------------------------------------------------------------------------------------------------------
#COPY PACKAGES
#-----------------------------------------------------------------------------------------------------------------
cp  ./*.tgz ../stable/repo/stable/



#COPY INDEX.YAML
cp index.yaml ../stable/repo/stable/index.yaml
