Import-Module 'C:\Users\Stefan\Documents\GitHub\Wunderlist' -verbose
New-MarkdownHelp -Module Wunderlist -OutputFolder 'C:\Users\Stefan\Documents\GitHub\Wunderlist\docs'

# re-import your module with latest changes
Import-Module 'C:\Users\Stefan\Documents\GitHub\Wunderlist' -verbose -Force
Update-MarkdownHelp 'C:\Users\Stefan\Documents\GitHub\Wunderlist\docs'


New-ExternalHelp 'C:\Users\Stefan\Documents\GitHub\Wunderlist\docs' -OutputPath 'C:\Users\Stefan\Documents\GitHub\Wunderlist\en-US\' -Force

#Test
remove-module Wunderlist
ipmo C:\users\Stefan\Documents\GitHub\wunderlist -Verbose