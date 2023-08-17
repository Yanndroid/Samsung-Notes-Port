.class public Lw/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld1/e;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld1/e;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld1/e;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lw/b;

.field public e:Lw/e;

.field public f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ld1/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lw/b;Lw/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw/d;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw/d;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw/d;->c:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lw/d;->f:Ljava/util/HashMap;

    iput-object p1, p0, Lw/d;->d:Lw/b;

    iput-object p2, p0, Lw/d;->e:Lw/e;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start to delete local : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw/d;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShareSingleTask$ShareSDoc"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/notes/sync/db/t;

    iget-object v2, p0, Lw/d;->d:Lw/b;

    invoke-virtual {v2}, Lw/b;->b()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/android/app/notes/sync/db/t;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    iget-object v3, p0, Lw/d;->d:Lw/b;

    invoke-virtual {v3}, Lw/b;->b()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lw/d;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld1/e;

    iget-object v6, p0, Lw/d;->e:Lw/e;

    invoke-interface {v6}, Lw/e;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v0, "Cancelled deleteLocal"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v4}, Ld1/e;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->getShareSyncEntry(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getIsDeleted()I

    move-result v6

    if-eq v6, v5, :cond_1

    invoke-virtual {v4}, Ld1/e;->f()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RemoteShare"

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/app/notes/sync/db/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ld1/e;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is already deleted!"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "Finished to delete local"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v5
.end method

.method public final b()Z
    .locals 20

    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start to download : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lw/d;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ShareSingleTask$ShareSDoc"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    iget-object v5, v1, Lw/d;->d:Lw/b;

    invoke-virtual {v5}, Lw/b;->b()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;-><init>(Landroid/content/Context;)V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iget-object v7, v1, Lw/d;->d:Lw/b;

    invoke-virtual {v7}, Lw/b;->b()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lv/h;->c(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v7

    iget-object v8, v1, Lw/d;->b:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ld1/e;

    iget-object v13, v1, Lw/d;->e:Lw/e;

    invoke-interface {v13}, Lw/e;->isCancelled()Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v0, "Cancelled downloadSdoc"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_0
    add-int/2addr v10, v12

    invoke-static {}, Lcom/samsung/android/app/notes/sync/utils/a;->A()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-virtual {v11}, Ld1/e;->f()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    :try_start_0
    invoke-virtual {v0, v12}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->getShareSyncEntry(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;

    move-result-object v12

    if-nez v12, :cond_1

    const-wide/16 v15, 0x0

    :goto_1
    move v12, v10

    move-wide v9, v15

    goto :goto_2

    :cond_1
    invoke-virtual {v12}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getServerTimestamp()Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    goto :goto_1

    :goto_2
    invoke-virtual {v11}, Ld1/e;->c()J

    move-result-wide v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v15, v9, v15

    move-object/from16 v16, v0

    const-string v0, " , item.getLastModifiedAt = "

    if-ltz v15, :cond_2

    :try_start_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ignore this file : newTime = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ld1/e;->c()J

    move-result-wide v9

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v18, v3

    move-object/from16 v17, v8

    goto/16 :goto_5

    :cond_2
    invoke-virtual {v11}, Ld1/e;->e()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v17, v8

    const-string v8, ".sdocx"

    invoke-virtual {v15, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, ".sdoc"

    invoke-virtual {v15, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "not supported this file : newTime = "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ld1/e;->c()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v18, v3

    goto/16 :goto_5

    :cond_3
    if-eqz v7, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v18, v3

    invoke-virtual {v11}, Ld1/e;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ld1/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "previous broken file : newTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ld1/e;->c()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_4
    move-wide/from16 v18, v3

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download an item : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ld1/e;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Ld1/e;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v11}, Ld1/e;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ld1/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ld1/e;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ld1/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v6, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11}, Ld1/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11}, Ld1/e;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ld1/e;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ld1/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "downloadSdoc() ["

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " / "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lw/d;->b:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] dct = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    move v10, v12

    move-object/from16 v0, v16

    move-object/from16 v8, v17

    move-wide/from16 v3, v18

    const/4 v9, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to downloadSDocFile -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-object v0, v1, Lw/d;->d:Lw/b;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lw/b;->g(Z)V

    new-instance v0, Ly1/b;

    sget-object v2, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->FAIL_DEVICE_STORAGE_FULL_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    const-string v3, "device storage is full!"

    invoke-direct {v0, v2, v3}, Ly1/b;-><init>(Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;Ljava/lang/String;)V

    throw v0

    :cond_8
    move-wide/from16 v18, v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadSdoc() download real "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    const/16 v5, 0x64

    invoke-static {v4, v5}, Lv/a;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    iget-object v8, v1, Lw/d;->d:Lw/b;

    invoke-virtual {v8}, Lw/b;->b()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_c

    iget-object v9, v1, Lw/d;->d:Lw/b;

    invoke-virtual {v9}, Lw/b;->b()Landroid/content/Context;

    move-result-object v9

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v10, v7, v6, v8}, Lv/g;->g(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)Lv/c;

    move-result-object v7

    invoke-virtual {v7}, Lv/c;->d()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eq v8, v9, :cond_b

    const-string v7, "fail to save(update) some notes"

    :goto_7
    invoke-static {v2, v7}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    invoke-virtual {v7}, Lv/c;->d()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, v1, Lw/d;->e:Lw/e;

    invoke-interface {v9, v8}, Lw/e;->onSharedFileUpdated(Ljava/lang/String;)V

    goto :goto_8

    :cond_c
    const-string v7, "fail to save(update) some notes due to null ExternalFilesDir!"

    goto :goto_7

    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v3, v3, v18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "downloadSdoc() finish : tdct = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v12
