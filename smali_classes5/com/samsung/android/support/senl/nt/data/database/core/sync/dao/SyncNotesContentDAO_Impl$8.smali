.class Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncNotesContentDAO_Impl$8;
.super Landroidx/room/SharedSQLiteStatement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncNotesContentDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncNotesContentDAO_Impl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncNotesContentDAO_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncNotesContentDAO_Impl$8;->this$0:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncNotesContentDAO_Impl;

    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT content SET isDeleted=? WHERE UUID=?"

    return-object v0
.end method
