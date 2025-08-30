$EmailFrom = "tucorreoaqui@gmail.com"
$EmailTo = "destino@cualquiera.com"
$AppPassword = "xxxx mpvd qadf aost" 
$SMTPServer = "smtp.gmail.com"
$SMTPPort = 587

$fecha = Get-Date -Format "dd/MM/yyyy HH:mm:ss"

# Obtiene la dirección IP pública y la geolocalización
try {
    $ipInfo = Invoke-RestMethod -Uri "http://ip-api.com/json/?fields=query,country,city"
    $ipPublica = $ipInfo.query
    $pais = $ipInfo.country
    $ciudad = $ipInfo.city
}
catch {
    $ipPublica = "No se pudo obtener la IP"
    $pais = "Desconocido"
    $ciudad = "Desconocida"
}

$Message = @{
    From       = $EmailFrom
    To         = $EmailTo
    Subject    = "Alerta: Inicio de Sesion"
    Body       = @"
Se registró un inicio de sesión en tu dispositivo: $env:COMPUTERNAME

Por el usuario: $env:USERNAME
Fecha: $fecha

Dirección IP: $ipPublica
Geolocalización: $ciudad, $pais

Si no reconoces esta actividad, por favor contacta a Sensei.....
"@
    SmtpServer = $SMTPServer
    Port = $SMTPPort
    Credential = New-Object System.Management.Automation.PSCredential ($EmailFrom, (ConvertTo-SecureString $AppPassword -AsPlainText -Force))
    UseSsl = $true
}

Send-MailMessage @Message