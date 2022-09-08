-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Sep 2022 pada 15.33
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `see-blog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2022-09-03 02:43:46', '2022-09-03 02:43:46'),
(2, 'Web Design', 'web-design', '2022-09-03 02:43:46', '2022-09-03 02:43:46'),
(3, 'Personal', 'personal', '2022-09-03 02:43:46', '2022-09-03 02:43:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_08_29_043616_create_categories_table', 1),
(6, '2022_08_29_044420_create_posts_table', 1),
(7, '2022_09_03_113206_add_is_admin_to_users_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 'Eligendi aut excepturi quidem et accusantium.', 'quasi-deleniti-ipsa-et-voluptatem-quia-velit', NULL, 'Nostrum ut culpa error necessitatibus. Ut harum natus dignissimos adipisci dolorum. Voluptas et non voluptatem exercitationem dolorum. Repellat est eveniet aperiam enim possimus dolores tempora.', '<p>At omnis suscipit quod ut unde molestiae. Dolore impedit ea quibusdam quia corporis. Velit ut aut et enim nemo. Nam eveniet accusantium et suscipit atque esse sapiente.</p><p>Voluptas praesentium rerum ut et praesentium inventore animi ab. Omnis reiciendis odio sunt officia eveniet. Sint fugit est nihil sint ut reprehenderit consequatur.</p><p>Odit eos odit facilis et et. Maxime necessitatibus et impedit. Voluptatem explicabo accusamus consequuntur.</p><p>Voluptatem sed doloremque et dolorem. Dolore qui deserunt nulla maiores. Saepe ex expedita cum ipsa.</p><p>Inventore enim qui debitis id temporibus laboriosam iure. Repudiandae rem molestiae autem quia earum consequatur. Reiciendis hic tempora id officia. Id autem numquam adipisci voluptatibus aspernatur sint.</p><p>Quidem et recusandae voluptas harum id nisi blanditiis earum. Facere temporibus adipisci in aut magni ab minima. Eveniet voluptatem assumenda eligendi pariatur.</p><p>Quasi illo autem aspernatur sequi expedita aliquam. Voluptate corrupti porro suscipit tempora possimus distinctio soluta.</p><p>Voluptatem itaque nesciunt ipsa possimus deleniti id dolor. Voluptate quis soluta aperiam vero sit facere totam. Dolorem delectus explicabo eaque voluptatibus modi rerum quia. Aut non reiciendis aperiam non nulla minima labore.</p>', NULL, '2022-09-03 02:43:47', '2022-09-03 02:43:47'),
(2, 2, 2, 'Sapiente sed officiis harum maxime architecto.', 'id-dicta-placeat-velit-laborum-est-non-est', NULL, 'A maxime saepe ex ut. Illo totam aut aliquam et delectus ut recusandae. Et earum dolores soluta non molestias architecto. Beatae mollitia quasi libero autem qui soluta.', '<p>Corrupti illum eos omnis quaerat molestias id possimus sint. Distinctio velit sunt cumque nisi quia dolor consequuntur.</p><p>Provident vel velit maiores eaque fugiat. Est voluptate minus molestiae numquam sunt veniam adipisci esse. Excepturi est dolorem voluptatibus distinctio quaerat.</p><p>Praesentium alias cumque velit ut ea quia. Atque veniam dolor quis veniam molestiae vel fuga. Rerum quia qui qui voluptas. Fuga voluptatem maiores quibusdam fuga velit ea fugiat.</p><p>Ea veritatis dolore dolore expedita maiores quia quia. Quaerat modi qui fugiat doloremque autem. Minus voluptas recusandae aut. Id consequuntur totam omnis ea quo quod dolores.</p><p>Dolores saepe consequatur sit voluptas perspiciatis inventore. Nam consequatur id tempora quis. Facere enim alias quaerat.</p><p>Praesentium soluta eligendi voluptate autem dolorem aut. At ad quidem quisquam reiciendis molestias ratione fugiat quasi. Quo dolorem dignissimos aspernatur provident consequatur voluptatum. Odit quis voluptas tempora est qui porro qui. Unde in dolorem et deserunt earum hic.</p>', NULL, '2022-09-03 02:43:47', '2022-09-03 02:43:47'),
(3, 1, 1, 'Provident omnis.', 'nobis-occaecati-eaque-ut-vel-enim-alias', NULL, 'Impedit eligendi nulla officiis dolorum temporibus distinctio praesentium sapiente. Nostrum unde iusto voluptatem sequi. Autem ut vel et quasi aut sapiente ut quidem.', '<p>Consequatur odit autem non nam adipisci et. Veritatis quia in tempora sint alias quos. Inventore sed sed non eos numquam ut. Impedit quae in quos velit ullam atque beatae.</p><p>Molestiae ut quaerat facilis. Sit neque itaque iure omnis voluptatem quo amet praesentium. Ut nam quis autem sint et laborum sapiente omnis.</p><p>Voluptas id consequatur deleniti qui aperiam. Ut quidem saepe omnis. Quaerat blanditiis pariatur ea magni inventore aut iste dolor. Numquam deserunt animi cumque aut voluptatem commodi est facilis.</p><p>Nihil illum ut animi saepe. Molestiae eaque illo recusandae excepturi error fugit. Aperiam voluptatibus aut quo temporibus.</p><p>Qui facere sit eos officia quo voluptatem quasi necessitatibus. Iure et dolor explicabo consequatur harum consequatur dignissimos odit. Dolorum rerum cumque perspiciatis ex voluptas. Officia officia sint cumque illo vel natus.</p>', NULL, '2022-09-03 02:43:47', '2022-09-03 02:43:47'),
(4, 1, 3, 'Eligendi unde.', 'commodi-sit-alias-nihil-provident-tempore-sit-suscipit', NULL, 'Consequatur error assumenda tenetur exercitationem qui consequatur dignissimos fuga. Sapiente qui illum veniam aut ducimus. Repellat provident molestiae nulla ipsum. Minima quasi in non deleniti blanditiis dolores.', '<p>Illo qui repudiandae dolores occaecati corrupti. Nulla officiis explicabo autem incidunt. Est mollitia dolor nam est.</p><p>Illo rerum quasi voluptatibus eos et inventore eos repellat. Vero placeat nisi consequatur quam voluptatem porro iste. Omnis repudiandae consequuntur omnis omnis. Mollitia aliquid odio id corporis laboriosam est nesciunt nihil. Laborum perferendis vel aut illo dolorem rerum.</p><p>Fuga quia cum reiciendis omnis. Amet ut optio nemo labore dolorem similique et. Adipisci minus velit et sint. Tenetur quis placeat nisi velit et labore.</p><p>Nisi consequatur nulla quaerat consectetur non excepturi ut incidunt. Sed possimus pariatur consequuntur est id. Nemo blanditiis autem praesentium ea harum quasi reiciendis. Rerum eos aperiam omnis officiis cumque est.</p><p>Itaque suscipit qui et voluptates itaque rem est est. Natus ad dolorem doloribus ut perspiciatis. Autem excepturi et et tenetur est.</p><p>Placeat veniam molestiae repellat commodi veritatis inventore. Suscipit id adipisci excepturi aut omnis labore atque. Consequatur qui aut quae molestiae quia. Quia harum quo amet et laboriosam necessitatibus rem.</p><p>Molestiae est quam nam maiores aut voluptatibus dolorem beatae. Accusantium et rem dolorem magnam et. Veniam id omnis voluptates aut recusandae voluptatum qui. Facilis adipisci autem facilis blanditiis iste rerum. Minus provident perspiciatis inventore nam rem.</p><p>Adipisci ipsum quod asperiores fugit inventore non. Quisquam hic nisi est sunt ab accusamus molestiae qui. Culpa qui consequuntur est quia animi beatae culpa.</p><p>Voluptates aut ut quod ut. Quo voluptatem molestias dolores sint. Consequatur inventore voluptatem ut omnis earum. Iusto dolores saepe blanditiis cumque. Repudiandae incidunt aut nobis adipisci iste odit et doloremque.</p><p>Nulla eos rerum illo impedit commodi corporis. Accusamus labore consectetur dolores. Et laboriosam atque voluptatem voluptatem mollitia.</p>', NULL, '2022-09-03 02:43:47', '2022-09-03 02:43:47'),
(5, 2, 2, 'Similique rem commodi.', 'quo-suscipit-natus-perferendis', NULL, 'Vel consequuntur maxime beatae odio pariatur labore voluptatibus. Voluptas velit culpa veniam aut provident facere itaque illum. Itaque voluptas autem eligendi assumenda vitae.', '<p>Veritatis voluptatem omnis officia doloremque corporis et. Dicta placeat ea aut itaque incidunt ipsam. Qui illo nemo ut ea deserunt quasi aperiam.</p><p>Numquam commodi dolore ab debitis fugiat. Cupiditate ex ut maiores sed sit deserunt. Excepturi aut a perspiciatis ut a amet unde magni.</p><p>Dolores optio impedit adipisci architecto voluptas molestiae impedit. Quae provident delectus ipsam magnam porro eaque commodi. Consequuntur eligendi odit possimus sit in.</p><p>Id nesciunt neque iusto deserunt adipisci qui voluptatem. Perferendis vel sint est incidunt. Necessitatibus sit nostrum rerum ullam quibusdam nostrum dolore.</p><p>Ab ipsam est pariatur praesentium et quaerat est. Ea dolorem architecto a totam veritatis temporibus sequi. Cum magni voluptatum vel adipisci numquam numquam. Quas omnis in porro omnis. Et et perspiciatis voluptas reiciendis ex.</p><p>Aspernatur id id non laborum. Sint est maiores ut dolorum. Molestias aut voluptatem alias eos dicta. Sint maxime non tempora cum excepturi aut.</p><p>Neque qui aut sint consequatur assumenda. Quaerat et excepturi non labore. Eveniet veniam dolor porro ducimus consequatur saepe. Debitis culpa architecto placeat incidunt exercitationem.</p><p>Tempora aut beatae voluptatem rerum consequatur quia natus sunt. Quos veniam iste numquam et. Rerum ab perspiciatis praesentium qui. Cum minima consectetur maiores qui temporibus harum. Atque et doloribus quae eos laudantium officiis.</p><p>Aut qui quasi omnis perspiciatis illum voluptas quia. Perferendis aperiam cum qui aspernatur sint id aliquid. Reprehenderit quasi eius dolores ut voluptatem et. Voluptates ut molestiae nihil aspernatur molestias voluptatum ut.</p><p>Aut nobis sapiente sed doloremque facilis ad velit nihil. Aut est occaecati nulla ipsam id et eos unde. Magnam voluptas expedita ab a placeat explicabo. Beatae velit eligendi qui impedit blanditiis enim.</p>', NULL, '2022-09-03 02:43:47', '2022-09-03 02:43:47'),
(6, 1, 1, 'Voluptatem nesciunt quasi et.', 'numquam-ut-et-cumque-harum', NULL, 'Corrupti dolore ut autem incidunt corporis. Sed temporibus consequatur facere quis natus. Ab reiciendis assumenda aut ipsa quas in ex. Dolore tenetur non omnis dolorum eligendi quia dolorem.', '<p>Exercitationem ut porro quis dolor impedit nulla. Repellat esse voluptate omnis nesciunt numquam exercitationem sequi. Aut iusto voluptatem dolor adipisci maiores consequatur tenetur.</p><p>Rem et neque enim dolorem voluptas. Nobis sed inventore esse fuga non. Consectetur est et quidem accusantium voluptatem. A debitis atque accusantium voluptatem.</p><p>Ea quae quam rem error ipsa omnis laborum. In hic officia facilis odio repellendus ut quia dolorem. Ipsum et nihil nesciunt et at laboriosam. Repudiandae quae temporibus consequatur dolores qui sunt nulla.</p><p>Veritatis et pariatur officiis et. Quaerat non magnam repudiandae ex. Beatae ut nobis amet et quo numquam nemo.</p><p>Sed explicabo nobis est est beatae deleniti quam. Quia veniam eaque tenetur dolore fuga. Non quam voluptas aut est ut porro et. Ab ipsum nemo corporis ipsam optio est placeat.</p><p>Molestiae fugit ut sunt doloremque in vitae. Voluptatem consequatur aut et voluptatem dolorem minus. Libero qui voluptas nostrum recusandae maxime soluta.</p><p>Aspernatur hic laborum minima laudantium velit. Fugiat fugiat qui eaque odit sunt. Est soluta dolor praesentium inventore iure ratione enim.</p><p>Unde quo delectus saepe adipisci enim sit facere. Voluptas possimus ut aut dolorem vitae. Est molestias enim libero qui vero aliquam. Cum et alias commodi a quibusdam nemo et.</p>', NULL, '2022-09-03 02:43:47', '2022-09-03 02:43:47'),
(7, 2, 3, 'Sit nam maxime eum dolor nihil.', 'minus-autem-incidunt-minima-totam-quis-reprehenderit', NULL, 'Expedita quos expedita est facere accusamus quibusdam. Ex sit facilis voluptatem.', '<p>Et ipsa officiis dolor deserunt omnis ab autem est. In velit commodi ut quam molestias soluta sit quisquam. Tenetur maxime qui illo velit.</p><p>Praesentium tenetur ut ut. Est culpa laborum voluptates est rerum blanditiis. Adipisci animi numquam quo voluptatem cumque ex velit quis.</p><p>Autem expedita reiciendis molestiae earum vel enim. Eius cum in cupiditate quaerat. Est quibusdam sapiente rerum eum.</p><p>Quibusdam cupiditate eos qui eligendi. Rerum dolore et atque fugit. Quaerat eum sapiente recusandae harum officia enim delectus quibusdam. Rerum omnis molestiae modi placeat autem est natus eligendi.</p><p>Quo sint nulla ut eligendi quia adipisci. Pariatur culpa ut distinctio qui et quidem. Id iste quos blanditiis est magni reprehenderit rerum.</p><p>Assumenda consequatur sed dolorum sed voluptates velit deserunt. Nihil harum nihil quae qui et minima. Nisi accusamus et accusantium nobis dolor.</p><p>Iste adipisci voluptas aut nobis. Dolorem eius laborum est eveniet ut odit et.</p><p>Recusandae non qui fugiat totam. Voluptatem aut ut et pariatur dolor ea enim dolor. Et aut sint sapiente voluptatem.</p>', NULL, '2022-09-03 02:43:47', '2022-09-03 02:43:47'),
(8, 1, 3, 'Quibusdam itaque.', 'voluptatem-sequi-id-dolor-placeat', NULL, 'Ipsa debitis rem unde aliquam nemo ea quia ut. Sed ducimus doloribus quia fugit debitis. Ipsa reprehenderit esse consequuntur reiciendis aperiam beatae consequatur.', '<p>Blanditiis non quis necessitatibus deserunt voluptatem. Cumque facere recusandae doloribus qui exercitationem reiciendis. Rerum ut voluptatum ratione qui. Assumenda non autem delectus voluptas.</p><p>Aliquid est exercitationem itaque pariatur vel occaecati. Esse est et velit et qui. Porro unde adipisci dignissimos quasi repellendus. Eius vel similique enim.</p><p>Voluptas minus omnis atque consequuntur. Provident et voluptatem rem consectetur eum tenetur eum. Facere id incidunt fuga ducimus.</p><p>Doloribus autem rerum iusto vel atque. Sint dolor ipsam inventore harum. Tempore sit libero aut assumenda neque aliquid et. Quo qui tenetur et cumque suscipit.</p><p>Harum totam ullam aut aut perferendis. Ipsum quia totam aut natus perspiciatis tenetur dicta. Deserunt qui quod architecto mollitia eum. Quos pariatur nihil ullam assumenda et quis.</p>', NULL, '2022-09-03 02:43:47', '2022-09-03 02:43:47'),
(9, 2, 2, 'Quos quis ut.', 'quia-similique-qui-quo', NULL, 'Debitis dolores voluptates nostrum eum explicabo nam nulla asperiores. Eum et commodi aut in. Unde possimus vero vero debitis sunt. Amet consequuntur repellat voluptatibus consequatur quam non numquam.', '<p>Et est harum dolor voluptatem. Eligendi nihil ut debitis consequuntur. Quisquam esse illo laudantium quod officiis fuga quo nihil. Voluptatibus atque rerum molestias iste ut.</p><p>Quis et quia minima explicabo maiores. Ea ut error impedit aliquid culpa ipsam quidem dolor. Totam totam accusamus nobis et eaque. Ex voluptate iusto dolorem dolores autem rerum tempore.</p><p>Error maiores veritatis facilis dignissimos voluptas. Quia et aut explicabo. Eos est ex voluptates voluptatum omnis.</p><p>Nobis numquam ullam cupiditate exercitationem iste qui sint repellat. Laboriosam ut accusantium sed perspiciatis. Ut illo aperiam et. Vero rem laudantium dolorem fugiat minus dolor iusto. Dolorum repellat voluptatibus voluptas aliquid et.</p><p>Aut molestiae vel illo modi. Ad quaerat dolorum sed quam amet dolores. Laboriosam ullam molestias amet saepe eos beatae. Dolorem sunt ipsa magnam sed occaecati ex reprehenderit.</p><p>Eveniet pariatur qui iure id. Et neque error consequuntur voluptas dolor. Error perferendis impedit laboriosam velit.</p><p>Esse fuga sint velit reiciendis sequi dolor repudiandae. Dignissimos dolorum totam voluptatem itaque. Asperiores beatae voluptates dolorum ea quod. Eaque repellendus quia maxime excepturi occaecati.</p><p>Ad totam laudantium sit fugiat ullam odio dolores. Unde deleniti non aut culpa perspiciatis eius.</p>', NULL, '2022-09-03 02:43:47', '2022-09-03 02:43:47'),
(10, 1, 2, 'Facilis earum atque minima et.', 'accusantium-blanditiis-earum-suscipit', NULL, 'Inventore perferendis sint dolores fugit. Nisi aut explicabo eum alias culpa vero commodi. Repellendus fugit rerum et praesentium. Laborum iusto dolor voluptate.', '<p>Iure dignissimos ut aliquam voluptas nihil aspernatur ratione. Non totam ut possimus. A est modi sapiente dolores quo repellendus. Nam assumenda est voluptatum et.</p><p>Ipsa illo qui animi a aut. Eos et ut deleniti itaque delectus. Veritatis similique esse iure unde ut magni nihil. Magni nihil iusto porro accusantium qui voluptatibus minima ab.</p><p>Nihil ducimus culpa provident itaque. Impedit aliquam dolorum quis libero cum beatae nisi. Deserunt expedita assumenda similique. Suscipit aut ut voluptatem libero occaecati cum rem et.</p><p>Est asperiores quia deserunt tempora maxime voluptatem voluptate. Similique veritatis blanditiis sed vitae corrupti. Nam provident enim vel ut.</p><p>Et sint veritatis delectus sequi omnis. Quisquam odio nihil distinctio ipsa et ratione. Minus at iste assumenda ad ut.</p><p>Deleniti id architecto explicabo quia recusandae ut. Rem minus officia nulla vitae aut. Architecto dolores aperiam eligendi aspernatur. Natus sunt numquam quo est ut.</p><p>Autem et modi aperiam tempore facere non cum. Error unde vel aliquid minus autem ad. Aut et hic quia magni est molestias. Sit et labore quia qui sit non aliquam.</p><p>Qui molestiae ipsam eveniet fuga officia. Quis voluptatem enim doloremque et. Iure perferendis reiciendis rerum labore omnis neque error perspiciatis. Ut error est consequatur sit suscipit quas minima.</p>', NULL, '2022-09-03 02:43:47', '2022-09-03 02:43:47'),
(11, 1, 3, 'Assumenda est fugiat commodi ad libero.', 'est-voluptate-et-tempore', NULL, 'Saepe maxime quam quae aut aut sed fuga. Optio quis sit et. Occaecati voluptas sint error sint corrupti.', '<p>Distinctio quas eum consequuntur pariatur nihil esse cumque voluptatibus. Molestiae quia omnis sint qui. Soluta beatae a labore ea. Sit ut quam ut et vel est dignissimos.</p><p>Nihil repellat sit consequatur corporis magnam aut aut. Earum sunt molestiae ab voluptas voluptas excepturi ex. Aut et est ducimus alias voluptatum enim voluptatem.</p><p>Temporibus consequatur doloremque occaecati sapiente dicta inventore. Maxime qui dolore dignissimos et. Sit sed aspernatur autem reiciendis quia laudantium molestias.</p><p>Iure est officia libero consequatur consequuntur perferendis. Eius ut et eius corrupti est rem maxime nulla. Voluptatem dignissimos rem quia eum earum. Hic nobis pariatur asperiores consectetur eum a quis.</p><p>Delectus rem eveniet ut sunt recusandae accusamus ut. Reprehenderit ratione ipsa cum modi similique itaque atque. Maiores sed velit est at eum ducimus quo. Qui reiciendis deserunt eum quos consequatur consequatur voluptatem at.</p><p>Animi est consequatur dolores similique recusandae et neque eligendi. Voluptas sint omnis dicta consectetur eos ipsa mollitia.</p><p>Cum omnis quo veritatis ut. Nemo laborum odit aperiam et. Laudantium non fugiat veritatis quibusdam. Illum perspiciatis et ut culpa velit et. Omnis nostrum odio facilis exercitationem ipsum.</p><p>Et nesciunt nisi molestiae aperiam et cum. Vero eum dolore aut ducimus voluptatem maxime sed. Possimus et natus ipsa vero nam aut.</p><p>Quibusdam voluptatem eius tempora sed exercitationem consectetur impedit incidunt. Neque architecto incidunt suscipit eos voluptatem blanditiis sit sint. Distinctio qui doloribus dolor eos nesciunt. Et vel dolore minus rerum.</p><p>Neque id consequatur ducimus. Sapiente enim autem nesciunt et nihil dolorem. Et excepturi delectus at ea dolorem qui.</p>', NULL, '2022-09-03 02:43:47', '2022-09-03 02:43:47'),
(12, 1, 3, 'Libero animi temporibus labore voluptas voluptas vero maxime fugiat sed.', 'voluptate-aut-libero-quibusdam-consectetur-eos', NULL, 'Accusantium aut vero inventore ut sit qui recusandae. Quia quia eaque aut animi ea voluptatem porro.', '<p>Aut aspernatur maxime ut itaque et neque voluptatem. Rerum numquam sit repellat alias aut. Consequatur ut velit ipsum. Et veritatis fugiat molestiae laboriosam aperiam corrupti ad.</p><p>Quis laborum reiciendis beatae laboriosam nam. Et eum voluptas modi. Et voluptatem voluptatem deserunt aut.</p><p>Voluptas dolorem quidem minus est. Debitis rem eligendi qui.</p><p>Illum neque dicta at aut magnam ratione eligendi. Sunt assumenda delectus quis aut eos dolorem cumque. Culpa sit molestiae est quia odit. Aspernatur quia totam earum non nam voluptates.</p><p>Excepturi sint earum eos dolores voluptatem. Est nemo asperiores quis ad excepturi corrupti consequatur.</p><p>Iste molestiae tempora velit ut ipsam deserunt quidem. Facere et nobis architecto quaerat ut. Rem et qui mollitia qui. Numquam et consequuntur minima occaecati.</p><p>Atque enim et consequatur et ut sequi deserunt. Voluptas voluptatem quam atque facere aut. Numquam sint et nisi qui necessitatibus quidem vel. Aut eveniet aut quaerat deleniti blanditiis est fugiat.</p><p>Non dolorem aut ipsum dolores amet tempora libero. Deleniti sit animi et sapiente dolor sed minus. Dolores incidunt magnam quas consectetur. Et et temporibus nam aliquid.</p>', NULL, '2022-09-03 02:43:47', '2022-09-03 02:43:47'),
(13, 1, 1, 'Autem est et magni aut ipsam doloribus.', 'quis-rerum-voluptatum-dolor-accusamus', NULL, 'Totam aut odio qui error ut. Eius natus aperiam id quae molestias. Sunt doloribus perferendis doloremque et soluta dolores distinctio fugit. Odit ab quaerat qui eos quam magnam voluptatem cum. Ad cupiditate expedita error nihil exercitationem eaque dolorum.', '<p>Quo atque est sed ipsa a aut. Magnam non maxime molestias harum aut est dolorum. Eos nesciunt provident molestiae ab ea. Culpa dicta nam adipisci suscipit dolorum aut. Amet sit corrupti qui recusandae sint sit dignissimos.</p><p>Architecto aut sit asperiores cum assumenda quis occaecati. Commodi sit tempora fuga doloremque rerum neque distinctio. Ea deserunt sit magni et aut laudantium placeat. Voluptatibus quibusdam et consequatur tenetur saepe et eos.</p><p>Doloribus autem libero qui fuga. Aperiam vitae commodi distinctio aliquam et. Est voluptatem assumenda aut excepturi quos. Minima ex debitis incidunt provident. Suscipit neque aut amet et soluta sint.</p><p>Ea blanditiis velit hic velit provident repellat voluptatum earum. Exercitationem impedit sit nesciunt eligendi. Modi asperiores rerum error ut. Non error voluptas et.</p><p>Maxime aut voluptatem numquam minus doloribus distinctio nesciunt ab. Excepturi corrupti aut magnam qui esse autem fugit. Et reiciendis et sunt porro sed accusantium ut.</p><p>Eius quia ut perferendis at voluptatem. Eos mollitia iusto quos autem ipsa nam. Nam ut sit nam adipisci vero.</p><p>Eum et dolorem sed sit voluptatibus ut. Voluptatem alias labore ratione aspernatur maiores voluptates ex. Et exercitationem deleniti et quod. Culpa reprehenderit consequatur sunt enim ipsum.</p><p>Consequatur quo et doloribus. Est facilis est saepe aut et quas. Distinctio ullam aut provident ad velit non ullam. Et voluptatem recusandae omnis aut.</p><p>Quia et aut dolores reprehenderit natus. Maxime possimus voluptatem vel sint. Aut numquam quam nihil iusto provident numquam et. Ut beatae cum dolores delectus et sunt. Mollitia rerum nulla esse blanditiis.</p>', NULL, '2022-09-03 02:43:48', '2022-09-03 02:43:48'),
(14, 1, 3, 'Aut nulla rerum.', 'corporis-eligendi-beatae-voluptatum', NULL, 'Aut suscipit id voluptates consectetur suscipit non eveniet. Dolore neque amet ut ut harum. Facilis rerum voluptatum vero ipsum consequatur aperiam fugiat.', '<p>Commodi et sint suscipit doloribus. Sit deserunt cum ab culpa labore ea sed. Asperiores eos perferendis molestiae sit.</p><p>Aliquid repellat saepe totam minus sequi. Atque nobis voluptatem sit. Dolore nostrum quibusdam et eaque. Ut autem distinctio consequatur et hic.</p><p>Ipsa et est deserunt architecto cupiditate non. Ducimus omnis facere eligendi tempore perferendis qui et labore. Sint quidem tempore omnis dolorem dolorum sed non. Velit et pariatur consequuntur nobis ex ut.</p><p>Voluptatem et dolore molestiae sint laborum voluptatum suscipit. Non sit nihil officia. Sed minima maiores et temporibus ipsam a aut.</p><p>Aut vero voluptas cum quis laborum quasi. Necessitatibus beatae ullam dolor. Quaerat quo rerum atque quod.</p><p>Consequatur adipisci et quibusdam est in. Voluptates esse saepe suscipit quidem possimus neque officiis. Magnam quo autem eligendi voluptates. Nesciunt magnam non neque et quas itaque id.</p>', NULL, '2022-09-03 02:43:48', '2022-09-03 02:43:48'),
(15, 2, 3, 'Aspernatur autem.', 'nobis-distinctio-voluptatibus-nostrum-architecto-aut-ab-officia-quia', NULL, 'Vitae consequatur et totam dolor et unde nam consequatur. Quidem doloribus odio officiis voluptatem. Eaque velit ut laboriosam consequatur rem. Maiores dolorum fugiat eaque iure aut autem.', '<p>Facilis temporibus eum dolorem dolorum sapiente dolore fugiat. Repellendus porro ut eos porro. Consectetur eius facere dolores quam voluptatibus. Eaque incidunt non odio similique.</p><p>Cumque et enim voluptatem beatae et rerum. Eum expedita fuga ut culpa ut. Dolorem enim aut deleniti voluptates.</p><p>Non et qui consequatur impedit. Beatae quam et cumque sed est temporibus neque. Fugiat sit eos iste aliquam.</p><p>Sit molestiae tempora sit. Quae at ut aut debitis sunt voluptatem. Consequatur voluptatem hic tempore explicabo omnis alias. Dolor veritatis voluptas maxime dignissimos.</p><p>Perspiciatis non consequatur veniam qui. Iure est ipsa beatae aut dicta possimus ipsa. Et minima rerum a.</p>', NULL, '2022-09-03 02:43:48', '2022-09-03 02:43:48'),
(16, 2, 2, 'Adipisci harum iure officiis.', 'vero-et-at-iusto', NULL, 'Omnis qui quasi veritatis. Maiores rerum fuga neque sequi perferendis hic tenetur quo. Impedit quaerat sed a animi sit praesentium quia. Qui excepturi in est tempora est.', '<p>Dolores quia ut assumenda. Eos esse ullam delectus voluptatem recusandae laboriosam earum. Corporis quis hic numquam ducimus. Cupiditate at provident necessitatibus natus nisi.</p><p>Et accusamus ab blanditiis quos quod autem. Eveniet error et libero. Quis ut aut sed commodi molestias.</p><p>Molestias iusto mollitia dolores libero nulla. Impedit voluptates neque vitae eligendi reiciendis voluptate.</p><p>Eum dolores et et soluta dolorum. Et voluptas voluptatum sequi est id iure temporibus.</p><p>Voluptatem omnis enim ad velit. Est explicabo qui in dolorem. Enim excepturi culpa et. Corporis quis quisquam pariatur rerum doloremque.</p><p>Explicabo rerum iste corporis est molestiae consequatur. Cumque est perspiciatis delectus exercitationem tempora enim. Eos ducimus possimus libero saepe at.</p><p>Id at itaque reprehenderit libero vel. Corrupti libero et odit ex maiores. Cum consectetur similique ut.</p><p>Omnis labore omnis fugiat hic. Nam qui voluptas optio culpa odio nobis. Amet consectetur ea similique eligendi qui enim et. Qui praesentium quaerat praesentium officia.</p><p>Dicta vel cumque cumque nemo harum. Iusto odit eum labore sequi commodi. Eum ullam cupiditate quo laboriosam in tempora. Voluptas consequuntur voluptas maiores iusto aliquid aut.</p>', NULL, '2022-09-03 02:43:48', '2022-09-03 02:43:48'),
(17, 1, 1, 'Necessitatibus ea ut.', 'necessitatibus-impedit-assumenda-omnis-sequi-omnis-ut-hic', NULL, 'Laudantium inventore perspiciatis nihil doloremque non ex. Sint vitae incidunt fugit maiores eligendi. Quibusdam aut est iusto accusantium. Nesciunt voluptatem voluptates error dolor deserunt. Doloremque corporis ut repellat consequatur modi.', '<p>Ipsam ducimus voluptate vel rerum nemo dolores. Iusto laboriosam quo amet et nostrum maiores. Fugiat et maxime debitis et eum ipsa reiciendis consectetur.</p><p>Veritatis nemo optio modi iste. Hic voluptatem eos sint quam. Molestiae fuga molestiae laudantium odit. Numquam sunt quibusdam placeat aperiam accusamus ex nesciunt.</p><p>Quia consequatur eos consequatur ut qui. Alias repellendus ipsam ut aut sed. Officia recusandae laudantium optio eaque quis necessitatibus. Ut omnis nihil in reiciendis ab cupiditate.</p><p>Praesentium et ea est. Nisi doloribus est sed aperiam quas consequatur. Sed sit dolores ut aut illo harum vel nihil.</p><p>Autem cum sunt doloribus minima. Ab sed voluptate magnam doloribus facere et ab. Exercitationem ratione ipsum repudiandae natus voluptas voluptatum ipsum in.</p><p>Perspiciatis vitae ipsum ad quo praesentium voluptas explicabo ducimus. Molestiae et sunt sunt modi sapiente dolores. Repellendus dignissimos voluptatem assumenda. Aperiam explicabo saepe minus deleniti nesciunt dolores.</p>', NULL, '2022-09-03 02:43:48', '2022-09-03 02:43:48'),
(18, 2, 3, 'Voluptatem et nihil similique consequatur et voluptatem.', 'ullam-tenetur-aut-hic-ab-sit', NULL, 'Perferendis repellendus voluptatem minus quia. Rerum saepe inventore qui saepe quo totam.', '<p>Vitae et sit itaque totam molestiae est. Eos eaque itaque est. Vel non assumenda accusantium enim quo non.</p><p>Ipsa sed dolores consequatur ut molestiae. Minima nulla incidunt et quis sit distinctio harum itaque. Consequuntur nobis a nostrum rerum consequuntur explicabo repudiandae. Et distinctio sed voluptas corporis repellat. Sed adipisci deserunt officia consequatur ratione at voluptatem quas.</p><p>Odio in dolor deserunt id incidunt quaerat. Voluptate est quia distinctio mollitia ut natus velit. Eos sit corporis aut non. Ut sequi quia est dignissimos et debitis enim.</p><p>Quibusdam enim harum non et nostrum harum. Est voluptates id porro.</p><p>Et necessitatibus et reiciendis fugiat velit aut esse. Rem fuga error rerum sit aut placeat quia. Illo asperiores debitis sunt nemo aut assumenda rerum. Error nisi dolorem quis quas qui debitis facilis.</p><p>Nulla unde officiis velit impedit tenetur impedit. Illum quasi facere commodi numquam sed sint totam. Est doloremque neque voluptatem. Voluptatem doloremque minima accusantium repellat.</p><p>Omnis eos est officiis sint. Nisi voluptates ratione magni est quidem voluptas sapiente ea. Occaecati aut aspernatur iste est. Placeat et dolor dolores eveniet dolorem quis cupiditate.</p>', NULL, '2022-09-03 02:43:48', '2022-09-03 02:43:48'),
(19, 2, 1, 'Molestiae aut culpa nihil vel qui magnam incidunt fugiat officiis aut.', 'minus-magni-nihil-ducimus-et-omnis-qui-reprehenderit', NULL, 'Suscipit facere eligendi et omnis nam et ea quia. Aliquid numquam incidunt recusandae quos. Neque totam porro non molestiae excepturi optio et. Et quod sed a ab sequi qui dolorem id. Rerum molestiae maxime eveniet quas.', '<p>Labore quod voluptatem aliquam officiis commodi labore qui quisquam. Unde esse esse dolorem qui esse sequi. Quidem dolorum aut sequi sunt voluptatem nihil.</p><p>Explicabo consequatur unde velit rem ut itaque. Numquam ab autem saepe distinctio sunt. Expedita unde quaerat repudiandae cum beatae.</p><p>Asperiores dolore et ex. Eligendi nam atque est qui. Voluptas ullam rerum est perferendis molestiae. Unde reprehenderit ducimus perferendis eligendi laudantium doloribus officiis.</p><p>Qui rerum ducimus soluta aliquid ut sit. Odio maxime facere quam dolorum qui. At officia ex suscipit nemo eum qui. Et veritatis ratione vel adipisci earum unde voluptas.</p><p>Illo dolorum porro delectus perspiciatis. Odio et iure et est. Officiis at et sint hic quibusdam omnis fugit eligendi. Accusantium quibusdam odio aut odit.</p><p>Id aut quasi itaque et. Dolorum hic fuga adipisci consequuntur aut recusandae. Molestiae in dolores quisquam. Aut aut quas et maiores qui illum natus at.</p><p>Suscipit ut eum similique. Accusantium et vero quas vitae eius adipisci qui. Maxime quidem incidunt quo nostrum dolores quia repudiandae. Est illum ipsa deleniti quia ipsa.</p><p>Non ratione ea dolor sunt eum. Maiores vitae vel ad doloribus voluptatem natus. Sed quas expedita laborum cupiditate a eaque vero. Maxime enim iure molestiae sed.</p><p>Beatae ea voluptatum facere voluptatum. Inventore dolore odit ipsam est. Aliquam debitis et quis voluptatem voluptatem ducimus architecto. Omnis accusamus dolores sint ipsa eius.</p>', NULL, '2022-09-03 02:43:48', '2022-09-03 02:43:48'),
(20, 1, 3, 'Omnis mollitia aspernatur recusandae nulla quod sit.', 'placeat-omnis-aut-at-ut-aut', NULL, 'Ab laboriosam ab quis molestiae dolorem et eligendi. Similique amet eius fugit rerum soluta veritatis corrupti ullam. Explicabo saepe doloremque provident veniam. Ab vero amet enim blanditiis. Aspernatur voluptas quisquam rerum consequatur ab qui ut.', '<p>Aspernatur quam doloremque dolor in blanditiis omnis in. Provident blanditiis amet enim molestiae similique laboriosam doloremque.</p><p>Velit similique repellat ut fugit autem omnis fuga exercitationem. Qui sint dolores modi est.</p><p>Libero aut id in libero porro. Nulla et provident doloremque et voluptate ut. Aliquam sed autem laboriosam omnis vitae voluptates. Possimus in ea et dolorum vel. Ab ea quibusdam rerum et omnis maxime.</p><p>Quibusdam id harum facilis non dignissimos voluptatem. Adipisci maiores magni non sint deserunt consequuntur sit magnam. Enim ducimus amet consequuntur qui corporis.</p><p>Aut eum facilis saepe officiis ipsa. Vitae sapiente at quia quia eaque. Reiciendis qui ipsum magni quo qui dolore tempora.</p><p>Aut voluptate itaque odio omnis quo sed tenetur et. Qui consectetur enim laudantium id quae aliquid. Dolor sint est quisquam accusamus praesentium. Libero in provident nam dolores quibusdam sed.</p><p>Sed corrupti amet voluptatem cupiditate. Soluta magnam eum soluta ad illo eveniet esse. Qui iusto nihil quia sint enim dolores.</p><p>Neque quaerat dolor quis natus odit. Porro sint est voluptas nisi rerum ex sed. Ex sint qui facere est qui.</p><p>Illo dolores nemo dicta aperiam. Voluptatem maiores in nobis sunt alias cumque. Quia cum quam pariatur aspernatur ullam. Aut qui ipsa et.</p>', NULL, '2022-09-03 02:43:48', '2022-09-03 02:43:48'),
(22, 3, 1, 'Hidup Seperti Larry', 'hidup-seperti-larry', 'post-image/hpeadqgp7WjMZwOMs6ZOkvJDnHNQhrtGc3m8WtUA.jpg', 'bangtan i love you', '<div>bangtan i love you</div>', NULL, '2022-09-03 03:11:29', '2022-09-03 03:11:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Sekar Ayu', 'sekarayu', 'sekarayu@gmail.com', NULL, '$2y$10$QjhDbyPgjr1m1Rw2eeeTu.vne8R20X9rIBDZHlsHlMFH67K/ht6K2', NULL, '2022-09-03 02:43:44', '2022-09-03 02:43:44', 1),
(2, 'Winda Safitri M.M.', 'rsudiati', 'phalimah@example.net', '2022-09-03 02:43:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3U9OJzobk4AYx2FBohyv5ABqljShRgMx0S0VsPUkRmLACSGFUGiafCUhtIgl', '2022-09-03 02:43:46', '2022-09-03 02:43:46', 0),
(3, 'Cahyadi Sihombing', 'ratih.yuniar', 'bprakasa@example.com', '2022-09-03 02:43:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3O7i0wD614', '2022-09-03 02:43:46', '2022-09-03 02:43:46', 0),
(4, 'Usyi Astuti', 'kusada', 'owahyudin@example.org', '2022-09-03 02:43:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'POG42nF69W', '2022-09-03 02:43:46', '2022-09-03 02:43:46', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
