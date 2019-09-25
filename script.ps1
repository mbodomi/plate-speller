#!/opt/pwsh/pwsh
While($True) {
	$plate = Read-Host "Please enter a standard Hungarian car license plate (AAA-000)"
	if ($plate -match "[A-Z]{3}`-\d{3}") { break }
}

$letters=($plate  -split "-")[0]
$numbers=($plate -split "-")[1]

$spellout=""

$letters.toCharArray() |% {
	switch($_){
		'A' { $spellout+="alpha " }
		'B' { $spellout+="bra vow " }
		'C' { $spellout+="charlie " }
		'D' { $spellout+="delta "}
		'E' { $spellout+="eko" }
		'F' { $spellout+="fuxtrut " }
		'G' { $spellout+="golf " }
		'H' { $spellout+="hotel " }
		'I' { $spellout+="india " }
		'J' { $spellout+="jewleeat " }
		'K' { $spellout+="keelow " }
		'L' { $spellout+="leemuh " }
		'M' { $spellout+="mike " }
		'N' { $spellout+="november " }
		'O' { $spellout+="oscar " }
		'P' { $spellout+="puhpuh " }
		'Q' { $spellout+="kehbeck " }
		'R' { $spellout+="rowmio " }
		'S' { $spellout+="siairuh " }
		'T' { $spellout+="tahgo " }
		'U' { $spellout+="uniform " }
		'V' { $spellout+="victor " }
		'W' { $spellout+="whiskey " }
		'X' { $spellout+="x-ray " }
		'Y' { $spellout+="yangkey " }
		'Z' { $spellout+="zoo loo " }
	}
}

$spellout += ",DASH. "

$numbers.toCharArray() |% {
	switch($_) {
		'0' { $spellout+="nuhduh-zayro " }
		'1' { $spellout+="oonuhwun " }
		'2' { $spellout+="beessohtoo " }
		'3' { $spellout+="tayrutree " }
		'4' { $spellout+="kartayfower " }
		'5' { $spellout+="puhntuh5 " }
		'6' { $spellout+="soksee6 " }
		'7' { $spellout+="sattah7 " }
		'8' { $spellout+="okto8 " }
		'9' { $spellout+="novay9er " }
	}
}

$spellout | .\stspeech | out-null