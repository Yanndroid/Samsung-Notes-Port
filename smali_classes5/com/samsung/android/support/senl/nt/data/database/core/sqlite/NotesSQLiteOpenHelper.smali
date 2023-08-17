.class public Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDelegate:Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "NotesSQLiteOpenHelper"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper;->createDelegate(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper;->mDelegate:Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper;->mDelegate:Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;->close()V

    return-void
.end method

.method public createDelegate(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteDatabase;

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;[Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteDatabase;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)V

    return-object v0
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper;->mDelegate:Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReadableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper;->mDelegate:Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;->getReadableSupportDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper;->mDelegate:Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;->getWritableSupportDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper;->mDelegate:Lcom/samsung/android/support/senl/nt/data/database/core/sqlite/NotesSQLiteOpenHelper$OpenHelper;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method
