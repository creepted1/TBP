The scripts inside the folders contains the following:

1. Invoke-AppDeployToolkit.ps1 - which is the main script of the installer of the app.
2. Detection script - which is a ps detection script that will be used in Intune custom detection script
3. Logo image of the application.


Ways to run the installer

1. Go to the source folder and run Invoke-AppDeployToolkit.exe as is.
2. Open powershell and run this commands
Install - Invoke-AppDeployToolkit.exe -DeploymentType "Install" -DeployMode "Silent"
Uninstall - Invoke-AppDeployToolkit.exe -DeploymentType "Uninstall" -DeployMode "Silent"

-DeployMode

Specify the installation will be run in Interactive, Silent or NonInteractive mode:

    Interactive = Shows dialogs
    NonInteractive = Passive install, only shows dialogs that do not expect a response from the user (i.e. progress dialogs).
    Silent = No dialogs (progress and prompts are suppressed)

-DeployMode Interactive ## default

-DeployMode Silent

-DeployMode NonInteractive
