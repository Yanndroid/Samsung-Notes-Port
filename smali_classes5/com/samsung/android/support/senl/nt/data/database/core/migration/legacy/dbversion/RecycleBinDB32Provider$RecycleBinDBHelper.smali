.class Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/RecycleBinDB32Provider$RecycleBinDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/RecycleBinDB32Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycleBinDBHelper"
.end annotation


# static fields
.field private static final DATABASE_CREATE:Ljava/lang/String; = "create table recyclebin_db_table (_id integer primary key autoincrement,id_uuid_sdoc text not null, trigger_time integer not null);"

.field private static final DATABASE_NAME:Ljava/lang/String; = "recylcebin.db"

.field private static final DATABASE_VERSION:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "recylcebin.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static createRecycleBinDBHelper(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/RecycleBinDB32Provider$RecycleBinDBHelper;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/RecycleBinDB32Provider$RecycleBinDBHelper;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/legacy/dbversion/RecycleBinDB32Provider$RecycleBinDBHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table recyclebin_db_table (_id integer primary key autoincrement,id_uuid_sdoc text not null, trigger_time integer not null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
