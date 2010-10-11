<!-- m4を使って記述を減らしてみた -->

include(../wired.m4)

header(Webでお絵描きメモ,34)

テキストエディタや入力システムの進化により、
考えた文章をすぐに計算機に入力することができるようになってきたため、
手書きのテキストを<strong>ワープロで清書</strong>するという風習はさすがに廃れたようですが、
図や絵を含んだメモを計算機上で作成するのはまだあまり簡単だとはいえません。

他人に見せる資料を作るために、
時間をかけてプレゼンソフトや図形エディタを使って綺麗な図を描くことはよく行なわれていますが、
個人的なちょっとしたメモ書きのために図形エディタなどを使おうとすると、
以下のような手順が必要になるので大変面倒です。

<ol>
<li>図形エディタを起動する。
<li>描いた図に名前をつけて、エディタ独自の形式で保存する。
<li>ワープロ文書に埋め込む場合、ワープロが扱える形式で保存したものを文書中に貼り込む。
ブラウザで読めるようにするためには、
画像として保存したうえで、HTML文書の中で
&#147;<code>&lt;img src="..."&gt;</code>&#148;
のような記述を行なう。
</ol>

これにはかなり手間がかかるので、
図形エディタで描いた絵をテキストと混在させてメモ書きに活用している人は少ないと思われます。

<h3>Gyazo</h3>

私はパソコン画面上の画像を切り出してWebにアップロードすることができる
<a href="http://Gyazo.com/">Gyazo</a>というサービスを運営しています。
パソコン画面上のデータをWebにアップロードするためには、通常は以下のような操作が必要です。

<ul>
<li>パソコン画面のスクリーンショットを画像ファイルとしてセーブする
<li>画像エディタでそのファイルを開き、必要部分を切り出してセーブする
<li>ブラウザで画像アップロードサイトを開き、切り出したファイルの名前を入力してアップロードを行なう
</ul>

このような操作はなかなか面倒ですが、
Gyazoシステムを使うと、以下のような簡単な操作をするだけで、
デスクトップから切り出した画像をGyazo.comのサーバにアップロードすることができます。

<ul>
<li>Gyazoアプリケーションを起動する
<li>デスクトップ画面上の必要部分をマウスで選択する
</ul>

この操作により、
指定された領域の画像が自動的にアップロードされ、ユニークなURLが割り当てられます。
Gyazoを使うと最小限の手間で画像をアップロードして共有できるので大変便利ですが、
特に<strong>画像ファイルに名前をつけてセーブする必要がない</strong>点が手軽だといえるでしょう。
メモ的に使うような画像の場合、再利用する可能性が低いですし、高品質である必要もありませんから、
わざわざ名前や保存場所を考えてセーブしておく価値はほとんどなく、
そこそこの品質の画像を気軽に迅速にアップロードできる機能が有益です。

<h3>Gyazo画像をメモに活用する</h3>

GyazoでWebにアップロードした画像はどこでも使うことができますが、
Wikiに貼って使うとさらに手軽です。

私は最近、誰でも簡単にWikiページを作れる
<a href="http://Gyazz.com">Gyazz</a>
というサイトの運営を開始しました。Gyazzでは
<a href="http://Gyazz.com/Wired/test">code[http://Gyazz.com/Wired/test]</a>
のようなURLを指定することにより、以下のようなWikiページを作ることができます。

<p>
<img src="http://gyazo.com/a869788a652342caf4acf7fa9e554be2.png">
</p>

また、このWikiページにはGyazoにアップロードした画像を簡単に貼り付けることができます。
たとえば
<a href="http://wiredvision.jp">WiredVision</a>
のトップページの画像をGyazoで切り出してWebにアップロードした後、
<!--
<p>
<img src="http://gyazo.com/5e7379899a8817477a5fe3106240d91b.png">
<p>

この画像URL(code[http://gyazo.com/5e7379899a8817477a5fe3106240d91b.png])を
-->
その画像をGyazzのページにペーストすることにより、
以下のように画像をWikiページで表示することができます。

<p>
<img src="http://gyazo.com/7b1e6d87d75e096beab6b2501a2e30d9.png">
<p>

画像を簡単な手間でWikiページに貼り付けることができるのであれば、
パソコン上の図形エディタやWeb上のお絵描きサービスを使って絵を描き、
それをGyazoで切り取ったものをWikiに貼ることによって、
お絵描きメモを簡単に編集/公開できることになります。

たとえばブラウザ上でお絵描きできる
<a href="http://twitpaint.com">TwitPaint</a>のようなサービスを使えば
簡単に以下のような絵を描くことができますが、

<p>
<img src="http://gyazo.com/5b47e99d83faaf769b76ad9a1f872161.png">
</p>

描いた部分だけをGyazoで切り出して以下のようにWikiページに貼りつけることができます。

<p>
<img src="http://gyazo.com/240c04a578059f6b027be5d1725c5fbe.png">
</p>

必要なWikiページがうまく作成できれば、
画像データをセーブせずにTwitPaintを終了しても問題ありません。

<p>
「<i>なんらかの方法で絵を描く</i>⇒<i>描いた絵をGyazoでキャプチャしてWikiに貼る</i>」
という方法に慣れてしまうと、
いちいち図形エディタで描いた図に名前をつけてセーブしていたことが
馬鹿らしく感じられるようになってきます。
一般的なWikiと異なり、Gyazzには「編集ボタン」や「書込みボタン」が存在せず、
Webページ上の文章をクリックするだけで文字入力/編集が可能であり、
編集結果は自動的にセーブされるので、
パソコン上のワープロと同じような感覚で使うことができます。
また、文字を入力するのと同じような感覚で写真や図も入力できますから、
いちいち図にファイル名をつけてセーブして取り込むという方法は、
ワープロ文章を作る前に手書きで文章を書くのと同じぐらい
ナンセンスだと感じるようになってきました。

<p>
テキスト入力手法の進化が頭打ちになってきた現在は、
画像や手書きメモを活用する方法をもっと追及するべき時代なのかもしれません。
楽々ビジュアルなメモをとる方法をさらに追及していきたいと思っています。

<p>
footer($Date: 2009-08-10$)
