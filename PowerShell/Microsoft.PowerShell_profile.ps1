$env:CARAPACE_BRIDGES = 'zsh,fish,bash,inshellisense' # optional
Set-PSReadLineOption -Colors @{ "Selection" = "`e[7m" }
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
carapace _carapace | Out-String | Invoke-Expression

# 开启模块功能
Set-PSReadLineOption -PredictionSource HistoryAndPlugin
# 提示建议以列表方式展现
Set-PSReadLineOption -PredictionViewStyle ListView
# 初始化 starship （美化提示符）
Invoke-Expression (&starship init powershell)
# 初始化 zoxide （z 智能调整）
Invoke-Expression (& { (zoxide init powershell | Out-String) })