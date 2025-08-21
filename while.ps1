$EmailFrom = "tucorreoaqui@gmail.com"
$EmailTo = "destino@cualquiera.com"
$AppPassword = "xxxx mpvd qadf aost" 
$SMTPServer = "smtp.gmail.com"
$SMTPPort = 587

$fecha = Get-Date -Format "dd/MM/yyyy HH:mm:ss"


$Message = @{
    From       = $EmailFrom
    To         = $EmailTo
    Subject    = "Inicio de session"
    Body       = @"
Se registro un inicio de session en tu dispositivo: $env:COMPUTERNAME

por el usuario: $env:USERNAME  el $fecha


Si no reconoces esta actividad, por favor contacta a Sensei.....
"@



    SmtpServer = $SMTPServer
    Port = $SMTPPort
    Credential = New-Object System.Management.Automation.PSCredential ($EmailFrom, (ConvertTo-SecureString $AppPassword -AsPlainText -Force))
    UseSsl = $true

}

Send-MailMessage @Message