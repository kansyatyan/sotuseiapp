-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- ホスト: mysql207.phy.lolipop.lan
-- 生成日時: 2023 年 2 月 27 日 17:14
-- サーバのバージョン: 5.7.36-log
-- PHP のバージョン: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- データベース: `LAA1479619-sotuseiapp`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `app`
--

CREATE TABLE IF NOT EXISTS `app` (
  `app_id` int(11) NOT NULL AUTO_INCREMENT,
  `app_title` varchar(255) NOT NULL,
  `app_icon` varchar(250) DEFAULT NULL,
  `year` year(4) NOT NULL,
  `student_id` char(8) NOT NULL,
  `event_id` int(11) NOT NULL,
  PRIMARY KEY (`app_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1000 ;

--
-- テーブルのデータのダンプ `app`
--

INSERT INTO `app` (`app_id`, `app_title`, `app_icon`, `year`, `student_id`, `event_id`) VALUES(1, 'Bemayu', 'http://21cm0149.main.jp/sotuseiapp/icon/21cm0104_Bemayu.png', 2023, '21cm0104', 2);
INSERT INTO `app` (`app_id`, `app_title`, `app_icon`, `year`, `student_id`, `event_id`) VALUES(2, '現代版わらしべ', 'http://21cm0149.main.jp/sotuseiapp/icon/21cm0107_warasibe.png', 2023, '21cm0107', 2);
INSERT INTO `app` (`app_id`, `app_title`, `app_icon`, `year`, `student_id`, `event_id`) VALUES(3, 'Museum', 'http://21cm0149.main.jp/sotuseiapp/icon/21cm0110_Museum.png', 2023, '21cm0110', 2);
INSERT INTO `app` (`app_id`, `app_title`, `app_icon`, `year`, `student_id`, `event_id`) VALUES(4, 'FormTrainer', 'http://21cm0149.main.jp/sotuseiapp/icon/21cm0117_FormTrainer.png', 2023, '21cm0117', 2);
INSERT INTO `app` (`app_id`, `app_title`, `app_icon`, `year`, `student_id`, `event_id`) VALUES(5, '釣り禁MAP', 'http://21cm0149.main.jp/sotuseiapp/icon/21cm0128_turi.png', 2023, '21cm0128', 2);
INSERT INTO `app` (`app_id`, `app_title`, `app_icon`, `year`, `student_id`, `event_id`) VALUES(6, 'WanWanCare', 'http://21cm0149.main.jp/sotuseiapp/icon/21cm0135_WanWanCare.png', 2023, '21cm0135', 2);
INSERT INTO `app` (`app_id`, `app_title`, `app_icon`, `year`, `student_id`, `event_id`) VALUES(7, 'トクシェア', 'http://21cm0149.main.jp/sotuseiapp/icon/21cm0137_tokushare.png', 2023, '21cm0137', 2);
INSERT INTO `app` (`app_id`, `app_title`, `app_icon`, `year`, `student_id`, `event_id`) VALUES(8, 'SECME', 'http://21cm0149.main.jp/sotuseiapp/icon/21cm0138.png', 2023, '21cm0138', 2);
INSERT INTO `app` (`app_id`, `app_title`, `app_icon`, `year`, `student_id`, `event_id`) VALUES(9, 'JECNOTE', 'http://21cm0149.main.jp/sotuseiapp/icon/21cm46_JECNOTE.png', 2023, '21cm0146', 2);

-- --------------------------------------------------------

--
-- テーブルの構造 `app_student`
--

CREATE TABLE IF NOT EXISTS `app_student` (
  `app_id` int(11) NOT NULL,
  `student_id` char(8) NOT NULL,
  PRIMARY KEY (`app_id`,`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `app_student`
--

INSERT INTO `app_student` (`app_id`, `student_id`) VALUES(1, '21cm0104');
INSERT INTO `app_student` (`app_id`, `student_id`) VALUES(2, '21cm0107');
INSERT INTO `app_student` (`app_id`, `student_id`) VALUES(3, '21cm0110');
INSERT INTO `app_student` (`app_id`, `student_id`) VALUES(4, '21cm0117');
INSERT INTO `app_student` (`app_id`, `student_id`) VALUES(5, '21cm0128');
INSERT INTO `app_student` (`app_id`, `student_id`) VALUES(6, '21cm0135');
INSERT INTO `app_student` (`app_id`, `student_id`) VALUES(7, '21cm0137');
INSERT INTO `app_student` (`app_id`, `student_id`) VALUES(8, '21cm0138');
INSERT INTO `app_student` (`app_id`, `student_id`) VALUES(9, '21cm0146');

-- --------------------------------------------------------

--
-- テーブルの構造 `app_tag`
--

CREATE TABLE IF NOT EXISTS `app_tag` (
  `app_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`app_id`,`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `app_tag`
--

INSERT INTO `app_tag` (`app_id`, `tag_id`) VALUES(1, 1);
INSERT INTO `app_tag` (`app_id`, `tag_id`) VALUES(1, 6);
INSERT INTO `app_tag` (`app_id`, `tag_id`) VALUES(2, 2);
INSERT INTO `app_tag` (`app_id`, `tag_id`) VALUES(2, 4);
INSERT INTO `app_tag` (`app_id`, `tag_id`) VALUES(3, 1);
INSERT INTO `app_tag` (`app_id`, `tag_id`) VALUES(4, 1);
INSERT INTO `app_tag` (`app_id`, `tag_id`) VALUES(4, 4);
INSERT INTO `app_tag` (`app_id`, `tag_id`) VALUES(5, 2);
INSERT INTO `app_tag` (`app_id`, `tag_id`) VALUES(6, 1);
INSERT INTO `app_tag` (`app_id`, `tag_id`) VALUES(7, 1);
INSERT INTO `app_tag` (`app_id`, `tag_id`) VALUES(7, 4);
INSERT INTO `app_tag` (`app_id`, `tag_id`) VALUES(8, 1);
INSERT INTO `app_tag` (`app_id`, `tag_id`) VALUES(9, 2);

-- --------------------------------------------------------

--
-- テーブルの構造 `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `event_id` int(11) NOT NULL,
  `event_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `event`
--

INSERT INTO `event` (`event_id`, `event_name`) VALUES(1, '文化祭');
INSERT INTO `event` (`event_id`, `event_name`) VALUES(2, '卒業制作');

-- --------------------------------------------------------

--
-- テーブルの構造 `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `app_id` int(11) NOT NULL,
  `images` varchar(250) NOT NULL,
  UNIQUE KEY `images` (`images`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `images`
--

INSERT INTO `images` (`app_id`, `images`) VALUES(3, 'http://21cm0149.main.jp/sotuseiapp/images/10/21cm0110_app1.png');
INSERT INTO `images` (`app_id`, `images`) VALUES(3, 'http://21cm0149.main.jp/sotuseiapp/images/10/21cm0110_app2.png');
INSERT INTO `images` (`app_id`, `images`) VALUES(3, 'http://21cm0149.main.jp/sotuseiapp/images/10/21cm0110_app3.png');
INSERT INTO `images` (`app_id`, `images`) VALUES(3, 'http://21cm0149.main.jp/sotuseiapp/images/10/21cm0110_app4.png');
INSERT INTO `images` (`app_id`, `images`) VALUES(4, 'http://21cm0149.main.jp/sotuseiapp/images/17/21cm0117_app1.png');
INSERT INTO `images` (`app_id`, `images`) VALUES(4, 'http://21cm0149.main.jp/sotuseiapp/images/17/21cm0117_app2.png');
INSERT INTO `images` (`app_id`, `images`) VALUES(4, 'http://21cm0149.main.jp/sotuseiapp/images/17/21cm0117_app3.png');
INSERT INTO `images` (`app_id`, `images`) VALUES(4, 'http://21cm0149.main.jp/sotuseiapp/images/17/21cm0117_app4.png');
INSERT INTO `images` (`app_id`, `images`) VALUES(4, 'http://21cm0149.main.jp/sotuseiapp/images/17/21cm0117_app5.png');
INSERT INTO `images` (`app_id`, `images`) VALUES(5, 'http://21cm0149.main.jp/sotuseiapp/images/28/21cm0128_app1.png');
INSERT INTO `images` (`app_id`, `images`) VALUES(5, 'http://21cm0149.main.jp/sotuseiapp/images/28/21cm0128_app2.jpg');
INSERT INTO `images` (`app_id`, `images`) VALUES(6, 'http://21cm0149.main.jp/sotuseiapp/images/35/21cm0135_app1.png');
INSERT INTO `images` (`app_id`, `images`) VALUES(6, 'http://21cm0149.main.jp/sotuseiapp/images/35/21cm0135_app2.png');
INSERT INTO `images` (`app_id`, `images`) VALUES(6, 'http://21cm0149.main.jp/sotuseiapp/images/35/21cm0135_app3.png');
INSERT INTO `images` (`app_id`, `images`) VALUES(8, 'http://21cm0149.main.jp/sotuseiapp/images/38/21cm0138_app1.png');
INSERT INTO `images` (`app_id`, `images`) VALUES(8, 'http://21cm0149.main.jp/sotuseiapp/images/38/21cm0138_app2.png');
INSERT INTO `images` (`app_id`, `images`) VALUES(8, 'http://21cm0149.main.jp/sotuseiapp/images/38/21cm0138_app3.png');
INSERT INTO `images` (`app_id`, `images`) VALUES(1, 'http://21cm0149.main.jp/sotuseiapp/images/4/21cm0104_app1.png');
INSERT INTO `images` (`app_id`, `images`) VALUES(1, 'http://21cm0149.main.jp/sotuseiapp/images/4/21cm0104_app2.png');
INSERT INTO `images` (`app_id`, `images`) VALUES(9, 'http://21cm0149.main.jp/sotuseiapp/images/46/21cm0146_app1.png');
INSERT INTO `images` (`app_id`, `images`) VALUES(9, 'http://21cm0149.main.jp/sotuseiapp/images/46/21cm0146_app2.png');
INSERT INTO `images` (`app_id`, `images`) VALUES(9, 'http://21cm0149.main.jp/sotuseiapp/images/46/21cm0146_app3.png');
INSERT INTO `images` (`app_id`, `images`) VALUES(9, 'http://21cm0149.main.jp/sotuseiapp/images/46/21cm0146_app4.png');
INSERT INTO `images` (`app_id`, `images`) VALUES(9, 'http://21cm0149.main.jp/sotuseiapp/images/46/21cm0146_app5.png');
INSERT INTO `images` (`app_id`, `images`) VALUES(2, 'http://21cm0149.main.jp/sotuseiapp/images/7/21cm0107_app1.png');
INSERT INTO `images` (`app_id`, `images`) VALUES(2, 'http://21cm0149.main.jp/sotuseiapp/images/7/21cm0107_app2.png');
INSERT INTO `images` (`app_id`, `images`) VALUES(2, 'http://21cm0149.main.jp/sotuseiapp/images/7/21cm0107_app3.png');
INSERT INTO `images` (`app_id`, `images`) VALUES(2, 'http://21cm0149.main.jp/sotuseiapp/images/7/21cm0107_app4.png');
INSERT INTO `images` (`app_id`, `images`) VALUES(2, 'http://21cm0149.main.jp/sotuseiapp/images/7/21cm0107_app5.png');
INSERT INTO `images` (`app_id`, `images`) VALUES(7, 'https://21cm0149.main.jp/sotuseiapp/images/37/21cm0137_app1.png');
INSERT INTO `images` (`app_id`, `images`) VALUES(7, 'https://21cm0149.main.jp/sotuseiapp/images/37/21cm0137_app2.png');
INSERT INTO `images` (`app_id`, `images`) VALUES(7, 'https://21cm0149.main.jp/sotuseiapp/images/37/21cm0137_app3.png');
INSERT INTO `images` (`app_id`, `images`) VALUES(7, 'https://21cm0149.main.jp/sotuseiapp/images/37/21cm0137_app4.png');
INSERT INTO `images` (`app_id`, `images`) VALUES(38, 'https://21cm0149.main.jp/sotuseiapp/images/38/21cm0138_app1.png');
INSERT INTO `images` (`app_id`, `images`) VALUES(38, 'https://21cm0149.main.jp/sotuseiapp/images/38/21cm0138_app2.png');
INSERT INTO `images` (`app_id`, `images`) VALUES(38, 'https://21cm0149.main.jp/sotuseiapp/images/38/21cm0138_app3.png');

-- --------------------------------------------------------

--
-- テーブルの構造 `information`
--

CREATE TABLE IF NOT EXISTS `information` (
  `app_id` int(11) NOT NULL,
  `haikei` text NOT NULL,
  `kankyou` text NOT NULL,
  `OS` text NOT NULL,
  `language` text NOT NULL,
  `server` text NOT NULL,
  `app_Framework` text,
  `db_Framework` text,
  `point` text NOT NULL,
  `not_function` text,
  `site` varchar(250) DEFAULT NULL,
  `movie` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `information`
--

INSERT INTO `information` (`app_id`, `haikei`, `kankyou`, `OS`, `language`, `server`, `app_Framework`, `db_Framework`, `point`, `not_function`, `site`, `movie`) VALUES(1, '眉毛は第一印象の8割を決めるほど大切な部位で、新生活でいろんな人と出会うときこそ、眉メイクは重要です。しかし、社会に出る前の高校では校則で禁止されていることがほとんどです。慣れない眉メイクで失敗しないようにサポートしたいと思い、開発を決めました。', 'Xcode', 'iOS', 'Swift', 'なし', 'ARKit, Vision Framework', '　なし', 'シンプルな機能のため、デザインを凝って視覚的な満足度を上げました。アプリのカラーは黒を基調にしました。ココ・シャネルの名言で「たくさんの色を使うほど醜くなることを、女たちは知らない。黒に勝る色はない」というものがあります。黒が女性を一番美しく見せる色であるため、メインターゲットの女性に美しくあってほしいという願いを込めて、黒に決めました。ロゴは、メインターゲットが10代〜20代の若い女性のため、若い女性に人気のあるブランドロゴを参考に、線の細いシンプルなものにしました。', '他のポイントメイクをサポートする機能', 'https://github.com/manapisu04/Bemayu', 'https://www.youtube.com/watch?v=hV5RaCPGjSk');
INSERT INTO `information` (`app_id`, `haikei`, `kankyou`, `OS`, `language`, `server`, `app_Framework`, `db_Framework`, `point`, `not_function`, `site`, `movie`) VALUES(2, '大川先生が提案してくれました。', 'AndroidStudio', 'Android', 'PHP, Java', 'ロリポップ, firebase(Google系)', 'なし', 'なし', 'その状況に応じたものをユーザーに伝えている（表示）。', 'リアルタイム交換機能', 'なし', 'https://www.youtube.com/watch?v=o-V4sRd3IpE');
INSERT INTO `information` (`app_id`, `haikei`, `kankyou`, `OS`, `language`, `server`, `app_Framework`, `db_Framework`, `point`, `not_function`, `site`, `movie`) VALUES(3, 'せっかく訪れた博物館での思い出や学びを忘れてしまう、そんな事が多々あり当アプリを制作いたしました。', 'Xcode', 'iOS', 'Swift', 'なし', 'なし', 'なし', '博物館の記録に特化したシンプルさ', 'なし', 'なし', 'https://www.youtube.com/watch?v=S32Qr49ykeU');
INSERT INTO `information` (`app_id`, `haikei`, `kankyou`, `OS`, `language`, `server`, `app_Framework`, `db_Framework`, `point`, `not_function`, `site`, `movie`) VALUES(4, '・筋トレを１年間続けることができる人はわずか５％・コロナ禍により約６割の人が筋力低下を実感・コロナ禍を機に８割以上の人が屋内トレーニング・トレーニングの効果を実感している人がそのうちたったの２割これらの問題を解消するには、モチベーションを維持する必要やフォームを正しく行う必要がある。しかし、モチベーションを保つには短期と長期それぞれ続けることができる目標が必要であり、また正しいフォームでのトレーニングには、専門知識が必要であり、それを得るには相応の時間も必要になる。それらの課題を一括に解決するために提案されたのが本アプリである。', 'Xcode', 'iOS', 'Swift', 'firebase(Google系)', 'なし', 'なし', 'センサーで動作を測定し、音声案内でサポートするところ', 'なし', 'https://github.com/CMMuscle/FormTrainer', 'なし');
INSERT INTO `information` (`app_id`, `haikei`, `kankyou`, `OS`, `language`, `server`, `app_Framework`, `db_Framework`, `point`, `not_function`, `site`, `movie`) VALUES(5, '釣り禁止場所が増加しているのでその情報の共有と増加を抑制するため', 'AndroidStudio', 'Android', 'Java', 'ロリポップ', 'なし', 'phpmyadmin', 'マップにピンが追加できる', '表示するピンの切り替え、アプリを開いた時に自分の現在地にとぶ', 'なし', 'https://www.youtube.com/watch?v=-nDrBp66bTA');
INSERT INTO `information` (`app_id`, `haikei`, `kankyou`, `OS`, `language`, `server`, `app_Framework`, `db_Framework`, `point`, `not_function`, `site`, `movie`) VALUES(6, '・昨今の地球温暖化による気温上昇とともに犬の体感温度も上昇している傾向にある。そのため飼い主は散歩を行うタイミングに配慮するのが不可欠となってきている。・飼い主(人間)にとって犬の体感温度を把握し、犬にとって適温かどうか判断するのは難しい。・家族間(複数人)で世話をしている場合、規定量の餌を与えたかどうかの確認はチャットツールや直接のコミュニケーションを通すことでしか把握することができない。', 'Xcode', 'iOS', 'Swift, PHP, C', 'ロリポップ', 'なし', 'なし', '愛犬の写真が大きく表示されます。', 'なし', 'なし', 'なし');
INSERT INTO `information` (`app_id`, `haikei`, `kankyou`, `OS`, `language`, `server`, `app_Framework`, `db_Framework`, `point`, `not_function`, `site`, `movie`) VALUES(7, '近年続いている値上げラッシュに抵抗するためチラシアプリで安値の商品を探していたものの、画像が拡大しないと見ずらかったりチラシ画像の裏表面をいちいち切り替えるなど煩わしい場面が多いと感じたため、見やすいアプリを作りたいと考えトクシェアの開発に至りました。', 'Xcode', 'iOS', 'Swift', 'firebase(Google系)', 'なし', 'なし', '投稿の検索時に商品名、価格、店舗名のいずれかで検索することができます。', '位置情報を取得して現在地に近い店舗の投稿を表示する機能', 'https://github.com/mrym-akn/TokuShare', 'なし');
INSERT INTO `information` (`app_id`, `haikei`, `kankyou`, `OS`, `language`, `server`, `app_Framework`, `db_Framework`, `point`, `not_function`, `site`, `movie`) VALUES(8, '安全的に通信できて、パースワードでも送れるアプリを作りたいと思ってきた。', 'Xcode', 'iOS', 'Swift, Java', 'Windows Server 2012 R2', 'なし', 'なし', '自由な暗号化チャットアプリ', '新規、登録、Account遷移、友達の追加、チャット', 'https://github.com/Ruoyu05/SECME_Source_Code', 'https://www.youtube.com/watch?v=cI-Cj-AglbU');
INSERT INTO `information` (`app_id`, `haikei`, `kankyou`, `OS`, `language`, `server`, `app_Framework`, `db_Framework`, `point`, `not_function`, `site`, `movie`) VALUES(9, '日本電子の学生は、授業課題や準備、連絡事項の確認のためにclassroomを使用します。学科教員から個別にメールが送られてきたりもしますが、通知がしっかり届かなかったり、重要な学校からのメールが埋まってしまうなどの問題が多く発生してしまっています。また、教員からは学生にちゃんと伝わっているのかが不安になるという言葉も耳にします。', 'AndroidStudio', 'Android', 'PHP, Java', 'ロリポップ, firebase(Google系)', 'retrofit2, scircleimageview', 'なし', 'ユーザーが分かりやすく使えるように実装しました。', 'チャット履歴を端末本体に保存させる機能', 'https://github.com/Rai-46/JECNOTE', 'https://www.youtube.com/watch?v=04cJ4AhRPKo');

-- --------------------------------------------------------

--
-- テーブルの構造 `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `student_id` char(8) NOT NULL,
  `student_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `student`
--

INSERT INTO `student` (`student_id`, `student_name`) VALUES('21cm0104', '石塚愛華');
INSERT INTO `student` (`student_id`, `student_name`) VALUES('21cm0107', '伊部壮真');
INSERT INTO `student` (`student_id`, `student_name`) VALUES('21cm0110', '大貫伽奈');
INSERT INTO `student` (`student_id`, `student_name`) VALUES('21cm0117', '清田義常');
INSERT INTO `student` (`student_id`, `student_name`) VALUES('21cm0128', '西澤耕平');
INSERT INTO `student` (`student_id`, `student_name`) VALUES('21cm0135', '宮坂 依吹');
INSERT INTO `student` (`student_id`, `student_name`) VALUES('21cm0137', '村山茜');
INSERT INTO `student` (`student_id`, `student_name`) VALUES('21cm0138', 'ユロウユ');
INSERT INTO `student` (`student_id`, `student_name`) VALUES('21cm0146', '白井裕人');

-- --------------------------------------------------------

--
-- テーブルの構造 `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
  `tag_id` int(11) NOT NULL,
  `tag_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `tag`
--

INSERT INTO `tag` (`tag_id`, `tag_name`) VALUES(1, 'iOS');
INSERT INTO `tag` (`tag_id`, `tag_name`) VALUES(2, 'Android');
INSERT INTO `tag` (`tag_id`, `tag_name`) VALUES(3, 'IoT');
INSERT INTO `tag` (`tag_id`, `tag_name`) VALUES(4, 'firebase');
INSERT INTO `tag` (`tag_id`, `tag_name`) VALUES(5, 'Bluetooth');
INSERT INTO `tag` (`tag_id`, `tag_name`) VALUES(6, 'AR');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
