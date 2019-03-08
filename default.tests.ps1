param(
    [Parameter(Mandatory)]
    [ValidateNotNullOrEmpty()]
    [string]$AgentTempDirectory
)

Describe 'Test suite' {

    Context 'With puppeteer' {

        $Env:DEBUG = "puppeteer:*,node:*"

        It 'AgentTempDirectory should exist' {
            Write-Host "npm test..."
            node test
            $AgentTempDirectory | Should -Exist
        }
    }
}