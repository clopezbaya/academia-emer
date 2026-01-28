<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('notifications', function (Blueprint $table) {
            $table->string('id', 36)->change(); // Change the ID to string for UUID compatibility
            $table->string('type')->after('id');
            $table->morphs('notifiable'); // Adds notifiable_id and notifiable_type
            $table->text('data');
            $table->timestamp('read_at')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('notifications', function (Blueprint $table) {
            $table->dropColumn(['type', 'notifiable_type', 'notifiable_id', 'data', 'read_at']);
            $table->bigIncrements('id')->change(); // Revert ID to original bigIncrements
        });
    }
};