.end method

.method public final c()Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ld1/e;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "ShareSingleTask$ShareSDoc"

    const-string v2, "Start to get local list "

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/app/notes/sync/db/f;

    iget-object v3, v0, Lw/d;->d:Lw/b;

    invoke-virtual {v3}, Lw/b;->b()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/app/notes/sync/db/f;-><init>(Landroid/content/Context;)V

    iget-object v3, v0, Lw/d;->d:Lw/b;

    invoke-virtual {v3}, Lw/b;->d()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lw/d;->d:Lw/b;

    invoke-virtual {v3}, Lw/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lw/d;->d:Lw/b;

    invoke-virtual {v3}, Lw/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/notes/sync/db/f;->x(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v2}, Lcom/samsung/android/app/notes/sync/db/f;->z()Ljava/util/List;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    iget-object v5, v0, Lw/d;->d:Lw/b;

    invoke-virtual {v5}, Lw/b;->b()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;-><init>(Landroid/content/Context;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->getShareSyncEntry(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getServerTimestamp()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;->getSpaceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;->getCreatedAt()J

    move-result-wide v12

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getLastModifiedAt()J

    move-result-wide v14

    new-instance v6, Ld1/e;

    move-object/from16 v16, v6

    invoke-direct/range {v6 .. v15}, Ld1/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJ)V

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;->getItemId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, v16

    invoke-virtual {v7, v6}, Ld1/e;->i(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getIsDirty()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v7, v6}, Ld1/e;->h(Z)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finish to get local list "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_4
    const-string v2, "Failed to get all uuid List for MDE"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ly1/b;

    sget-object v3, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->FAIL_DB_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    invoke-direct {v1, v3, v2}, Ly1/b;-><init>(Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;Ljava/lang/String;)V

    throw v1
.end method

.method public final d()Ljava/util/ArrayList;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ld1/e;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "DoclastModifiedAt"

    const-string v2, "createdAt"

    const-string v3, "lastModifiedAt"

    const-string/jumbo v4, "uuid"

    const-string v5, "fail to SesShareApi.requestSync()"

    const-string v6, "ShareSingleTask$ShareSDoc"

    const-string v7, "Start to get server list "

    invoke-static {v6, v7}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->A()Z

    move-result v7

    if-eqz v7, :cond_a

    :try_start_0
    invoke-static {}, Lu/h;->p()Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;->getResult()Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "succeed to SesShareApi.requestSync()"

    invoke-static {v6, v7}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v7

    invoke-virtual {v7}, Lx/e;->a()Lx/a;

    move-result-object v7

    invoke-interface {v7}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, v1, Lw/d;->d:Lw/b;

    invoke-virtual {v8}, Lw/b;->d()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, v1, Lw/d;->d:Lw/b;

    invoke-virtual {v8}, Lw/b;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;

    move-result-object v8

    iget-object v9, v1, Lw/d;->d:Lw/b;

    invoke-virtual {v9}, Lw/b;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareBaseReadResolver;->requestSharedItemList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareBaseReadResolver;->requestSharedItemList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    :goto_1
    if-eqz v7, :cond_8

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_7

    :try_start_1
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;

    const/4 v11, 0x0

    invoke-virtual {v10}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getMetaData()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v10}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getMetaData()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_2

    const-string v10, "Exception while getting server sdoc item uuid"

    invoke-static {v6, v10}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_2
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_3
    move-object v14, v11

    invoke-virtual {v10}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getMetaData()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    const-wide/16 v12, 0x0

    if-eqz v11, :cond_4

    invoke-virtual {v10}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getMetaData()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    move-wide/from16 v16, v15

    goto :goto_3

    :cond_4
    move-wide/from16 v16, v12

    :goto_3
    invoke-virtual {v10}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getMetaData()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v10}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getMetaData()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    goto :goto_4

    :cond_5
    move-wide/from16 v18, v12

    :goto_4
    invoke-virtual {v10}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getMetaData()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v10}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getMetaData()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    move-wide/from16 v20, v11

    goto :goto_5

    :cond_6
    move-wide/from16 v20, v12

    :goto_5
    new-instance v11, Ld1/e;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getSpaceId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getTitle()Ljava/lang/String;

    move-result-object v15

    move-object v12, v11

    invoke-direct/range {v12 .. v21}, Ld1/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJ)V

    invoke-virtual {v10}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getItemId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ld1/e;->i(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getCreatedTime()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ld1/e;->g(J)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    :catch_0
    move-exception v0

    const-string v2, "Exception while getting server sdoc items."

    invoke-static {v6, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ly1/b;

    sget-object v3, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->FAIL_SERVER_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ly1/b;-><init>(Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;Ljava/lang/String;)V

    throw v2

    :cond_7
    return-object v5

    :cond_8
    new-instance v0, Ly1/b;

    sget-object v2, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->FAIL_SERVER_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    const-string v3, "requestSharedItemList queryResult is null"

    invoke-direct {v0, v2, v3}, Ly1/b;-><init>(Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;Ljava/lang/String;)V

    throw v0

    :cond_9
    :try_start_2
    new-instance v0, Ly1/b;

    sget-object v2, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->FAIL_NOT_SUCCEEDED_API_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    invoke-direct {v0, v2, v5}, Ly1/b;-><init>(Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    new-instance v0, Ly1/b;

    sget-object v2, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->FAIL_NOT_SUCCEEDED_API_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    invoke-direct {v0, v2, v5}, Ly1/b;-><init>(Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ly1/b;

    sget-object v2, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->FAIL_NOT_SESSION_CONNECTED_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    const-string v3, "Ses Session is not connected"

    invoke-direct {v0, v2, v3}, Ly1/b;-><init>(Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;Ljava/lang/String;)V

    throw v0
.end method

.method public final e(Ljava/util/ArrayList;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ld1/e;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "ShareSingleTask$ShareSDoc"

    const-string v1, "makeListsForShare()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/app/notes/sync/db/t;

    iget-object v2, p0, Lw/d;->d:Lw/b;

    invoke-virtual {v2}, Lw/b;->b()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/notes/sync/db/t;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    iget-object v3, p0, Lw/d;->d:Lw/b;

    invoke-virtual {v3}, Lw/b;->b()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld1/e;

    iget-object v5, p0, Lw/d;->f:Ljava/util/HashMap;

    invoke-virtual {v3}, Ld1/e;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ld1/e;

    if-eqz v5, :cond_6

    iget-object v6, p0, Lw/d;->f:Ljava/util/HashMap;

    invoke-virtual {v5}, Ld1/e;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ld1/e;->c()J

    move-result-wide v6

    invoke-virtual {v5}, Ld1/e;->c()J

    move-result-wide v8

    cmp-long v10, v8, v6

    if-lez v10, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "makeListsForShare() uuid : "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ld1/e;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " server - serverTimestamp :"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " localTime : "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lw/d;->b:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-gez v10, :cond_4

    invoke-virtual {v3}, Ld1/e;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->getShareSyncEntry(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;->getItemId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Ld1/e;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Lcom/samsung/android/app/notes/sync/db/t;->q(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ld1/e;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ld1/e;->i(Ljava/lang/String;)V

    :cond_2
    iget-object v5, p0, Lw/d;->d:Lw/b;

    invoke-virtual {v5}, Lw/b;->b()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lv/f;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lw/d;->d:Lw/b;

    invoke-virtual {v5}, Lw/b;->b()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lv/f;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ld1/e;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    iget-object v4, p0, Lw/d;->a:Ljava/util/List;

    :goto_2
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    const-string v3, "owner id is different"

    :goto_3
    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v3}, Ld1/e;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->getShareSyncEntry(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;->getItemId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v5}, Ld1/e;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v6, v8}, Lcom/samsung/android/app/notes/sync/db/t;->q(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ld1/e;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ld1/e;->i(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getIsDirty()I

    move-result v3

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v6, v3}, Lcom/samsung/android/app/notes/sync/db/t;->m(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v3}, Ld1/e;->b()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Ld1/e;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    iget-object v4, p0, Lw/d;->c:Ljava/util/List;

    goto :goto_2

    :cond_8
    :goto_4
    iget-object v4, p0, Lw/d;->d:Lw/b;

    invoke-virtual {v4}, Lw/b;->b()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3}, Ld1/e;->f()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lv/f;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_1

    :cond_9
    const-string v3, "owner id is different (only local)"

    goto :goto_3

    :cond_a
    iget-object p1, p0, Lw/d;->f:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld1/e;

    iget-object v2, p0, Lw/d;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "toDeleteLocalList: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw/d;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "toUploadList: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw/d;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,toDownloadList: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw/d;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method public f()Z
    .locals 9

    const-string v0, "ShareSingleTask$ShareSDoc"

    const-string v1, "[Start sharing sdoc]"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lw/d;->g()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lw/d;->e:Lw/e;

    invoke-interface {v3}, Lw/e;->isCancelled()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const-string v1, "Cancelled sharing!"

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/notes/sync/utils/a;->A()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lw/d;->c()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0}, Lw/d;->d()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ld1/e;

    iget-object v7, p0, Lw/d;->f:Ljava/util/HashMap;

    invoke-virtual {v6}, Ld1/e;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lw/d;->e:Lw/e;

    invoke-interface {v5}, Lw/e;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v1, "Cancelled Sharing"

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3}, Lw/d;->e(Ljava/util/ArrayList;)Z

    move-result v3

    if-nez v3, :cond_3

    return v4

    :cond_3
    iget-object v3, p0, Lw/d;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v5, p0, Lw/d;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v3, v5

    iget-object v5, p0, Lw/d;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v3, v5

    if-lez v3, :cond_6

    iget-object v3, p0, Lw/d;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lw/d;->a()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lw/d;->e:Lw/e;

    invoke-interface {v3}, Lw/e;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v1, "Cancelled before deleting sDocs in a server!"

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lw/d;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lw/d;->i()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lw/d;->e:Lw/e;

    invoke-interface {v3}, Lw/e;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v1, "Cancelled before downloading sDocs!"

    goto/16 :goto_0

    :cond_5
    iget-object v3, p0, Lw/d;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p0}, Lw/d;->b()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lw/d;->e:Lw/e;

    invoke-interface {v3}, Lw/e;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v1, "Cancelled before finishing downloading sDocs!"

    goto/16 :goto_0

    :cond_6
    const-string v3, "There is no item to share!"

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Finish sharing sdoc] et = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_8
    iget-object v0, p0, Lw/d;->d:Lw/b;

    invoke-virtual {v0, v4}, Lw/b;->h(Z)V

    iget-object v0, p0, Lw/d;->d:Lw/b;

    invoke-virtual {v0, v4}, Lw/b;->g(Z)V

    new-instance v0, Ly1/b;

    sget-object v1, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->FAIL_DEVICE_STORAGE_FULL_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    const-string v2, "device storage is full!"

    invoke-direct {v0, v1, v2}, Ly1/b;-><init>(Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;Ljava/lang/String;)V

    throw v0
.end method

.method public final g()V
    .locals 3

    const-string v0, "repair_category_uuid_pref_file"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "repair_category_uuid_pref_key_is_fixed"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "ShareSingleTask$ShareSDoc"

    const-string v1, "repairSharedNotesCategoryUuid executed"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    iget-object v1, p0, Lw/d;->d:Lw/b;

    invoke-virtual {v1}, Lw/b;->b()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->repairOldSharedNotesCategoryUuid()V

    :cond_0
    return-void
.end method

.method public final h(Ljava/util/List;Ljava/lang/String;)Ld1/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ld1/e;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ld1/e;"
        }
    .end annotation

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld1/e;

    invoke-virtual {v0}, Ld1/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final i()Z
    .locals 26

    move-object/from16 v1, p0

    iget-object v0, v1, Lw/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start to upload : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ShareSingleTask$ShareSDoc"

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->a()Lx/a;

    move-result-object v0

    invoke-interface {v0}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    new-instance v9, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-direct {v9, v4}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;-><init>(Landroid/content/Context;)V

    iget-object v0, v1, Lw/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const-wide/16 v13, 0x0

    const/4 v0, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    const/16 v17, 0x1

    if-eqz v16, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ld1/e;

    iget-object v12, v1, Lw/d;->e:Lw/e;

    invoke-interface {v12}, Lw/e;->isCancelled()Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v0, "Cancelled uploadSdoc"

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2

    :cond_0
    add-int/lit8 v12, v0, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    move-object/from16 v20, v10

    invoke-virtual/range {v16 .. v16}, Ld1/e;->f()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->getShareSyncEntry(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getFilePath()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/utils/a;->a(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ls0/c; {:try_start_0 .. :try_end_0} :catch_0

    move-wide/from16 v21, v5

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v17, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v21, v5

    const-string v5, "SyncException while checking canUpload. "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    add-int/lit8 v15, v15, 0x1

    if-nez v11, :cond_1

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;

    move-result-object v0

    invoke-virtual/range {v16 .. v16}, Ld1/e;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareBaseReadResolver;->getSpaceTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_1
    move v0, v12

    move-object/from16 v10, v20

    move-wide/from16 v5, v21

    goto :goto_0

    :cond_2
    invoke-virtual/range {v16 .. v16}, Ld1/e;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v16 .. v16}, Ld1/e;->b()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v6, Lv/g$c;

    invoke-direct {v6, v10, v5}, Lv/g$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v23, v11

    goto :goto_3

    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v23, v11

    new-instance v11, Lv/g$c;

    invoke-direct {v11, v10, v5}, Lv/g$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    :goto_2
    move-object/from16 v23, v11

    invoke-virtual/range {v16 .. v16}, Ld1/e;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v5, v5, v18

    add-long/2addr v13, v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "uploadSdoc() ["

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " / "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "] ut = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v12

    move-object/from16 v10, v20

    move-wide/from16 v5, v21

    move-object/from16 v11, v23

    goto/16 :goto_0

    :cond_7
    move-wide/from16 v21, v5

    move-object/from16 v23, v11

    new-instance v0, Lcom/samsung/android/app/notes/sync/db/t;

    invoke-direct {v0, v4}, Lcom/samsung/android/app/notes/sync/db/t;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-wide v5, 0x7fffffffffffffffL

    const/16 v7, 0x64

    if-eqz v4, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    invoke-static {v10, v7}, Lv/a;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    iget-object v11, v1, Lw/d;->d:Lw/b;

    invoke-virtual {v11}, Lw/b;->b()Landroid/content/Context;

    move-result-object v11

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v11, v12, v10}, Lv/g;->u(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Lv/c;

    move-result-object v11

    invoke-virtual {v11}, Lv/c;->d()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-eq v12, v10, :cond_a

    const-string v10, "fail to upload some notes"

    invoke-static {v3, v10}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    invoke-virtual {v11}, Lv/c;->d()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_b
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v9, v11}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->getShareSyncEntry(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getServerTimestamp()Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    iget-object v12, v1, Lw/d;->a:Ljava/util/List;

    invoke-virtual {v1, v12, v11}, Lw/d;->h(Ljava/util/List;Ljava/lang/String;)Ld1/e;

    move-result-object v12

    if-eqz v12, :cond_c

    invoke-virtual {v12}, Ld1/e;->c()J

    move-result-wide v24

    goto :goto_6

    :cond_c
    move-wide/from16 v24, v5

    :goto_6
    cmp-long v12, v18, v24

    if-gtz v12, :cond_b

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Lcom/samsung/android/app/notes/sync/db/t;->m(Ljava/lang/String;I)V

    goto :goto_5

    :cond_d
    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-static {v8, v7}, Lv/a;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    iget-object v11, v1, Lw/d;->d:Lw/b;

    invoke-virtual {v11}, Lw/b;->b()Landroid/content/Context;

    move-result-object v11

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v11, v12, v10}, Lv/g;->t(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Lv/c;

    move-result-object v11

    invoke-virtual {v11}, Lv/c;->d()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-eq v12, v10, :cond_10

    const-string v10, "fail to update some notes"

    invoke-static {v3, v10}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    const/4 v12, 0x0

    goto :goto_7

    :cond_10
    invoke-virtual {v11}, Lv/c;->d()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v9, v11}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->getShareSyncEntry(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/ShareSyncEntry;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/DocSyncEntry;->getServerTimestamp()Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    iget-object v12, v1, Lw/d;->a:Ljava/util/List;

    invoke-virtual {v1, v12, v11}, Lw/d;->h(Ljava/util/List;Ljava/lang/String;)Ld1/e;

    move-result-object v12

    if-eqz v12, :cond_11

    invoke-virtual {v12}, Ld1/e;->c()J

    move-result-wide v24

    goto :goto_9

    :cond_11
    move-wide/from16 v24, v5

    :goto_9
    cmp-long v12, v18, v24

    if-gtz v12, :cond_12

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Lcom/samsung/android/app/notes/sync/db/t;->m(Ljava/lang/String;I)V

    goto :goto_8

    :cond_12
    const/4 v12, 0x0

    goto :goto_8

    :cond_13
    if-lez v15, :cond_14

    iget-object v0, v1, Lw/d;->d:Lw/b;

    new-instance v2, Ls/f;

    move-object/from16 v11, v23

    const/4 v4, 0x0

    invoke-direct {v2, v11, v4}, Ls/f;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lw/b;->a(Ly1/a;)V

    :cond_14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v4, v4, v21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uploadSdoc() finish : tut = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " , tt = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v17
.end method
