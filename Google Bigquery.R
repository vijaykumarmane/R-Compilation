# To upload job dataframe using "bigrquery"
insert_upload_job(project_name, "Raw_Dataset", "Test_Datatable", DataFrame, billing = project_name_billable,
  create_disposition = "CREATE_IF_NEEDED", write_disposition = "WRITE_APPEND")

# To change dateformat from m-d-y to y-m-d
WD["Column_Name"][,1] <- mdy(WD["Column_Name"][,1])

# To remove dot(.) from headers to ""
names(DataFrame) <- gsub("\\.", "", names(DataFrame), perl = TRUE)
