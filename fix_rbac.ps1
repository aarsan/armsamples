Connect-AzAccount
Set-AzContext '{subscription_id}'
$rg_name = "akv"
$templateFile = "./rbac.json"


New-AzResourceGroupDeployment `
  -Name DeployLocalTemplate `
  -ResourceGroupName $rg_name `
  -TemplateFile $templateFile `
  -verbose
