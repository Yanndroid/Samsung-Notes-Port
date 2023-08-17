.class Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager$1;->this$0:Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager$1;->this$0:Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;->a(Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "execute#call, start"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/migration/version/Migration_46_To_47;->executeTextSearchMigrationReturningIndex(Landroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager$1;->this$0:Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;->checkMigration(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;->d(Z)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "execute#call, end - result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
