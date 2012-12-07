clipq
=====

command to search SFC CLIP( http://sfcclip.net ) articles.

## 使い方
### 「履修選抜」を含む記事を検索する
```
clipq 履修選抜
```

### 「SFS」を含む記事を、30件検索
```
clipq SFS -c 30
```

### 「村井純」を含む記事を、50件検索し、スクロールで読む
```
clipq 村井純 -c 50 | less
```

## インストール
### gitから
```
git clone https://github.com/fnobi/clipq.git
cd clipq
make install
```

## アンインストール
```
cd clipq
make uninstall
```
