<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        
        User::create([
            'name' => 'Sekar Ayu',
            'username' => 'sekarayu',
            'email' => 'sekarayu@gmail.com',
            'password' => bcrypt('12345')
        ]);

        User::factory(3)->create();

        // User::create([
        //     'name' => 'Latifa Intan',
        //     'email' => 'latifaintan21@gmail.com',
        //     'password' => bcrypt('12345')
        // ]);

        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming'
        ]);

        Category::create([
            'name' => 'Web Design',
            'slug' => 'web-design'
        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);

        
        Post::factory(20)->create();

        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' => 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Consectetur beatae deserunt minus quisquam vitae similique eaque laborum incidunt dolore ipsa',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deleniti esse, dolores ea earum, odit accusantium obcaecati rem consequatur atque adipisci omnis eius ipsam eveniet. Facilis eveniet repellendus voluptate necessitatibus consequuntur eius ratione cum recusandae distinctio dolorem tenetur aliquid quos iste itaque perspiciatis sed assumenda error quis illo, nemo laboriosam! Architecto officia quasi totam quisquam? Excepturi sed eum, tempora doloremque iusto illum reiciendis culpa architecto ipsam et corporis, cumque dolorum perferendis mollitia, quam nobis commodi ipsum voluptatem fugit possimus sit rem animi. Neque, sit rerum, explicabo non incidunt, natus voluptate possimus corrupti ipsa error blanditiis commodi voluptatum voluptas pariatur repellendus tempora?',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Ke Dua',
        //     'slug' => 'judul-ke-dua',
        //     'excerpt' => 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Consectetur beatae deserunt minus quisquam vitae similique eaque laborum incidunt dolore ipsa',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deleniti esse, dolores ea earum, odit accusantium obcaecati rem consequatur atque adipisci omnis eius ipsam eveniet. Facilis eveniet repellendus voluptate necessitatibus consequuntur eius ratione cum recusandae distinctio dolorem tenetur aliquid quos iste itaque perspiciatis sed assumenda error quis illo, nemo laboriosam! Architecto officia quasi totam quisquam? Excepturi sed eum, tempora doloremque iusto illum reiciendis culpa architecto ipsam et corporis, cumque dolorum perferendis mollitia, quam nobis commodi ipsum voluptatem fugit possimus sit rem animi. Neque, sit rerum, explicabo non incidunt, natus voluptate possimus corrupti ipsa error blanditiis commodi voluptatum voluptas pariatur repellendus tempora?',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Ke Tiga',
        //     'slug' => 'judul-ke-tiga',
        //     'excerpt' => 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Consectetur beatae deserunt minus quisquam vitae similique eaque laborum incidunt dolore ipsa',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deleniti esse, dolores ea earum, odit accusantium obcaecati rem consequatur atque adipisci omnis eius ipsam eveniet. Facilis eveniet repellendus voluptate necessitatibus consequuntur eius ratione cum recusandae distinctio dolorem tenetur aliquid quos iste itaque perspiciatis sed assumenda error quis illo, nemo laboriosam! Architecto officia quasi totam quisquam? Excepturi sed eum, tempora doloremque iusto illum reiciendis culpa architecto ipsam et corporis, cumque dolorum perferendis mollitia, quam nobis commodi ipsum voluptatem fugit possimus sit rem animi. Neque, sit rerum, explicabo non incidunt, natus voluptate possimus corrupti ipsa error blanditiis commodi voluptatum voluptas pariatur repellendus tempora?',
        //     'category_id' => 2,
        //     'user_id' => 1
        // ]);
        
        // Post::create([
        //     'title' => 'Judul Ke Empat',
        //     'slug' => 'judul-ke-empat',
        //     'excerpt' => 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Consectetur beatae deserunt minus quisquam vitae similique eaque laborum incidunt dolore ipsa',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deleniti esse, dolores ea earum, odit accusantium obcaecati rem consequatur atque adipisci omnis eius ipsam eveniet. Facilis eveniet repellendus voluptate necessitatibus consequuntur eius ratione cum recusandae distinctio dolorem tenetur aliquid quos iste itaque perspiciatis sed assumenda error quis illo, nemo laboriosam! Architecto officia quasi totam quisquam? Excepturi sed eum, tempora doloremque iusto illum reiciendis culpa architecto ipsam et corporis, cumque dolorum perferendis mollitia, quam nobis commodi ipsum voluptatem fugit possimus sit rem animi. Neque, sit rerum, explicabo non incidunt, natus voluptate possimus corrupti ipsa error blanditiis commodi voluptatum voluptas pariatur repellendus tempora?',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);
        
    }
}
