# Adiciona somente as 23 Issues [Steph] ao projeto SEPARADO "Painel Aurora - Steph".
# Requisitos: GitHub CLI (gh), conta stephleao autenticada e permissao de acesso a Projects.
# Execucao em PowerShell:
#   gh auth login
#   gh auth refresh -s project
#   .\scripts\adicionar-ao-projeto-steph.ps1

$ErrorActionPreference = "Stop"
$owner = "stephleao"
$repo = "educadados-aurora-painel"
$targetTitle = "Painel Aurora - Steph"

# Nunca usar o numero do projeto da squad: encontra pelo titulo EXATO.
$projectsJson = gh project list --owner $owner --format json
if ($LASTEXITCODE -ne 0) { throw "Falha ao listar os projetos da conta. Execute: gh auth refresh -s project" }
$projects = $projectsJson | ConvertFrom-Json
$matches = @($projects.projects | Where-Object { $_.title -ceq $targetTitle })
if ($matches.Count -ne 1) {
    throw "Esperado exatamente 1 projeto '$targetTitle'; encontrados $($matches.Count). Nenhuma Issue foi adicionada."
}
$projectNumber = [int]$matches[0].number
Write-Host "Projeto confirmado: $targetTitle (#$projectNumber)" -ForegroundColor Cyan

# Mapeamento das 23 Issues INDIVIDUAIS (nao usar #35: duplicata).
$issueNumbers = @(26,27,28,29,30,43,31,32,33,34,36,37,38,39,40,41,42,44,45,46,47,48,49)
foreach ($number in $issueNumbers) {
    $url = "https://github.com/$owner/$repo/issues/$number"
    Write-Host "Adicionando #$number ao projeto $projectNumber..."
    gh project item-add $projectNumber --owner $owner --url $url
    if ($LASTEXITCODE -ne 0) {
        Write-Warning "Nao foi possivel adicionar #$number (talvez ja esteja no projeto). Confira o quadro."
    }
}
# Limpeza pontual: remove do projeto pessoal a duplicata erroneamente criada (#35), se aparecer.
# Nao exclui a Issue do repositorio, nao mexe no projeto da squad.
$itemsJson = gh project item-list $projectNumber --owner $owner --format json --limit 200
if ($LASTEXITCODE -eq 0) {
    $items = $itemsJson | ConvertFrom-Json
    $duplicatas = @($items.items | Where-Object {
        $_.content.url -eq "https://github.com/$owner/$repo/issues/35"
    })
    foreach ($duplicata in $duplicatas) {
        Write-Host "Removendo item duplicado #35 do projeto pessoal..." -ForegroundColor Yellow
        gh project item-delete $projectNumber --owner $owner --id $duplicata.id
    }
} else {
    Write-Warning "Nao foi possivel verificar a duplicata #35 automaticamente. Confira a coluna Done manualmente."
}

Write-Host "Verifique o projeto '$targetTitle'. Mantenha apenas Issues com prefixo [Steph] e nao adicione a #35." -ForegroundColor Green
