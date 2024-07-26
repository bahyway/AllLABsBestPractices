function Get-Administrator {
  param (
    [string]$ScriptPath
  )

  $logPath = "$env:TEMP\InstallOpenSSL.log"

  try {
    # Check if the script is running as administrator
    $isAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

    if (-not $isAdmin) {
      # Relaunch the script as administrator
      Write-Host "Script is not running as administrator. Attempting to relaunch as administrator..."
      Add-Content -Path $logPath -Value "[$(Get-Date)] Script is not running as administrator. Attempting to relaunch as administrator..."

      $newProcess = New-Object System.Diagnostics.ProcessStartInfo "powershell"
      $newProcess.Arguments = "-NoProfile -ExecutionPolicy Bypass -File `"$ScriptPath`""
      $newProcess.Verb = "runas"

      [System.Diagnostics.Process]::Start($newProcess) | Out-Null
      exit
    }
    else {
      Write-Host "Script is running with administrative privileges."
      Add-Content -Path $logPath -Value "[$(Get-Date)] Script is running with administrative privileges."
    }
  }
  catch {
    Write-Host "Failed to elevate script to administrator: $_"
    Add-Content -Path $logPath -Value "[$(Get-Date)] Failed to elevate script to administrator: $_"
    throw $_
  }
}




function Install-OpenSSL {
  param (
    [string]$InstallDir = "C:\Program Files\OpenSSL-Win64"
  )

  $logPath = "$env:TEMP\InstallOpenSSL.log"

  try {
    # Check and ensure script is running as administrator
    Get-Administrator -ScriptPath $MyInvocation.MyCommand.Path

    # Check if Chocolatey is installed
    if (-not (Get-Command choco -ErrorAction SilentlyContinue)) {
      Write-Host "Chocolatey is not installed. Installing Chocolatey..."
      Add-Content -Path $logPath -Value "[$(Get-Date)] Chocolatey is not installed. Installing Chocolatey..."
      Set-ExecutionPolicy Bypass -Scope Process -Force
      [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
      Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
    }

    # Install OpenSSL using Chocolatey
    Write-Host "Installing OpenSSL..."
    Add-Content -Path $logPath -Value "[$(Get-Date)] Installing OpenSSL..."
    choco install openssl -y

    # Add OpenSSL to the system PATH
    Write-Host "Adding OpenSSL to system PATH..."
    Add-Content -Path $logPath -Value "[$(Get-Date)] Adding OpenSSL to system PATH..."
    $newPath = [System.Environment]::GetEnvironmentVariable("Path", [System.EnvironmentVariableTarget]::Machine) + ";$InstallDir\bin"
    [System.Environment]::SetEnvironmentVariable("Path", $newPath, [System.EnvironmentVariableTarget]::Machine)

    # Verify installation
    Write-Host "Verifying OpenSSL installation..."
    Add-Content -Path $logPath -Value "[$(Get-Date)] Verifying OpenSSL installation..."
    $opensslVersion = & "$InstallDir\bin\openssl.exe" version
    if ($opensslVersion) {
      Write-Host "OpenSSL installed successfully: $opensslVersion"
      Add-Content -Path $logPath -Value "[$(Get-Date)] OpenSSL installed successfully: $opensslVersion"
    }
    else {
      Write-Host "Failed to verify OpenSSL installation."
      Add-Content -Path $logPath -Value "[$(Get-Date)] Failed to verify OpenSSL installation."
    }
  }
  catch {
    Write-Host "An error occurred: $_"
    Add-Content -Path $logPath -Value "[$(Get-Date)] An error occurred: $_"
    throw $_
  }
}

# Call the function to install OpenSSL
Install-OpenSSL