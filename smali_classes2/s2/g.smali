.class public Ls2/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lt2/b;


# direct methods
.method public constructor <init>(Lt2/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls2/g;->a:Lt2/b;

    return-void
.end method

.method public static bridge synthetic a(Ls2/g;)Lt2/b;
    .locals 0

    iget-object p0, p0, Ls2/g;->a:Lt2/b;

    return-object p0
.end method


# virtual methods
.method public b()Z
    .locals 23

    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v2

    invoke-virtual {v2}, Lx/e;->k()Lb0/c;

    move-result-object v2

    iget-object v3, v1, Ls2/g;->a:Lt2/b;

    invoke-virtual {v3}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lb0/c;->getTagUUIDListByDeleted(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v2

    const-string v3, "SyncOldNote$SyncMergedTag"

    if-nez v2, :cond_0

    const-string v0, "Failed to getTagUUIDListByDeleted"

    :goto_0
    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_0
    iget-object v5, v1, Ls2/g;->a:Lt2/b;

    invoke-virtual {v5}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tagUuidList size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x1

    if-le v15, v12, :cond_8

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move v11, v12

    :goto_1
    if-ge v11, v15, :cond_8

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v8

    invoke-virtual {v8}, Lx/e;->k()Lb0/c;

    move-result-object v8

    iget-object v9, v1, Ls2/g;->a:Lt2/b;

    invoke-virtual {v9}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v9

    invoke-interface {v8, v9, v7}, Lb0/c;->getTagName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v9

    invoke-virtual {v9}, Lx/e;->k()Lb0/c;

    move-result-object v9

    iget-object v10, v1, Ls2/g;->a:Lt2/b;

    invoke-virtual {v10}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v10

    invoke-interface {v9, v10, v6}, Lb0/c;->getTagName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v8

    invoke-virtual {v8}, Lx/e;->k()Lb0/c;

    move-result-object v8

    iget-object v10, v1, Ls2/g;->a:Lt2/b;

    invoke-virtual {v10}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v10

    invoke-interface {v8, v10, v7}, Lb0/c;->getTagServerTimestamp(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v16

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v8

    invoke-virtual {v8}, Lx/e;->k()Lb0/c;

    move-result-object v8

    iget-object v10, v1, Ls2/g;->a:Lt2/b;

    invoke-virtual {v10}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v10

    invoke-interface {v8, v10, v6}, Lb0/c;->getTagServerTimestamp(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v18

    cmp-long v8, v16, v18

    if-lez v8, :cond_1

    move-object v10, v6

    move-object v8, v7

    goto :goto_2

    :cond_1
    move-object v8, v6

    move-object v10, v7

    :goto_2
    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v6

    invoke-virtual {v6}, Lx/e;->k()Lb0/c;

    move-result-object v6

    iget-object v7, v1, Ls2/g;->a:Lt2/b;

    invoke-virtual {v7}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v7

    invoke-interface {v6, v7, v10, v4}, Lb0/c;->getSDocUUIDListByTag(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_2

    const-string v0, "sDocUuidList is null!"

    goto/16 :goto_0

    :cond_2
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lx/e;->k()Lb0/c;

    move-result-object v4

    iget-object v12, v1, Ls2/g;->a:Lt2/b;

    invoke-virtual {v12}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v12

    invoke-interface {v4, v12, v7, v10, v8}, Lb0/c;->setNoteTag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v12, 0x1

    goto :goto_3

    :cond_3
    iget-object v4, v1, Ls2/g;->a:Lt2/b;

    invoke-virtual {v4}, Lt2/b;->x()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_6

    iget-object v4, v1, Ls2/g;->a:Lt2/b;

    invoke-virtual {v4}, Lt2/b;->x()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/support/senl/nt/base/common/sync/TagContentItem;

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/base/common/sync/TagContentItem;->getTagUUID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v7, v8}, Lcom/samsung/android/support/senl/nt/base/common/sync/TagContentItem;->setTagUUID(Ljava/lang/String;)V

    iget-object v7, v1, Ls2/g;->a:Lt2/b;

    invoke-virtual {v7}, Lt2/b;->H()Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, v1, Ls2/g;->a:Lt2/b;

    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Lt2/b;->U(Z)V

    goto :goto_4

    :cond_5
    const/4 v12, 0x1

    goto :goto_4

    :cond_6
    const/4 v12, 0x1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v4

    invoke-virtual {v4}, Lx/e;->k()Lb0/c;

    move-result-object v6

    iget-object v4, v1, Ls2/g;->a:Lt2/b;

    invoke-virtual {v4}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v7

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v4

    invoke-virtual {v4}, Lx/e;->m()Lb0/b;

    move-result-object v4

    invoke-interface {v4}, Lb0/b;->getSdocContractYes()I

    move-result v4

    const/16 v16, 0x0

    move-object/from16 v20, v8

    move-object v8, v10

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-wide v9, v13

    move/from16 v18, v11

    move v11, v4

    move v4, v12

    move/from16 v12, v16

    invoke-interface/range {v6 .. v12}, Lb0/c;->deleteTag(Landroid/content/Context;Ljava/lang/String;JIZ)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleted - name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v21

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " , uuid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v22

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    move/from16 v18, v11

    move v4, v12

    :goto_5
    move-object v6, v7

    add-int/lit8 v11, v18, 0x1

    move v12, v4

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_8
    move v4, v12

    const-string v2, "delete tag in server"

    invoke-static {v3, v2}, Lc3/p;->o(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    iget-object v6, v1, Ls2/g;->a:Lt2/b;

    invoke-virtual {v6}, Lt2/b;->p()La2/d$e;

    move-result-object v6

    new-instance v7, Ls2/g$a;

    invoke-direct {v7, v1, v2}, Ls2/g$a;-><init>(Ls2/g;Ljava/lang/String;)V

    invoke-static {v6, v2, v5, v7}, La2/d;->a(La2/d$e;Ljava/lang/String;Ljava/lang/String;La2/d$f;)I
    :try_end_0
    .catch Ls0/c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to deleteFile - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_9
    return v4
.end method
