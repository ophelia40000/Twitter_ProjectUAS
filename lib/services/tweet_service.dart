import 'package:twitter_clone/models/tweet_model.dart';

class TweetService {
  static List<TweetModel> getTweet() {
    return [
      TweetModel(
        namaPengguna: 'Yupi_Hunter😺',
        username: 'KucingGeng',
        body:
            'Ayo Sini Gelud',
        url: '',
        image: ['assets/images/image2.jpeg',],
        verified: 'no',
        otomatis: '',
        createdAt: DateTime.now(),
        comment: ['NESVERLAND', 'Marvel', 'Penguin🐧'],
        retweet: ['NESVERLAND', 'Marvel'],
        like: ['NESVERLAND', 'Marvel'],
        view: 2200,
      ),
      TweetModel(
        namaPengguna: 'Rocky_Ackerman🍉',
        username: 'NESVERLAND',
        body:
            'buat yang masih penasaran sama awal mula meme template "dan naga" yak semua berawal dari user twitter satu ini 😭 jujur gw masih ngakak tiap liat screenshootan ini sumpah 😭',
        url: '',
        image: ['assets/images/image2.jpeg',],
        verified: 'no',
        otomatis: '',
        createdAt: DateTime.now(),
        comment: ['NESVERLAND', 'Marvel', 'Penguin🐧'],
        retweet: ['NESVERLAND', 'Marvel'],
        like: ['NESVERLAND', 'Marvel'],
        view: 2200,
      ),
      TweetModel(
        namaPengguna: 'Marvel Entertaintment',
        username: 'Marvel',
        body:
            'Tom Hiddleston discusses Loki and Mobius friendship throughout Season 2: "Mobius and Loki are kind an odd couple, but they found a friendship. They make each other better."',
        url: 'https://t.co/WkwT1lYuTJ',
        image: [],
        verified: 'yellow',
        otomatis: '',
        createdAt: DateTime.now(),
        comment: ['Marvel', 'NESVERLAND', 'Penguin🐧', 'tang_kira', 'AXISgsm',],
        retweet: ['Marvel', 'NESVERLAND', 'Penguin🐧', 'tang_kira', 'AXISgsm',],
        like: ['Marvel', 'NESVERLAND', 'Penguin🐧', 'tang_kira', 'AXISgsm'],
        view: 384100,
      ),
      TweetModel(
        namaPengguna: 'Why you should have a penguin',
        username: 'Penguin🐧',
        body:
            'Hiiii!!!',
        url: '',
        image: ['assets/images/image3.jpeg',
                'assets/images/image4.jpeg',
                'assets/images/image5.jpeg',
                'assets/images/image6.jpeg',
                'assets/images/image7.jpeg',
                'assets/images/image8.jpeg',
        ],
        verified: 'no',
        otomatis: '',
        createdAt: DateTime.now(),
        comment: ['Penguin', 'NESVERLAND'],
        retweet: ['Penguin'],
        like: ['Penguin', 'NESVERLAND', 'tang_kira',],
        view: 327,
      ),
      TweetModel(
        namaPengguna: 'Bintang',
        username: 'tang_kira',
        body:
            'Kok ga ada yang merhatiin anak saya? Anak umur 3 tahun loh. Seorang ibu di Korea Selatan curhat ke tetangganya karena anaknya yang berusia 3 tahun naik lift sendiri di apartemen dari lantai 3 ke lantai 30. Sampai sang ibu panik banget nyariin anaknya dari satu lantai ke lantai lain. Akhirnya petugas keamanan yang nganter anak itu pulang lagi ke ruangan apartemen dia.',
        url: '',
        image: [],
        verified: 'no',
        otomatis: 'NESVERLAND',
        createdAt: DateTime.now(),
        comment: ['tang_kira', 'Penguin🐧',],
        retweet: ['tang_kira', 'Penguin🐧',],
        like: ['tang_kira', 'NESVERLAND',],
        view: 1511,
      ),
      TweetModel(
        namaPengguna: 'AXIS',
        username: 'AXISgsm',
        body: 'Bisa atur waktu internet pas main sosmed, gak perlu takut kuota terbuang sia-sia!',
        url: 'https://www.axis.co.id/produk/paket-internet/paket-teng-go?utm_source=WM_TWITTER&utm_medium=video_CPM_Video&utm_campaign=AXIS_2038IDWM141506TAC-WEB-TENGGO&utm_content=2038IDWM141506TAC-WEB-TENGGO',
        image: [],
        verified: 'blue',
        otomatis: '',
        createdAt: DateTime.now(),
        comment: ['AXISgsm',],
        retweet: ['AXISgsm',],
        like: ['AXISgsm', 'NESVERLAND', 'tang_kira'],
        view: 9830,
      )
    ];
  }
}