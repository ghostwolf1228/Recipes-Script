<#
    Script Name:  Grocery Store Program.ps1
    Authors:      Tyler Gilbert and Sam Ransford
    Date:         August 8th, 2015
    Description:  This script allows thhe user to
                  to select a recipe for a meal and
                  outputs the ingredients for that
                  meal and displays a map for where
                  they are in the store.
#>
Clear-Host
$recipes = ('Parmesean Chicken', 'Lasagna', 'Enchiladas');
$choice = "";
$i = 0;
if($recipes -eq $null){
    Write-Host "There are no recipes available to choose from."
}else{
    foreach($element in $recipes){
        $choice += "$i) $element`n"
        $i++
    }
}
$choice = Read-Host "Please choose a recipe:`n`n$choice`n"

$ingredients = ("4-6...boneless, skinless chicken breasts,
1.....cup all-purpose flour,
1.....teaspoon kosher salt,
1/2...teaspoon ground black pepper,
2.....eggs,
1.....tablespoon water,
1 1/4.cups bread crumbs", "");
Write-Host "`n-----------------------------------------------"
Write-Host  $ingredients[$choice];
Write-Host "-----------------------------------------------"
