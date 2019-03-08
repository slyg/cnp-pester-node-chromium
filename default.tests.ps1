param(
    [Parameter(Mandatory)]
    [ValidateNotNullOrEmpty()]
    [string]$AgentTempDirectory
)

Describe 'Test suite' {

    Context 'With puppeteer' {

        $Env:DEBUG = "puppeteer:*,node:*"
        $Tab = [char]9

        It 'AgentTempDirectory should exist' {
            Write-Host "$Tab$Tab$Tab Running node test command..."
            node test
            $AgentTempDirectory | Should -Exist
        }
    }
}