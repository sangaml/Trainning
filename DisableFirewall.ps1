Configuration DisableFirewall {   
    Node localhost
     { 
     
        Script DisableFirewall 
        {
            GetScript = {
                @{
                    GetScript = $GetScript
                    SetScript = $SetScript
                    TestScript = $TestScript
                    Result = -not('True' -in (Get-NetFirewallProfile -All).Enabled)
                }
            }
        
            SetScript = {
                Set-NetFirewallProfile -All -Enabled False -Verbose
            }
        
            TestScript = {
                $Status = -not('True' -in (Get-NetFirewallProfile -All).Enabled)
                $Status -eq $True
            }
        }
    }  
}
