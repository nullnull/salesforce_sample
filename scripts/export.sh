#!/bin/sh
mkdir -p data

COLUMNS="DandbCompanyId, Jigsaw, Fax, Website, Email, OwnerId, Status, LeadSource, Company, Address, CreatedById, Name, AnnualRevenue, Title, NumberOfEmployees, MobilePhone, LastModifiedById, Industry, CleanStatus, Rating, Description, Phone"
OBJECT="Lead"
QUERY="SELECT $COLUMNS FROM $OBJECT"
echo "Executing query:"
echo "  $QUERY"
sfdx force:data:tree:export -q "$QUERY" -d ./data
