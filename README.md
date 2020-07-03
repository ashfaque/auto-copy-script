# Auto Copy Script

Download this [auto_copy.bat](auto_copy.bat/) file and edit the SOURCE & DESTINATION location. You can copy files from one to many locations. You just need to specify the path of the destination for each destination, keeping the source path same.

You can also automate this batch file by creating a windows task schedule.
> Start -> Windows Administrative Tools -> Task Scheduler -> Create Basic Task -> Give a friendly name specify the interval and choose this .bat file from `Browser` menu
After creating the task goto `Task Scheduler Library` and select the task you created. Right click on it goto `properties -> Triggers -> Edit` and there you can also choose to repeat task every 1 hour or so.
