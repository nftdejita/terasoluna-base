# TERASOLUNA for CodeSandBox

この環境はCodeSandBoxで無理矢理TERASOLUNAを動かしています。

初期構築に用いたコマンドは下記のとおりです。
```
mvn archetype:generate -DarchetypeGroupId=org.terasoluna.gfw.blank -DarchetypeArtifactId=terasoluna-gfw-web-blank-jsp-mybatis3-archetype -DarchetypeVersion=5.9.0.RELEASE
```

ソースを修正したら下記のシェルを実行してデプロイしてください。
```
./deploy.sh

```

> なお、IDE内にあるブラウザではトップ画面までしか出ません。外部ブラウザからhttps://XXXX.csb.app/terasoluna-app/にアクセスしてください。