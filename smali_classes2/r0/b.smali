.class public Lr0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

.field public final c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lr0/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object p1

    iput-object p1, p0, Lr0/b;->b:Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;->syncInfoDAO()Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    move-result-object p1

    iput-object p1, p0, Lr0/b;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lr0/b;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;->updateCheckPoint(Ljava/lang/String;J)V

    return-void
.end method

.method public b(Ljava/lang/String;I)I
    .locals 1
    .annotation build Landroidx/room/Transaction;
    .end annotation

    iget-object v0, p0, Lr0/b;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;->isExistByClientId(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lr0/b;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;->setExtraInfoDirtyInternal(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->setNoteClientId(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SyncInfoEntity;->setIsExtraInfoDirty(I)V

    iget-object p1, p0, Lr0/b;->c:Lcom/samsung/android/support/senl/nt/data/database/core/sync/dao/SyncInfoDao;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/dao/BaseDao;->upsert(Ljava/lang/Object;)Landroid/util/Pair;

    const/4 p1, 0x1

    return p1
.end method

.method public c(Ljava/util/List;I)V
    .locals 1
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lr0/b;->b(Ljava/lang/String;I)I

    goto :goto_0

    :cond_0
    return-void
.end method
