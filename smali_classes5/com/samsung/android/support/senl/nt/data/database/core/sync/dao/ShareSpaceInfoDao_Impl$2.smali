.class Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/ShareSpaceInfoDao_Impl$2;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/ShareSpaceInfoDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSpaceInfoEntity;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/ShareSpaceInfoDao_Impl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/ShareSpaceInfoDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/ShareSpaceInfoDao_Impl$2;->this$0:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/ShareSpaceInfoDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSpaceInfoEntity;)V
    .locals 2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSpaceInfoEntity;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSpaceInfoEntity;->getSpaceId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSpaceInfoEntity;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/ShareSpaceInfoDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSpaceInfoEntity;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `share_space_info` WHERE `spaceId` = ?"

    return-object v0
.end method
