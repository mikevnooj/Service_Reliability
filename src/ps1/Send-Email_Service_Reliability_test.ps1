﻿Send-MailMessage -To michael.nugent@indygo.net,avogel@indygo.net, cpurefoy@indygo.net, tjohnson@indygo.net, adarrow@indygo.net, tcoon@indygo.net, lesley.gordon@indygo.net, TCox@indygo.net, jennifer.pyrz@indygo.net, bthomas@indygo.net, arnold.isham@indygo.net, TransportationManagers@indygo.net -from michael.nugent@indygo.net -Subject "Daily Service Reliability Report" -Body "Please see attached Service Reliability report. -Mike" -Attachments "C:\Users\Michael.Nugent\Documents\Projects\R_Projects\nooj\Reporting\Daily\Service_Reliability\output\html\$(Get-Date -Format yyyyMMdd) Service Reliability Report.html" -SmtpServer Smtp.outlook.com -Credential (Get-StoredCredential -Target "indygo.net") -UseSsl -Port 587

