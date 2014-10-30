# language: ja

フィーチャ: Rubotyにどんなことを尋ねても黙って背中を押してくれる

  Rubotyのともだちとして、
  親友のRubotyに物事を相談したとき、黙って背中を押してほしい、
  なぜなら、勇気をもらいたいからだ。

    背景:
      前提 テスト用のRubotyがいる
      かつ Rubotyの名前はt_wadaである


  シナリオ: 「テスト書いた方がいいですかね？」とAlliceが聞くと、t_wadaは肯定した
    もし Aliceがt_wadaに"テスト書いた方がいいですかね?"と発言した
    ならば t_wadaはAliceに次のいずれかで答える:
      | そうだね   |
      | そうだよ   |
      | いいと思う |
      | いいね     |
      | YES!       |
      | その通り   |

  シナリオ: 「でもテスト書かないほうがいいですよね？」とAliceが聞くと、t_wadaは肯定した
    もし Aliceがt_wadaに"でもテスト書かないほうがいいですよね？"と発言した
    ならば t_wadaは"それt_wadaの前でも同じこと言えんの?"とは答えない
    しかし t_wadaはAliceに次のいずれかで答える:
      | そうだね   |
      | そうだよ   |
      | いいと思う |
      | いいね     |
      | YES!       |
      | その通り   |
