# === BEGIN EXAMPLE USAGE ==============================================================================
# 
# Unblock-Files -path "C:\InetPub\wwwroot"
#
# === END EXAMPLE USAGE ================================================================================



Function Unblock-Files([string]$path = "C:\")
{ 
    $folders = dir $path -recurse | Where {$_.PSIsContainer};
    foreach($folder in $folders)
    {
        Get-ChildItem $folder.FullName | Unblock-File -Verbose;
    }
}
