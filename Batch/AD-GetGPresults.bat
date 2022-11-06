rem uses this script to run and show the GP result in one go
c:
CD\
mkdir MYtemp
gpresult /Z > c:\MYtemp\out.txt
cd c:\MYtemp\
notepad out.txt 