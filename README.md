
# MonoDevelop & Xamarin Studio 非公式日本語カタログ
# Unofficial Japanese Catalog for MonoDevelop & Xamarin Studio

## 概要

MonoDevelop / Xamarin StudioのユーザーインタフェースとTipsを日本語に翻訳します。

## 内容

- `ja.po`
- `monodevelop.mo`
- `TipsOfTheDay.xml`

- `install_win.bat`
- `install_mac.sh`
- `install_linux.sh`

## プラットフォーム

以下の環境でテストしています。

- MonoDevelop
	- MonoDevelop 5.9.6(Unity 5.3以降にバンドル)
	- MonoDevelop 5.10.0(Linux用安定版)
- Xamarin Studio
	- Xamarin Studio 6.0.2(安定版/ベータ版)
	- Xamarin Studio 6.1.0(アルファ版)
- OS
	- Windows 7 Professional x64 SP1 日本語版
	- Windows 7 Home Premium x64 SP1 日本語版
	- Windows 8.1 Update x86 日本語版
	- Windows 10 x86 日本語版
	- Mac OS X 10.11 El Capitan
	- CentOS 7.1

## インストール

各OS用のインストールスクリプトを、**管理者権限で** 実行してください。

手作業で行う場合は、`monodevelop.mo` を以下の場所にコピーします。

- Windows
	- `C:\Program Files\Unity\MonoDevelop\bin\locale\ja\LC_MESSAGES`
	- `C:\Program Files\Xamarin Studio\bin\locale\ja\LC_MESSAGES`
	- 64ビット版Windowsに32ビット版ソフトウェアをインストールしている場合は、
	  `C:\Program Files (x86)`となります。
- Mac OS X
	- `/Applications/Unity/MonoDevelop.app/Contents/MacOS/share/locale/ja/LC_MESSAGES`
	- `/Applications/Xamarin Studio.app/Contents/MacOS/share/locale/ja/LC_MESSAGES`
- Linux
	- `/usr/share/locale/ja/LC_MESSAGES`
	- `/opt/monodevelop/share/locale/ja/LC_MESSAGES`
	- `/opt/monodevelop/lib/monodevelop/locale/ja/LC_MESSAGES`

また、`TipsOfTheDay.xml` を以下の場所にコピーします。

- Windows
	- `C:\Program Files\Unity\MonoDevelop\data\options`
	- `C:\Program Files\Xamarin Studio\data\options`
- Mac OS X
	- `/Applications/Unity/MonoDevelop.app/Contents/MacOS/lib/monodevelop/data/options`
	- `/Applications/Xamarin Studio.app/Contents/Resources/lib/monodevelop/data/options`
- Linux
	- `/usr/lib/monodevelop/data/options`
	- `/opt/monodevelop/lib/monodevelop/data/options`

## 注意

日本語入力の問題を解消するものではありません。

Unity EditorからMonoDevelopを起動した場合は、オプションの言語設定にかかわらず、
UIは日本語になりません。単体で起動してください。
なお、Tipsは日本語です。

フォントはMSゴシックなど日本語が使えるものを設定してください。
デフォルトのままではビルド出力やパッケージコンソールで文字化けすることがあります。

以下のものは翻訳されていません。

- 基本的なGUIボタン(Cancel/Next等)の一部
- GTKのコモンダイアログ、カラーピッカー
- 一部のキーバインド名
	- `main/src/core/MonoDevelop.Ide/ExtensionModel/Commands.addin.xml`
- C#関連
	- ソース解析・コード整形・リファクタリング関連の一部
	- キーワードやクラスのポップアップ解説
		- `main/src/addins/CSharpBinding/MonoDevelop.CSharp/SignatureMarkupCreator.cs`
	- ツールボックスのコード片のポップアップ
		- `main/src/core/MonoDevelop.Ide/MonoDevelop.Ide.CodeTemplates/MonoDevelop-templates.xml`
	- エラーウィンドウに出るコード分析
	- コードテンプレートの説明
- ハイライティングスキームの説明
	- `main/src/core/Mono.Texteditor/Styles/NightshadeStyle.json`
- 各種サンプルテキスト 
	- `main/src/addins/VersionControl/MonoDevelop.VersionControl/MonoDevelop.VersionControl.Dialogs/CommitMessageStylePanelWidget.cs`
	- `main/src/addins/CSharpBinding/MonoDevelop.CSharp.Formatting/CSharpFormattingPolicyPanelWidget.cs`
- オプションのXMLフォーマットのポップアップ
- アドインマネージャのカテゴリ
- デバッガ周り、Unity / Xamarin拡張
- Xamarin Studioのウェルカムページ
- アップデータ、リリースノート
- MonoDevelopのウェルカムページの「Solutions」「New...」「Open...」
- プロジェクト作成時の詳細説明

一部、誤訳や不具合がある場合があります。

C#関連の訳語はMSDNに準拠しています。

## 免責

翻訳の正確さについては保証しません。

本パッケージの使用に伴う損害・不利益・逸失利益などについて作者は一切責任を負いません。

本パッケージについてUnity TechonlogiesやXamarinその他への問い合わせはご遠慮ください。

## ビルド

```
$ msgfmt -f -o monodevelop.mo ja.po
```

## ライセンス

オリジナルに従います。

## 作者

Takayuki ITO <yuki@euc.jp>

