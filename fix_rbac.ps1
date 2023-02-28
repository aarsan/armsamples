Connect-AzAccount
Set-AzContext 'db1b885f-fc00-442a-a361-4410b2693924'
$rg_name = "akv"
$templateFile = "./rbac.json"


New-AzResourceGroupDeployment `
  -Name DeployLocalTemplate `
  -ResourceGroupName $rg_name `
  -TemplateFile $templateFile `
  -verbose