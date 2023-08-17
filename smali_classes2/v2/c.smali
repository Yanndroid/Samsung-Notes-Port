.class public Lv2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lx2/e;

.field public b:Lx2/g;

.field public c:Lt2/c;

.field public d:Lp2/a;

.field public e:Lx2/a;


# direct methods
.method public constructor <init>(Lx2/e;Lx2/g;Lt2/c;Lp2/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv2/c;->a:Lx2/e;

    iput-object p2, p0, Lv2/c;->b:Lx2/g;

    iput-object p3, p0, Lv2/c;->c:Lt2/c;

    iput-object p4, p0, Lv2/c;->d:Lp2/a;

    new-instance p3, Lx2/a;

    invoke-direct {p3, p1, p2}, Lx2/a;-><init>(Lx2/e;Lx2/g;)V

    iput-object p3, p0, Lv2/c;->e:Lx2/a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/d;->c()Ly2/b;

    move-result-object v0

    invoke-virtual {v0}, Ly2/b;->f()I

    move-result v0

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->isSyncBlocked()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lc3/q;->s(Landroid/content/Context;Ljava/lang/Boolean;)V

    const-string v0, "Cancelled SyncWDoc due to converting!"

    const-string v1, "SyncNote"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ls0/c;

    const/16 v2, 0x25f

    invoke-direct {v1, v2, v0}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "downSyncConflictedNotes() : "

    const-string v1, "SyncNote"

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v9, Lcom/samsung/android/app/notes/sync/db/s;

    iget-object v3, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {v3}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v9, v3, v2}, Lcom/samsung/android/app/notes/sync/db/s;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/samsung/android/app/notes/sync/db/s;->t()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downSyncConflictedNotes() : call updateLocalNote "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lw2/j;

    iget-object v4, p0, Lv2/c;->a:Lx2/e;

    iget-object v5, p0, Lv2/c;->b:Lx2/g;

    iget-object v6, p0, Lv2/c;->d:Lp2/a;

    iget-object v8, p0, Lv2/c;->e:Lx2/a;

    move-object v3, v12

    move-object v7, v2

    invoke-direct/range {v3 .. v8}, Lw2/j;-><init>(Lx2/e;Lx2/g;Lp2/a;Ljava/lang/String;Lx2/a;)V

    const/4 v3, 0x0

    invoke-virtual {v12, v10, v3, v9, v11}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/db/s;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {v3}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/notes/sync/utils/a;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception v3

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "downSyncConflictedNotes() : fail to updateLocalNote "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v4, v3, Ls0/c;

    if-eqz v4, :cond_2

    move-object v4, v3

    check-cast v4, Ls0/c;

    invoke-virtual {v4}, Ls0/c;->a()I

    move-result v5

    const/16 v6, 0x13b

    if-ne v5, v6, :cond_0

    invoke-virtual {v4}, Ls0/c;->d()I

    move-result v4

    const/16 v5, 0x194

    if-ne v4, v5, :cond_0

    new-instance v3, La3/a;

    invoke-direct {v3, v2}, La3/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, La3/a;->h(Lcom/samsung/android/app/notes/sync/db/s;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lw2/e;

    iget-object v4, p0, Lv2/c;->a:Lx2/e;

    iget-object v5, p0, Lv2/c;->b:Lx2/g;

    iget-object v6, p0, Lv2/c;->d:Lp2/a;

    invoke-direct {v3, v4, v5, v6, v2}, Lw2/e;-><init>(Lx2/e;Lx2/g;Lp2/a;Ljava/lang/String;)V

    const-string v2, "downSyncConflictedNotes"

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v2, v4, v5}, Lw2/e;->a(Ljava/lang/String;J)V

    goto :goto_2

    :cond_0
    check-cast v3, Ls0/c;

    invoke-virtual {p0, v3, v2, v11}, Lv2/c;->j(Ls0/c;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_2
    :try_start_3
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {v3}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/notes/sync/utils/a;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_2
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    :try_start_5
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {v3}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/notes/sync/utils/a;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    throw p1

    :cond_3
    return-void
.end method

.method public final c(Ljava/util/HashMap;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p1}, Lv2/c;->u(Ljava/util/HashMap;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "downSyncPendedNotes() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "SyncNote"

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v14

    new-instance v0, Lcom/samsung/android/app/notes/sync/db/s;

    iget-object v8, v1, Lv2/c;->a:Lx2/e;

    invoke-virtual {v8}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v0, v8, v7}, Lcom/samsung/android/app/notes/sync/db/s;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->t()Ljava/lang/String;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v13, 0x0

    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "downSyncPendedNotes() : call updateLocalNote "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lw2/j;

    iget-object v9, v1, Lv2/c;->a:Lx2/e;

    iget-object v10, v1, Lv2/c;->b:Lx2/g;

    iget-object v11, v1, Lv2/c;->d:Lp2/a;

    iget-object v8, v1, Lv2/c;->e:Lx2/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v16, v8

    move-object v8, v12

    move-object/from16 v17, v6

    move-object v6, v12

    move-object v12, v7

    move-object/from16 v18, v5

    move v5, v13

    move-object/from16 v13, v16

    :try_start_2
    invoke-direct/range {v8 .. v13}, Lw2/j;-><init>(Lx2/e;Lx2/g;Lp2/a;Ljava/lang/String;Lx2/a;)V

    const/4 v8, 0x0

    invoke-virtual {v6, v15, v8, v0, v5}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/db/s;Z)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move v5, v13

    :goto_1
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "downSyncPendedNotes() : fail to updateLocalNote "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v14, v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v6, v0, Ls0/c;

    if-eqz v6, :cond_2

    move-object v6, v0

    check-cast v6, Ls0/c;

    invoke-virtual {v6}, Ls0/c;->a()I

    move-result v8

    const/16 v9, 0x13b

    if-ne v8, v9, :cond_1

    invoke-virtual {v6}, Ls0/c;->d()I

    move-result v6

    const/16 v8, 0x194

    if-ne v6, v8, :cond_1

    const-string v0, "downSyncPendedNotes() : resource not found!"

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    check-cast v0, Ls0/c;

    invoke-virtual {v1, v0, v7, v5}, Lv2/c;->j(Ls0/c;Ljava/lang/String;Z)V

    :goto_2
    move-object/from16 v6, v17

    move-object/from16 v5, v18

    goto/16 :goto_0

    :cond_2
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    move-object v6, v0

    move-object/from16 v5, v18

    goto :goto_5

    :cond_3
    move-object/from16 v18, v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    :try_start_4
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lv2/c;->a:Lx2/e;

    invoke-virtual {v2}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/notes/sync/utils/a;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v18

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void

    :catchall_1
    move-exception v0

    move-object v6, v0

    :goto_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_5
    :try_start_5
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lv2/c;->a:Lx2/e;

    invoke-virtual {v2}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/notes/sync/utils/a;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_7

    :catch_3
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    throw v6
.end method

