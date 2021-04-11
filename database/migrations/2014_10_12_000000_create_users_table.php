<?php

use App\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->string('email')->unique();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->enum('gender', array('male','female','others'));
            $table->enum('utype', array('staff','rider','customer'));
            $table->rememberToken();
            $table->timestamps();
        });

        User::create([
            'name' => 'Admin Joe',
            'email' => 'joe_admin@gmail.com',
            'password' => Hash::make('@joe_admin123!'),
            'utype' => 'staff'
        ]);

        User::create([
            'name' => 'Customer Joey',
            'email' => 'joey_customer@gmail.com',
            'password' => Hash::make('@joey_customer123!'),
            'utype' => 'customer'
        ]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
    }
}
