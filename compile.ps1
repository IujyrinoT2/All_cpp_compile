$numeexe = Read-Host "Numele executabilului"
$comanda = "g++ -o $numeexe" 
$fisier_arr
$fisier = ""

$fisier_arr = Get-ChildItem *.cpp

foreach ($element in $fisier_arr) {
	$fisier = $fisier + " " + $element.name 	
}  

$comanda = $comanda + $fisier

invoke-expression $comanda
