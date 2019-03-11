param(
    [Parameter(Mandatory)]
    [ValidateNotNullOrEmpty()]
    [string]$AgentTempDirectory
)

Describe 'Test suite' {
    $Tab = [char]9

    Context 'AgentTempDirectory' {

        It 'should exist' {
            $AgentTempDirectory | Should -Exist
        }

    }

    Context 'Government webside' {

        # Uncomment to see the logs
        # $Env:DEBUG = "puppeteer:*,node:*"

        It 'should have the right title' {
            Write-Host "$Tab$Tab$Tab Running node test command..."
            $PageTitle = node browser-scenario | select -Last 1
            $PageTitle | Should -Be "Welcome to GOV.UK"
        }
    }
}