# dotfiles

## coc

call#util#install()

code EUSAGE
npm ERR!  
npm ERR! The `npm ci` command can only install with an existing package-lock.json or   
npm ERR! npm-shrinkwrap.json with lockfileVersion >= 1. Run an install with npm@5 or  
npm ERR! later to generate a package-lock.json file, then try again.  
npm ERR!

nvim-data/plugged/coc.nvimでnpm installとした後実行したらうまくいった

### coc-listsインストール後にfilesがTask error: spawn dir ENOENTと出てうまくいかない場合
1. choco install riprep
1. 再起動

## iamcco/markdown-preview

### 公式のやり方だとうまくいかなかった

- Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }

### うまくいった方法

- nodejsがインストール済みの状況で
- C:\Users\HOGE\AppData\Roamingにnpmディレクトリがなければ作成し
- C:\Users\h4reh\AppData\Local\nvim-data\plugged\markdown-preview.nvim\appでnpx yarn installを実行
- 再起動後にうまくいかない場合はapp内のinstallを実行するとうまくいった

