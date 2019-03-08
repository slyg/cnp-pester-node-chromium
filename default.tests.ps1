param(
    [Parameter(Mandatory)]
    [ValidateNotNullOrEmpty()]
    [string]$AgentTempDirectory
)

Describe 'Test suite' {

    Context 'With puppeteer' {

        $Env:DEBUG = "puppeteer:*,node:*"

        It 'should be alrighty' {
            echo $AgentTempDirectory
        }
    }
}