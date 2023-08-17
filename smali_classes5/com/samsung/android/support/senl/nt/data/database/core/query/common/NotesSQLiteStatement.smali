.class public Lcom/samsung/android/support/senl/nt/data/database/core/query/common/NotesSQLiteStatement;
.super Landroidx/room/SharedSQLiteStatement;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation


# instance fields
.field private final mQueryString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/NotesSQLiteStatement;->mQueryString:Ljava/lang/String;

    return-void
.end method

.method public static create(Landroidx/room/RoomDatabase;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/query/common/NotesSQLiteStatement;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/NotesSQLiteStatement;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/NotesSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/NotesSQLiteStatement;->getQueryString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/query/common/NotesSQLiteStatement;->mQueryString:Ljava/lang/String;

    return-object v0
.end method