.method public final d()V
    .locals 12

    invoke-static {}, Ly2/a;->b()Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;->getDocUuid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "SyncNote"

    if-eqz v1, :cond_1

    const-string v0, "downSyncRecoverNote() : docUuid is empty!"

    :goto_0
    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;->getServerId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "downSyncRecoverNote() : serverId is empty!"

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downSyncRecoverNote() : docUuid = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;->getDocUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , serverId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    :try_start_0
    new-instance v10, Lcom/samsung/android/app/notes/sync/db/s;

    iget-object v1, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {v1}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v10, v1, v5}, Lcom/samsung/android/app/notes/sync/db/s;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v11, Lw2/j;

    iget-object v2, p0, Lv2/c;->a:Lx2/e;

    iget-object v3, p0, Lv2/c;->b:Lx2/g;

    iget-object v4, p0, Lv2/c;->d:Lp2/a;

    iget-object v6, p0, Lv2/c;->e:Lx2/a;

    move-object v1, v11

    invoke-direct/range {v1 .. v6}, Lw2/j;-><init>(Lx2/e;Lx2/g;Lp2/a;Ljava/lang/String;Lx2/a;)V

    invoke-virtual {v11, v7, v9, v10, v8}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/db/s;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    instance-of v2, v1, Ls0/c;

    if-eqz v2, :cond_3

    check-cast v1, Ls0/c;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;->getDocUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0, v8}, Lv2/c;->j(Ls0/c;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {v9}, Ly2/a;->g(Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;)V

    return-void

    :cond_3
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    invoke-static {v9}, Ly2/a;->g(Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;)V

    throw v0
.end method

.method public final e()V
    .locals 12

    invoke-static {}, Ly2/a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downSyncRequestedNoteFirst() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncNote"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/samsung/android/app/notes/sync/db/s;

    iget-object v0, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0, v6}, Lcom/samsung/android/app/notes/sync/db/s;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v7}, Lcom/samsung/android/app/notes/sync/db/s;->g()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "downSyncRequestedNoteFirst() : Need to create a local note!"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Lcom/samsung/android/app/notes/sync/db/s;->t()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v11, Lw2/j;

    iget-object v1, p0, Lv2/c;->a:Lx2/e;

    iget-object v2, p0, Lv2/c;->b:Lx2/g;

    iget-object v3, p0, Lv2/c;->d:Lp2/a;

    iget-object v5, p0, Lv2/c;->e:Lx2/a;

    move-object v0, v11

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lw2/j;-><init>(Lx2/e;Lx2/g;Lp2/a;Ljava/lang/String;Lx2/a;)V

    invoke-virtual {v11, v10, v9, v7, v8}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/db/s;Z)V

    goto :goto_0

    :cond_2
    const-string v0, "downSyncRequestedNoteFirst() : serverId is null!"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v9}, Ly2/a;->f(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    instance-of v1, v0, Ls0/c;

    if-eqz v1, :cond_3

    check-cast v0, Ls0/c;

    invoke-virtual {p0, v0, v6, v8}, Lv2/c;->j(Ls0/c;Ljava/lang/String;Z)V

    goto :goto_0

    :goto_1
    return-void

    :cond_3
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-static {v9}, Ly2/a;->f(Ljava/lang/String;)V

    throw v0
.end method

.method public final f()V
    .locals 19

    move-object/from16 v1, p0

    const-string v2, "downSyncServerChanges : "

    const/4 v0, 0x1

    move v4, v0

    const/4 v5, 0x0

    :cond_0
    :goto_0
    iget-object v0, v1, Lv2/c;->b:Lx2/g;

    iget-object v6, v1, Lv2/c;->d:Lp2/a;

    const-string v7, "SDocxChanges"

    invoke-virtual {v0, v6, v7}, Lx2/g;->h(Lp2/a;Ljava/lang/String;)V

    iget-object v0, v1, Lv2/c;->b:Lx2/g;

    invoke-virtual {v0}, Lx2/g;->f()V

    invoke-virtual/range {p0 .. p0}, Lv2/c;->a()V

    iget-object v0, v1, Lv2/c;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/e;->p()La2/g$a;

    move-result-object v0

    const-string v6, "ND"

    invoke-virtual {v0, v6}, La2/g$a;->h(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lx2/c;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lv2/c;->h(Ljava/lang/String;)Le1/g;

    move-result-object v6
    :try_end_0
    .catch Ls0/c; {:try_start_0 .. :try_end_0} :catch_6

    iget-object v0, v1, Lv2/c;->b:Lx2/g;

    iget-object v7, v1, Lv2/c;->d:Lp2/a;

    const-string v8, "SDocxChanges!"

    invoke-virtual {v0, v7, v8}, Lx2/g;->h(Lp2/a;Ljava/lang/String;)V

    iget-object v0, v1, Lv2/c;->b:Lx2/g;

    invoke-virtual {v0}, Lx2/g;->f()V

    invoke-virtual {v1, v6}, Lv2/c;->p(Le1/g;)Z

    move-result v0

    const-string/jumbo v7, "upSyncLocalChanges() finish"

    const-string v8, "SyncNote"

    if-nez v0, :cond_2

    if-eqz v4, :cond_1

    const-string v0, "downSyncServerChanges() : None"

    invoke-static {v8, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lc3/p;->p()Lc3/p$c;

    move-result-object v0

    const-string v2, "No server note change"

    invoke-virtual {v0, v2}, Lc3/p$c;->c(Ljava/lang/String;)Lc3/p$c;

    move-result-object v0

    iget-object v2, v1, Lv2/c;->a:Lx2/e;

    invoke-virtual {v2}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lc3/p$c;->m(Landroid/content/Context;)V

    goto/16 :goto_6

    :cond_1
    invoke-static {v8, v7}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_2
    const-string v0, "downSyncServerChanges()"

    invoke-static {v8, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lv2/c;->q(Le1/g;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v6}, Le1/g;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx2/c;->I(Ljava/lang/String;)V

    invoke-virtual {v6}, Le1/g;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Le1/g;->d()Le1/g$a;

    move-result-object v0

    iget-object v0, v0, Le1/g$a;->a:Ljava/lang/String;

    invoke-virtual {v6}, Le1/g;->d()Le1/g$a;

    move-result-object v9

    iget-object v9, v9, Le1/g$a;->b:Ljava/lang/String;

    new-instance v10, Lcom/samsung/android/app/notes/sync/db/s;

    iget-object v11, v1, Lv2/c;->a:Lx2/e;

    invoke-virtual {v11}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11, v9}, Lcom/samsung/android/app/notes/sync/db/s;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v9, v0, v10}, Lv2/c;->v(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/db/s;)V

    :try_start_1
    invoke-virtual {v10}, Lcom/samsung/android/app/notes/sync/db/s;->v()J

    move-result-wide v11

    invoke-virtual {v6}, Le1/g;->d()Le1/g$a;

    move-result-object v0

    iget-wide v13, v0, Le1/g$a;->c:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v13, v11

    const-string v15, ", localServerTimeStamp = "

    const-string v3, ", remoteServerTimeStamp = "

    move/from16 v16, v5

    const-string v5, ", isLocalDeleted = "

    move/from16 v17, v4

    const-string v4, ", isServerDeleted = "

    if-lez v0, :cond_4

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v18, v7

    :try_start_3
    const-string v7, "handleLatestServerNote() : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Le1/g;->d()Le1/g$a;

    move-result-object v3

    iget-boolean v3, v3, Le1/g$a;->d:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/samsung/android/app/notes/sync/db/s;->o()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6, v10}, Lv2/c;->m(Le1/g;Lcom/samsung/android/app/notes/sync/db/s;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_4
    move-object/from16 v18, v7

    if-gez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleLatestLocalNote() : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Le1/g;->d()Le1/g$a;

    move-result-object v3

    iget-boolean v3, v3, Le1/g$a;->d:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/samsung/android/app/notes/sync/db/s;->o()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6, v10}, Lv2/c;->l(Le1/g;Lcom/samsung/android/app/notes/sync/db/s;)V

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSameTimeNotes() : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ServerTimeStamp = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Le1/g;->d()Le1/g$a;

    move-result-object v3

    iget-boolean v3, v3, Le1/g$a;->d:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/samsung/android/app/notes/sync/db/s;->o()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6, v10}, Lv2/c;->n(Le1/g;Lcom/samsung/android/app/notes/sync/db/s;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    new-instance v0, Ljava/io/File;

    iget-object v3, v1, Lv2/c;->a:Lx2/e;

    invoke-virtual {v3}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/notes/sync/utils/a;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/4 v3, 0x0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto :goto_8

    :catch_3
    move-exception v0

    move/from16 v17, v4

    move/from16 v16, v5

    :goto_3
    move-object/from16 v18, v7

    :goto_4
    :try_start_5
    instance-of v3, v0, Ls0/c;

    if-eqz v3, :cond_8

    check-cast v0, Ls0/c;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v9, v3}, Lv2/c;->j(Ls0/c;Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    new-instance v0, Ljava/io/File;

    iget-object v4, v1, Lv2/c;->a:Lx2/e;

    invoke-virtual {v4}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/notes/sync/utils/a;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v6}, Le1/g;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx2/c;->I(Ljava/lang/String;)V

    invoke-virtual {v6}, Le1/g;->b()Z

    move-result v0

    if-nez v0, :cond_6

    move-object/from16 v4, v18

    invoke-static {v8, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    return-void

    :cond_6
    if-eqz v17, :cond_7

    move v4, v3

    goto :goto_7

    :cond_7
    move/from16 v4, v17

    :goto_7
    move/from16 v5, v16

    goto/16 :goto_0

    :cond_8
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_8
    :try_start_8
    new-instance v0, Ljava/io/File;

    iget-object v4, v1, Lv2/c;->a:Lx2/e;

    invoke-virtual {v4}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/notes/sync/utils/a;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_9

    :catch_5
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    throw v3

    :catch_6
    move-exception v0

    move/from16 v17, v4

    move/from16 v16, v5

    const/4 v3, 0x0

    invoke-virtual {v0}, Ls0/c;->d()I

    move-result v4

    const/16 v5, 0x193

    if-ne v4, v5, :cond_9

    add-int/lit8 v5, v16, 0x1

    const/4 v4, 0x2

    move/from16 v6, v16

    if-ge v6, v4, :cond_9

    iget-object v0, v1, Lv2/c;->b:Lx2/g;

    invoke-virtual {v0}, Lx2/g;->c()V

    iget-object v0, v1, Lv2/c;->c:Lt2/c;

    invoke-virtual {v0}, Lt2/c;->c()V

    move/from16 v4, v17

    goto/16 :goto_0

    :cond_9
    throw v0
.end method

.method public final g()V
    .locals 12

    invoke-static {}, Ly2/a;->c()Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v8, v0, Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;->docUuid:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downSyncTemporalServerNoteFirst() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SyncNote"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/app/notes/sync/db/s;

    iget-object v3, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {v3}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v8}, Lcom/samsung/android/app/notes/sync/db/s;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v1}, Lcom/samsung/android/app/notes/sync/db/s;->g()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/sync/db/s;->t()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v11, Lw2/d;

    iget-object v2, p0, Lv2/c;->a:Lx2/e;

    iget-object v3, p0, Lv2/c;->b:Lx2/g;

    iget-object v4, p0, Lv2/c;->d:Lp2/a;

    iget-object v5, v0, Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;->tempServerNoteListener:Lcom/samsung/android/support/senl/nt/base/common/sync/ITempServerNoteListener;

    iget-object v7, p0, Lv2/c;->e:Lx2/a;

    move-object v1, v11

    move-object v6, v8

    invoke-direct/range {v1 .. v7}, Lw2/d;-><init>(Lx2/e;Lx2/g;Lp2/a;Lcom/samsung/android/support/senl/nt/base/common/sync/ITempServerNoteListener;Ljava/lang/String;Lx2/a;)V

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;->fullFolderPath:Ljava/lang/String;

    invoke-virtual {v11, v10, v0}, Lw2/d;->k(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "downSyncTemporalServerNoteFirst() : serverId is null!"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    invoke-static {v9}, Ly2/a;->h(Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    instance-of v1, v0, Ls0/c;

    if-eqz v1, :cond_3

    check-cast v0, Ls0/c;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v8, v1}, Lv2/c;->j(Ls0/c;Ljava/lang/String;Z)V

    goto :goto_0

    :goto_1
    return-void

    :cond_3
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-static {v9}, Ly2/a;->h(Lcom/samsung/android/support/senl/nt/base/common/sync/TemporalServerNoteInfo;)V

    throw v0
.end method

.method public final h(Ljava/lang/String;)Le1/g;
    .locals 4

    iget-object v0, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/e;->p()La2/g$a;

    move-result-object v0

    const-string v1, "ND"

    invoke-virtual {v0, v1}, La2/g$a;->h(Ljava/lang/String;)V

    new-instance v0, Lu2/a;

    iget-object v1, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {v1}, Lx2/e;->p()La2/g$a;

    move-result-object v1

    iget-object v2, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {v2}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lu2/a;-><init>(La2/g$a;Landroid/content/Context;Ljava/lang/String;La2/g$b;)V

    invoke-virtual {v0}, Lu2/a;->c()Le1/g;

    move-result-object p1

    return-object p1
.end method

.method public final i(Ls0/c;Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc3/p;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lc3/p;->v(Landroid/content/Context;Ljava/lang/Exception;)V

    :cond_0
    invoke-virtual {p1}, Ls0/c;->a()I

    move-result v0

    const/16 v1, 0x147

    const-string v2, "\n"

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lc3/p;->p()Lc3/p$c;

    move-result-object v0

    const-string v1, "FAIL_PARSE_XML"

    invoke-virtual {v0, v1}, Lc3/p$c;->c(Ljava/lang/String;)Lc3/p$c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lc3/p$c;->b(Ljava/lang/String;)Lc3/p$c;

    move-result-object p2

    iget-object v0, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lc3/p$c;->m(Landroid/content/Context;)V

    new-instance p2, Lu0/j;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lu0/j;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, Lu0/a;->b()V

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p1}, Ls0/c;->a()I

    move-result v0

    const/16 v1, 0x146

    const/4 v4, 0x0

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/samsung/android/app/notes/sync/db/s;

    iget-object v1, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {v1}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/samsung/android/app/notes/sync/db/s;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->p()I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/e;->w()Lcom/samsung/android/app/notes/sync/db/t;

    move-result-object v0

    invoke-virtual {v0, p2, v3}, Lcom/samsung/android/app/notes/sync/db/t;->j(Ljava/lang/String;I)V

    iget-object v0, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/e;->w()Lcom/samsung/android/app/notes/sync/db/t;

    move-result-object v0

    invoke-virtual {v0, p2, v4}, Lcom/samsung/android/app/notes/sync/db/t;->m(Ljava/lang/String;I)V

    :cond_2
    invoke-static {}, Lc3/p;->p()Lc3/p$c;

    move-result-object v0

    const-string v1, "FAIL_COMPOSE_XML"

    invoke-virtual {v0, v1}, Lc3/p$c;->c(Ljava/lang/String;)Lc3/p$c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lc3/p$c;->b(Ljava/lang/String;)Lc3/p$c;

    move-result-object p2

    iget-object v0, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lc3/p$c;->m(Landroid/content/Context;)V

    new-instance p2, Lu0/c;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lu0/c;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ls0/c;->a()I

    move-result v0

    const/16 v1, 0x13b

    const-string v2, "SyncNote"

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Ls0/c;->d()I

    move-result v0

    const/16 v1, 0x190

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Ls0/c;->d()I

    move-result v0

    const/16 v1, 0x195

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Ls0/c;->d()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    throw p1

    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCommonSyncException() : handle Server error, statusCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ls0/c;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->ef(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lc3/p;->p()Lc3/p$c;

    move-result-object v0

    const-string v1, "FAIL_SERVER_ERR"

    invoke-virtual {v0, v1}, Lc3/p$c;->c(Ljava/lang/String;)Lc3/p$c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ls0/c;->d()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc3/p$c;->b(Ljava/lang/String;)Lc3/p$c;

    move-result-object p1

    iget-object p2, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {p2}, Lx2/d;->a()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lc3/p$c;->m(Landroid/content/Context;)V

    goto/16 :goto_3

    :cond_6
    invoke-virtual {p1}, Ls0/c;->a()I

    move-result v0

    const/16 v1, 0x150

    if-ne v0, v1, :cond_b

    new-instance v0, Lcom/samsung/android/app/notes/sync/db/s;

    iget-object v1, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {v1}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/samsung/android/app/notes/sync/db/s;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->p()I

    move-result v0

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/e;->w()Lcom/samsung/android/app/notes/sync/db/t;

    move-result-object v0

    invoke-virtual {v0, p2, v3}, Lcom/samsung/android/app/notes/sync/db/t;->j(Ljava/lang/String;I)V

    iget-object v0, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/e;->w()Lcom/samsung/android/app/notes/sync/db/t;

    move-result-object v0

    invoke-virtual {v0, p2, v4}, Lcom/samsung/android/app/notes/sync/db/t;->m(Ljava/lang/String;I)V

    :cond_7
    invoke-virtual {p1}, Ls0/c;->b()Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Ls0/c;->b()Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lu0/n;

    invoke-direct {p1}, Lu0/n;-><init>()V

    invoke-virtual {p1}, Lu0/a;->a()V

    goto/16 :goto_3

    :cond_8
    invoke-virtual {p1}, Ls0/c;->c()Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Ls0/c;->c()Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {p1}, Lx2/d;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/sync/SyncState;->isAppUpdateNeeded(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {p1}, Lx2/d;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/samsung/android/support/senl/nt/base/common/sync/SyncState;->setAppUpdateNeeded(Landroid/content/Context;Z)V

    :cond_9
    iget-object p1, p0, Lv2/c;->e:Lx2/a;

    invoke-virtual {p1, p2}, Lx2/a;->h(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleCommonSyncException: fail to notify the invalid version = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    new-instance p1, Lu0/b;

    invoke-direct {p1}, Lu0/b;-><init>()V

    goto :goto_2

    :cond_b
    invoke-virtual {p1}, Ls0/c;->a()I

    move-result p2

    const/16 v0, 0x151

    if-ne p2, v0, :cond_c

    const-string p1, "handleCommonSyncException: SyncConstants.ResultCode.FAIL_SAVE_AND_PASS"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->ef(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    invoke-virtual {p1}, Ls0/c;->a()I

    move-result p2

    const/16 v0, 0x152

    if-ne p2, v0, :cond_d

    goto :goto_3

    :cond_d
    invoke-virtual {p1}, Ls0/c;->a()I

    move-result p1

    const/16 p2, 0x14e

    if-ne p1, p2, :cond_f

    const-string p1, "handleCommonSyncException: SyncConstants.ResultCode.FAIL_EXCEED_1G!"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->ef(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lu0/i;

    invoke-direct {p1}, Lu0/i;-><init>()V

    :goto_2
    invoke-virtual {p1}, Lu0/a;->b()V

    :cond_e
    :goto_3
    return v3

    :cond_f
    return v4
.end method

.method public final j(Ls0/c;Ljava/lang/String;Z)V
    .locals 3

    invoke-virtual {p1}, Ls0/c;->a()I

    move-result v0

    const-string v1, "SyncNote"

    const/16 v2, 0x152

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDownSyncException() : FAIL_NOT_REPORT_AND_PASS => "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDownSyncException() : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ls0/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->ef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-nez p3, :cond_3

    invoke-virtual {p0, p1, p2}, Lv2/c;->i(Ls0/c;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Ls0/c;->a()I

    move-result p2

    const/16 p3, 0x153

    if-ne p2, p3, :cond_1

    const-string p1, "handleDownSyncException() : invalid size note in server is passed!"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->ef(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    throw p1

    :cond_2
    :goto_1
    return-void

    :cond_3
    throw p1
.end method

.method public final k()V
    .locals 10

    const-string v0, "SyncNote"

    const-string v1, "handleInvalidCoeditNotesInServer() start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "eyJ2ZXJzaW9uIjowLCJlbmNyeXB0ZWRHdWlkIjoiIiwicmVxdWVzdFRpbWVTdGFtcCI6MCwibW9kaWZpZWRUaW1lIjowLCJhcHBWZXJzaW9uIjoiMCIsInNka1ZlcnNpb24iOiIwIiwicHVycG9zZSI6IklOSVRJQUwiLCJ0eXBlIjoiTk9URSJ9"

    :goto_0
    iget-object v2, p0, Lv2/c;->b:Lx2/g;

    iget-object v3, p0, Lv2/c;->d:Lp2/a;

    const-string v4, "handleInvalidCoeditNotesInServer"

    invoke-virtual {v2, v3, v4}, Lx2/g;->h(Lp2/a;Ljava/lang/String;)V

    iget-object v2, p0, Lv2/c;->b:Lx2/g;

    invoke-virtual {v2}, Lx2/g;->f()V

    invoke-virtual {p0}, Lv2/c;->a()V

    invoke-virtual {p0, v1}, Lv2/c;->h(Ljava/lang/String;)Le1/g;

    move-result-object v1

    invoke-virtual {p0, v1}, Lv2/c;->p(Le1/g;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Le1/g;->d()Le1/g$a;

    move-result-object v2

    iget-object v2, v2, Le1/g$a;->b:Ljava/lang/String;

    invoke-virtual {v1}, Le1/g;->d()Le1/g$a;

    move-result-object v3

    iget-boolean v3, v3, Le1/g$a;->d:Z

    if-nez v3, :cond_1

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->isCoeditUuid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lu2/e;

    iget-object v3, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {v3}, Lx2/e;->p()La2/g$a;

    move-result-object v4

    iget-object v3, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {v3}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1}, Le1/g;->d()Le1/g$a;

    move-result-object v3

    iget-object v6, v3, Le1/g$a;->a:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime()J

    move-result-wide v7

    const/4 v9, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lu2/e;-><init>(La2/g$a;Landroid/content/Context;Ljava/lang/String;JLa2/g$b;)V

    invoke-virtual {v2}, Lu2/e;->c()V

    :cond_1
    invoke-virtual {v1}, Le1/g;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Le1/g;->b()Z

    move-result v1

    if-nez v1, :cond_2

    :goto_1
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/sync/SyncState;->setClearInvalidCoEditNotes(Z)V

    const-string v1, "handleInvalidCoeditNotesInServer() finish"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method

.method public final l(Le1/g;Lcom/samsung/android/app/notes/sync/db/s;)V
    .locals 5

    invoke-virtual {p1}, Le1/g;->d()Le1/g$a;

    move-result-object v0

    iget-object v0, v0, Le1/g$a;->b:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/app/notes/sync/db/s;->o()I

    move-result v1

    const-string v2, "handleLatestLocalNote() : "

    const-string v3, "SyncNote"

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is a deleted state locally"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Le1/g;->d()Le1/g$a;

    move-result-object v1

    iget-boolean v1, v1, Le1/g$a;->d:Z

    if-eqz v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is a deleted state remotely"

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Le1/g;->d()Le1/g$a;

    move-result-object v1

    iget-boolean v1, v1, Le1/g$a;->h:Z

    if-eqz v1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is modified later than server"

    goto :goto_0

    :cond_2
    new-instance v1, La3/a;

    invoke-direct {v1, v0}, La3/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Le1/g;->d()Le1/g$a;

    move-result-object v0

    iget-object v0, v0, Le1/g$a;->f:Ljava/lang/String;

    invoke-virtual {p1}, Le1/g;->d()Le1/g$a;

    move-result-object p1

    iget-object p1, p1, Le1/g$a;->g:Ljava/lang/String;

    invoke-virtual {v1, p2, v0, p1}, La3/a;->d(Lcom/samsung/android/app/notes/sync/db/s;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_1
    return-void
.end method

.method public final m(Le1/g;Lcom/samsung/android/app/notes/sync/db/s;)V
    .locals 15

    move-object v1, p0

    const-string v2, "createLocalNote_res"

    const-string/jumbo v3, "updateLocalNote_res"

    invoke-virtual/range {p1 .. p1}, Le1/g;->d()Le1/g$a;

    move-result-object v0

    iget-object v0, v0, Le1/g$a;->a:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Le1/g;->d()Le1/g$a;

    move-result-object v4

    iget-object v9, v4, Le1/g$a;->b:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/notes/sync/db/s;->v()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Le1/g;->d()Le1/g$a;

    move-result-object v6

    iget-wide v6, v6, Le1/g$a;->c:J

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/notes/sync/db/s;->g()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v8

    const/4 v11, 0x0

    const-string v12, "SyncNote"

    if-eqz v8, :cond_2

    iget-object v8, v1, Lv2/c;->e:Lx2/a;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/notes/sync/db/s;->c()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lx2/a;->f(Ljava/lang/String;I)Z

    move-result v8

    const-string v10, "handleLatestServerNote() : local "

    if-eqz v8, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is being updated and so ignore the server update!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v8, v1, Lv2/c;->e:Lx2/a;

    invoke-virtual {v8, v9}, Lx2/a;->g(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not being saved due to the busy composer!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ly2/a;->d()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ly2/a;->d()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    invoke-virtual/range {p1 .. p1}, Le1/g;->d()Le1/g$a;

    move-result-object v8

    iget-boolean v8, v8, Le1/g$a;->d:Z

    const/4 v10, 0x1

    if-eq v8, v10, :cond_6

    iget-object v4, v1, Lv2/c;->a:Lx2/e;

    invoke-virtual {v4}, Lx2/e;->t()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/notes/sync/db/s;->g()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v5

    const-string v8, "deleted"

    if-nez v5, :cond_4

    if-eqz v4, :cond_3

    iget-wide v10, v4, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->syncModifiedTime:J

    cmp-long v3, v6, v10

    if-gez v3, :cond_3

    iget-object v3, v4, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->state:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleLatestServerNote() : ignore to createLocalNote and deleteServerNote : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ,syncModifiedTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v4, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->syncModifiedTime:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lw2/f;

    iget-object v3, v1, Lv2/c;->a:Lx2/e;

    iget-object v5, v1, Lv2/c;->b:Lx2/g;

    iget-object v6, v1, Lv2/c;->d:Lp2/a;

    invoke-direct {v2, v3, v5, v6, v9}, Lw2/f;-><init>(Lx2/e;Lx2/g;Lp2/a;Ljava/lang/String;)V

    iget-wide v3, v4, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->syncModifiedTime:J

    invoke-virtual {v2, v0, v3, v4}, Lw2/f;->a(Ljava/lang/String;J)V

    goto/16 :goto_1

    :cond_3
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    new-instance v11, Lw2/b;

    iget-object v6, v1, Lv2/c;->a:Lx2/e;

    iget-object v7, v1, Lv2/c;->b:Lx2/g;

    iget-object v8, v1, Lv2/c;->d:Lp2/a;

    iget-object v10, v1, Lv2/c;->e:Lx2/a;

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lw2/b;-><init>(Lx2/e;Lx2/g;Lp2/a;Ljava/lang/String;Lx2/a;)V

    invoke-virtual/range {p1 .. p1}, Le1/g;->d()Le1/g$a;

    move-result-object v5

    iget-object v5, v5, Le1/g$a;->f:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Lw2/b;->h(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleLatestServerNote() : createLocalNote et = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lv2/c;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lc3/p;->q(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    iget-object v3, v1, Lv2/c;->a:Lx2/e;

    invoke-virtual {v3}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lc3/p;->q(Landroid/content/Context;Ljava/lang/String;)V

    throw v0

    :cond_4
    if-eqz v4, :cond_5

    iget-wide v13, v4, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->syncModifiedTime:J

    cmp-long v2, v6, v13

    if-gez v2, :cond_5

    iget-object v2, v4, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->state:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v0, Lw2/e;

    iget-object v2, v1, Lv2/c;->a:Lx2/e;

    iget-object v3, v1, Lv2/c;->b:Lx2/g;

    iget-object v5, v1, Lv2/c;->d:Lp2/a;

    invoke-direct {v0, v2, v3, v5, v9}, Lw2/e;-><init>(Lx2/e;Lx2/g;Lp2/a;Ljava/lang/String;)V

    iget-wide v2, v4, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->syncModifiedTime:J

    invoke-virtual {v0, v12, v2, v3}, Lw2/e;->a(Ljava/lang/String;J)V

    goto/16 :goto_1

    :cond_5
    :try_start_1
    new-instance v2, Lw2/j;

    iget-object v6, v1, Lv2/c;->a:Lx2/e;

    iget-object v7, v1, Lv2/c;->b:Lx2/g;

    iget-object v8, v1, Lv2/c;->d:Lp2/a;

    iget-object v10, v1, Lv2/c;->e:Lx2/a;

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lw2/j;-><init>(Lx2/e;Lx2/g;Lp2/a;Ljava/lang/String;Lx2/a;)V

    invoke-virtual/range {p1 .. p1}, Le1/g;->d()Le1/g$a;

    move-result-object v4

    iget-object v4, v4, Le1/g$a;->f:Ljava/lang/String;

    move-object/from16 v5, p2

    invoke-virtual {v2, v0, v4, v5, v11}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/db/s;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, v1, Lv2/c;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lc3/p;->q(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    iget-object v2, v1, Lv2/c;->a:Lx2/e;

    invoke-virtual {v2}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lc3/p;->q(Landroid/content/Context;Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual/range {p1 .. p1}, Le1/g;->d()Le1/g$a;

    move-result-object v0

    iget-object v0, v0, Le1/g$a;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "ServerNote"

    goto :goto_0

    :cond_7
    invoke-virtual/range {p1 .. p1}, Le1/g;->d()Le1/g$a;

    move-result-object v0

    iget-object v0, v0, Le1/g$a;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-wide/16 v2, -0x1

    cmp-long v2, v4, v2

    if-nez v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleLatestServerNote() : delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "(already deleted) by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    new-instance v2, Lw2/e;

    iget-object v3, v1, Lv2/c;->a:Lx2/e;

    iget-object v4, v1, Lv2/c;->b:Lx2/g;

    iget-object v5, v1, Lv2/c;->d:Lp2/a;

    invoke-direct {v2, v3, v4, v5, v9}, Lw2/e;-><init>(Lx2/e;Lx2/g;Lp2/a;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v6, v7}, Lw2/e;->a(Ljava/lang/String;J)V

    :goto_1
    return-void
.end method

.method public final n(Le1/g;Lcom/samsung/android/app/notes/sync/db/s;)V
    .locals 2

    invoke-virtual {p1}, Le1/g;->d()Le1/g$a;

    move-result-object v0

    iget-object v0, v0, Le1/g$a;->b:Ljava/lang/String;

    new-instance v1, La3/a;

    invoke-direct {v1, v0}, La3/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/notes/sync/db/s;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Le1/g;->d()Le1/g$a;

    move-result-object p1

    iget-object p1, p1, Le1/g$a;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, La3/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, La3/a;->a(Lcom/samsung/android/app/notes/sync/db/s;)V

    new-instance p1, Lcom/samsung/android/app/notes/sync/synchronization/managers/b;

    invoke-direct {p1}, Lcom/samsung/android/app/notes/sync/synchronization/managers/b;-><init>()V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/notes/sync/synchronization/managers/b;->b(Lcom/samsung/android/app/notes/sync/db/s;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/notes/sync/synchronization/managers/b;->d(Lcom/samsung/android/app/notes/sync/db/s;)V

    return-void
.end method

.method public final o(Ls0/c;Lcom/samsung/android/app/notes/sync/db/s;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ls0/c;->a()I

    move-result v0

    const-string v1, "SyncNote"

    const/16 v2, 0x152

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUpSyncException() : FAIL_NOT_REPORT_AND_PASS => "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUpSyncException() : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ls0/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->ef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {p0, p1, p3}, Lv2/c;->i(Ls0/c;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Ls0/c;->a()I

    move-result v0

    const/16 v1, 0x153

    if-ne v0, v1, :cond_1

    new-instance p1, La3/d;

    invoke-direct {p1, p3}, La3/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, La3/d;->d(Lcom/samsung/android/app/notes/sync/db/s;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ls0/c;->a()I

    move-result v0

    const/16 v1, 0x14f

    if-ne v0, v1, :cond_2

    new-instance p1, La3/g;

    invoke-direct {p1, p3}, La3/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, La3/g;->d(Lcom/samsung/android/app/notes/sync/db/s;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ls0/c;->a()I

    move-result v0

    const/16 v1, 0x14c

    if-ne v0, v1, :cond_3

    new-instance p1, La3/e;

    invoke-direct {p1, p3}, La3/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, La3/e;->d(Lcom/samsung/android/app/notes/sync/db/s;)V

    goto :goto_1

    :cond_3
    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method public final p(Le1/g;)Z
    .locals 0

    invoke-virtual {p1}, Le1/g;->d()Le1/g$a;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final q(Le1/g;)Z
    .locals 5

    invoke-virtual {p1}, Le1/g;->d()Le1/g$a;

    move-result-object v0

    iget-object v0, v0, Le1/g$a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Le1/g;->d()Le1/g$a;

    move-result-object v1

    iget-object v1, v1, Le1/g$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "isAvailableDownSync() : skip "

    const/4 v3, 0x0

    const-string v4, "SyncNote"

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " due to the empty serverId"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->ef(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    iget-object v0, p0, Lv2/c;->b:Lx2/g;

    invoke-virtual {p1}, Le1/g;->d()Le1/g$a;

    move-result-object p1

    iget-boolean p1, p1, Le1/g$a;->e:Z

    invoke-virtual {v0, p1}, Lx2/f;->d(Z)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "ignore the downloaded lock note due to the LDU!"

    invoke-static {v4, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->isCoeditUuid(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " due to the coEdit uuid"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final r(Lcom/samsung/android/app/notes/sync/db/s;Ljava/lang/String;)Z
    .locals 7

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/db/s;->r()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SyncNote"

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isFolderInfoOfNoteUploaded() : No note node "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/db/s;->i()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->UNCATEGORIZED:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->OLD_NOTES:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->RECYCLE_BIN:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance v4, Lcom/samsung/android/app/notes/sync/db/g;

    iget-object v5, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {v5}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/app/notes/sync/db/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Lcom/samsung/android/app/notes/sync/db/g;->a(Ljava/lang/String;)Z

    move-result v5

    const-string v6, " of "

    if-eqz v5, :cond_2

    invoke-virtual {v4, v0}, Lcom/samsung/android/app/notes/sync/db/g;->e(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v3, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFolderInfoOfNoteUploaded() : No parent node "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {v1}, Lx2/e;->t()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/db/s;->o()I

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isFolderInfoOfNoteUploaded() : No parent "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {p1}, Lx2/e;->w()Lcom/samsung/android/app/notes/sync/db/t;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/notes/sync/db/t;->u(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return v3
.end method

.method public s(Z)V
    .locals 5

    const-string/jumbo v0, "upSyncedNotesChanges"

    const-string v1, "perform() : fail to delete the temp files : "

    const-string v2, "downSyncedNotesChanged"

    iget-object v3, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {v3}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Start SyncNote"

    invoke-static {v3, v4}, Lc3/p;->s(Landroid/content/Context;Ljava/lang/String;)V

    const-string v3, "SyncNote"

    const-string v4, "Note (downSync)"

    invoke-static {v3, v4}, Lc3/p;->m(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v4, p0, Lv2/c;->e:Lx2/a;

    invoke-virtual {v4}, Lx2/a;->a()V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lv2/c;->d()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lv2/c;->w()V

    iget-object v4, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {v4}, Lx2/e;->q()Lcom/samsung/android/app/notes/sync/db/f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/notes/sync/db/f;->f()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v4}, Lv2/c;->b(Ljava/util/List;)V

    invoke-virtual {p0}, Lv2/c;->f()V

    invoke-static {}, Ly2/a;->d()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {p0, v4}, Lv2/c;->c(Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    iget-object v4, p0, Lv2/c;->e:Lx2/a;

    invoke-virtual {v4}, Lx2/a;->b()V

    iget-object v4, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {v4}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lc3/p;->q(Landroid/content/Context;Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string p1, "Note (upSync)"

    invoke-static {v3, p1}, Lc3/p;->m(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lv2/c;->x()V

    invoke-static {}, Ly2/a;->d()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lv2/c;->c(Ljava/util/HashMap;)V

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object p1

    invoke-virtual {p1}, Ln/a;->k()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->isRunningOnEditMode()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->X()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    :try_start_2
    new-instance p1, Ljava/io/File;

    iget-object v2, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {v2}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lj0/a;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    iget-object p1, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {p1}, Lx2/d;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lc3/p;->q(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object p1, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {p1}, Lx2/d;->a()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Finish SyncNote"

    invoke-static {p1, v0}, Lc3/p;->s(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    iget-object v4, p0, Lv2/c;->e:Lx2/a;

    invoke-virtual {v4}, Lx2/a;->b()V

    iget-object v4, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {v4}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lc3/p;->q(Landroid/content/Context;Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_4
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {v4}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lj0/a;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    iget-object v2, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {v2}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lc3/p;->q(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    throw p1
.end method

.method public t()V
    .locals 2

    const-string v0, "SyncNote"

    const-string v1, "prePerform() start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/SyncState;->isClearInvalidCoEditNotes()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lv2/c;->k()V

    :cond_0
    const-string v1, "prePerform() finish"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final u(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x3

    if-le v2, v4, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeFailedNotes() : removed note = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SyncNote"

    invoke-static {v4, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/db/s;)V
    .locals 1

    invoke-virtual {p3}, Lcom/samsung/android/app/notes/sync/db/s;->g()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/samsung/android/app/notes/sync/db/s;->t()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "repairServerId() : updated serverId "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " of "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "SyncNote"

    invoke-static {v0, p3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {p3}, Lx2/e;->w()Lcom/samsung/android/app/notes/sync/db/t;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/app/notes/sync/db/t;->r(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final w()V
    .locals 0

    invoke-virtual {p0}, Lv2/c;->g()V

    invoke-virtual {p0}, Lv2/c;->e()V

    invoke-virtual {p0}, Lv2/c;->z()V

    return-void
.end method

.method public final x()V
    .locals 6

    iget-object v0, p0, Lv2/c;->b:Lx2/g;

    iget-object v1, p0, Lv2/c;->d:Lp2/a;

    const-string/jumbo v2, "upSyncLocalChanges"

    invoke-virtual {v0, v1, v2}, Lx2/g;->h(Lp2/a;Ljava/lang/String;)V

    iget-object v0, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/e;->q()Lcom/samsung/android/app/notes/sync/db/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/app/notes/sync/db/f;->s(IZ)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lv2/c;->a:Lx2/e;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lx2/e;->z(Z)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "SyncNote"

    if-eqz v1, :cond_0

    const-string/jumbo v0, "upSyncLocalChanges() : None"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lc3/p;->p()Lc3/p$c;

    move-result-object v0

    const-string v1, "No local change"

    invoke-virtual {v0, v1}, Lc3/p$c;->c(Ljava/lang/String;)Lc3/p$c;

    move-result-object v0

    iget-object v1, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {v1}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc3/p$c;->m(Landroid/content/Context;)V

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "upSyncLocalChanges() : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lv2/c;->b:Lx2/g;

    iget-object v4, p0, Lv2/c;->d:Lp2/a;

    const-string/jumbo v5, "upSyncLocalChanges!"

    invoke-virtual {v3, v4, v5}, Lx2/g;->h(Lp2/a;Ljava/lang/String;)V

    iget-object v3, p0, Lv2/c;->b:Lx2/g;

    invoke-virtual {v3}, Lx2/g;->i()V

    invoke-virtual {p0}, Lv2/c;->a()V

    invoke-virtual {p0, v1}, Lv2/c;->y(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "upSyncLocalChanges() finish"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final y(Ljava/lang/String;)V
    .locals 14

    new-instance v0, Lcom/samsung/android/app/notes/sync/db/s;

    iget-object v1, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {v1}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/notes/sync/db/s;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->j()I

    move-result v1

    const-string/jumbo v2, "upSyncLocalNote() : "

    const/4 v3, 0x1

    const-string v4, "SyncNote"

    const/4 v5, 0x5

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {v1}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v1

    invoke-virtual {v1}, Lf/a;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is locked but passed due to empty current guidHash"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x40

    if-eq v6, v7, :cond_1

    invoke-static {v5}, Lcom/samsung/android/support/senl/cm/base/common/util/HashUtils;->generateSha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_1
    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isEmptyGuid(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is locked but passed due to different account = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/e;->w()Lcom/samsung/android/app/notes/sync/db/t;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/samsung/android/app/notes/sync/db/t;->j(Ljava/lang/String;I)V

    iget-object v0, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/e;->w()Lcom/samsung/android/app/notes/sync/db/t;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/notes/sync/db/t;->m(Ljava/lang/String;I)V

    return-void

    :cond_2
    invoke-virtual {p0, v0, p1}, Lv2/c;->r(Lcom/samsung/android/app/notes/sync/db/s;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not uploaded due to no folder info!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {p1, v3}, Lx2/e;->z(Z)V

    return-void

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->p()I

    move-result v1

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not dirty!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    :try_start_0
    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->o()I

    move-result v2

    if-ne v2, v3, :cond_7

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v1, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {v1}, Lx2/e;->w()Lcom/samsung/android/app/notes/sync/db/t;

    move-result-object v1

    const-string v2, "OnlyLocal"

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/app/notes/sync/db/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;->DELETE:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->v()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->m()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->n()Ljava/lang/String;

    move-result-object v8

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->n(Ljava/lang/String;Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_5
    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;->DELETE:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->v()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->m()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->n()Ljava/lang/String;

    move-result-object v9

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->n(Ljava/lang/String;Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;JLjava/lang/String;Ljava/lang/String;)V

    :cond_6
    new-instance v2, Lw2/f;

    iget-object v3, p0, Lv2/c;->a:Lx2/e;

    iget-object v4, p0, Lv2/c;->b:Lx2/g;

    iget-object v5, p0, Lv2/c;->d:Lp2/a;

    invoke-direct {v2, v3, v4, v5, p1}, Lw2/f;-><init>(Lx2/e;Lx2/g;Lp2/a;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->v()J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Lw2/f;->a(Ljava/lang/String;J)V

    goto/16 :goto_3

    :cond_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    new-instance v5, Lr0/a;

    iget-object v6, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {v6}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lr0/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lr0/a;->m(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v3, :cond_8

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object v6

    sget-object v8, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;->CREATE:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->v()J

    move-result-wide v9

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->m()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    move-object v7, p1

    invoke-virtual/range {v6 .. v12}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->n(Ljava/lang/String;Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;JLjava/lang/String;Ljava/lang/String;)V

    :cond_8
    new-instance v3, Lw2/c;

    iget-object v5, p0, Lv2/c;->a:Lx2/e;

    iget-object v6, p0, Lv2/c;->b:Lx2/g;

    iget-object v7, p0, Lv2/c;->d:Lp2/a;

    invoke-direct {v3, v5, v6, v7, p1}, Lw2/c;-><init>(Lx2/e;Lx2/g;Lp2/a;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lw2/c;->f(Lcom/samsung/android/app/notes/sync/db/s;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createServerNote et = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v4, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    new-instance v2, Lr0/a;

    iget-object v7, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {v7}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Lr0/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->i()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lr0/a;->m(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_b

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->j()I

    move-result v2

    if-nez v2, :cond_a

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object v7

    sget-object v9, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;->UPDATE:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->v()J

    move-result-wide v10

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->m()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    :goto_1
    move-object v8, p1

    invoke-virtual/range {v7 .. v13}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->n(Ljava/lang/String;Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object v7

    sget-object v9, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;->DELETE:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->v()J

    move-result-wide v10

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->m()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->n()Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    :cond_b
    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->o()I

    move-result v2

    if-nez v2, :cond_c

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object v7

    sget-object v9, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;->DELETE:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->v()J

    move-result-wide v10

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->m()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->n()Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    :cond_c
    :goto_2
    new-instance v2, Lw2/k;

    iget-object v3, p0, Lv2/c;->a:Lx2/e;

    iget-object v7, p0, Lv2/c;->b:Lx2/g;

    iget-object v8, p0, Lv2/c;->d:Lp2/a;

    invoke-direct {v2, v3, v7, v8, p1}, Lw2/k;-><init>(Lx2/e;Lx2/g;Lp2/a;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v0}, Lw2/k;->f(Ljava/lang/String;Lcom/samsung/android/app/notes/sync/db/s;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateServerNote et = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    instance-of v2, v1, Ls0/c;

    if-eqz v2, :cond_e

    check-cast v1, Ls0/c;

    invoke-virtual {p0, v1, v0, p1}, Lv2/c;->o(Ls0/c;Lcom/samsung/android/app/notes/sync/db/s;Ljava/lang/String;)V

    :cond_d
    :goto_3
    return-void

    :cond_e
    throw v1
.end method

.method public final z()V
    .locals 5

    invoke-static {}, Ly2/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "upSyncRequestedNoteFirst() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SyncNote"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lv2/c;->y(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v1}, Ly2/a;->i(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    instance-of v3, v2, Ls0/c;

    if-eqz v3, :cond_1

    new-instance v3, Lcom/samsung/android/app/notes/sync/db/s;

    iget-object v4, p0, Lv2/c;->a:Lx2/e;

    invoke-virtual {v4}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/samsung/android/app/notes/sync/db/s;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    check-cast v2, Ls0/c;

    invoke-virtual {p0, v2, v3, v0}, Lv2/c;->o(Ls0/c;Lcom/samsung/android/app/notes/sync/db/s;Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    return-void

    :cond_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-static {v1}, Ly2/a;->i(Ljava/lang/String;)V

    throw v0
.end method
