$RG = "trainning"
$location = "eastus2"
New-AzureRmResourceGroup -Name $RG -Location $location
New-AzureRmResourceGroupDeployment -Name trainning -ResourceGroupName $RG `
 -TemplateUri "https://raw.githubusercontent.com/sangaml/Trainning/master/windows2016.json" `
-TemplateParameterUri "https://raw.githubusercontent.com/sangaml/Trainning/master/windows2016.parameters.json"
