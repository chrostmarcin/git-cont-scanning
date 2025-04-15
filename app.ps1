Start-PodeServer -ScriptBlock {
  Add-PodeEndpoint -Address 0.0.0.0 -Port 8000 -Protocol Http
  
  Add-PodeRoute -Method Get -Path / -ScriptBlock { Write-PodeHtmlResponse -Value '<h1>Hello</h1>' }
}
