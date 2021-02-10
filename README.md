# printer-maintainer-anacron
An anacron job that helps user in keeping printer's head in good health by printing a test page once a week.

## Installation
Just run `install.sh` and everything will be ready.

## Job settings
The job will be run by `anacron`. The configuration can be found in `/etc/anacrontab`. Check if values here are optimal for a cron.weekly job.

## Appendix: Installing a printer
Enable cups:
```
sudo systemctl enable cups
sudo systemctl start cups
```
Then go to http://localhost:631/admin/ - here you can add a printer via GUI. Remember to chose correct driver (called "Model" in GUI). At the end check if the default values are correct (especially paper size). To make it default printer from the "Printers" tab select the printer and select "Set As Server Default" in the second dropdown.

If you don't have a driver for printer installed it may be in Gutenprint. Install `gutenprint` and `foomatic-db-gutenprint-ppds` to get drivers for many printers. After installing/updating Gutenprint run `cups-genppdupdate`.
