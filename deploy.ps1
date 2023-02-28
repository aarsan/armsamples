Connect-AzAccount
Set-AzContext '<your-subscription-id>'
$rg_name = "akv"
$templateFile = "./keyvault.json"

New-AzResourceGroupDeployment `
  -Name DeployLocalTemplate `
  -ResourceGroupName $rg_name `
  -TemplateFile $templateFile `
  -verbose