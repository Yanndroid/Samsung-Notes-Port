.class public Lt2/c;
.super Lx2/f;
.source "SourceFile"


# instance fields
.field public b:Lt2/b;


# direct methods
.method public constructor <init>(Lt2/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lx2/f;-><init>(Lx2/d;)V

    iput-object p1, p0, Lt2/c;->b:Lt2/b;

    return-void
.end method

.method public static h(Landroid/content/Context;)V
    .locals 4

    const-string v0, "1464416139847"

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lt2/a;->s(J)V

    invoke-static {v0, v1}, Lt2/a;->r(J)V

    invoke-static {v0, v1}, Lt2/a;->t(J)V

    const/4 v0, 0x1

    invoke-static {v0}, Lt2/a;->o(Z)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->m()Lb0/b;

    move-result-object v0

    invoke-interface {v0, p0}, Lb0/b;->getUUIDList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v2

    invoke-virtual {v2}, Lx/e;->m()Lb0/b;

    move-result-object v2

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v3

    invoke-virtual {v3}, Lx/e;->m()Lb0/b;

    move-result-object v3

    invoke-interface {v3}, Lb0/b;->getSdocContractYes()I

    move-result v3

    invoke-interface {v2, p0, v1, v3}, Lb0/b;->setNoteDirty(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v2

    invoke-virtual {v2}, Lx/e;->h()Lb0/a;

    move-result-object v2

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v3

    invoke-virtual {v3}, Lx/e;->m()Lb0/b;

    move-result-object v3

    invoke-interface {v3}, Lb0/b;->getSdocContractYes()I

    move-result v3

    invoke-interface {v2, p0, v1, v3}, Lb0/a;->setNoteCategoryDirty(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->h()Lb0/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lb0/a;->getCategoryUUIDList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v2

    invoke-virtual {v2}, Lx/e;->h()Lb0/a;

    move-result-object v2

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v3

    invoke-virtual {v3}, Lx/e;->m()Lb0/b;

    move-result-object v3

    invoke-interface {v3}, Lb0/b;->getSdocContractYes()I

    move-result v3

    invoke-interface {v2, p0, v1, v3}, Lb0/a;->setCategoryDirty(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->k()Lb0/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lb0/c;->getTagUUIDList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v2

    invoke-virtual {v2}, Lx/e;->k()Lb0/c;

    move-result-object v2

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v3

    invoke-virtual {v3}, Lx/e;->m()Lb0/b;

    move-result-object v3

    invoke-interface {v3}, Lb0/b;->getSdocContractYes()I

    move-result v3

    invoke-interface {v2, p0, v1, v3}, Lb0/c;->setTagDirty(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    iget-object v0, p0, Lt2/c;->b:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lt2/c;->h(Landroid/content/Context;)V

    invoke-super {p0}, Lx2/f;->c()V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lt2/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    if-eq v1, v2, :cond_0

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/common/util/HashUtils;->generateSha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SyncOldNote$SyncOperationSDoc"

    const-string v1, "Account changed!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lt2/c;->c()V

    invoke-static {p1}, Lt2/a;->n(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public g()V
    .locals 12

    const-string v0, "SyncOldNote$SyncOperationSDoc"

    const-string v1, "checkLockedNotes()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/support/senl/document/SDocLocker;

    iget-object v2, p0, Lt2/c;->b:Lt2/b;

    invoke-virtual {v2}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/document/SDocLocker;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/SDocLocker;->is64bitCodeAvailable()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lt2/a;->k()Z

    move-result v1

    if-nez v1, :cond_4

    :try_start_0
    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v1

    invoke-virtual {v1}, Lx/e;->m()Lb0/b;

    move-result-object v1

    iget-object v2, p0, Lt2/c;->b:Lt2/b;

    invoke-virtual {v2}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lb0/b;->getUUIDListByLocked(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkLockedNotes() : uuidList = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lt2/a;->f(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lcom/samsung/android/app/notes/sync/db/o;

    iget-object v5, p0, Lt2/c;->b:Lt2/b;

    invoke-virtual {v5}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/samsung/android/app/notes/sync/db/o;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/android/app/notes/sync/db/o;->f()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/support/senl/document/SDocLocker;

    iget-object v7, p0, Lt2/c;->b:Lt2/b;

    invoke-virtual {v7}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/samsung/android/support/senl/document/SDocLocker;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/document/SDocLocker;->getUserCode()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->convertTo32bitEncryption(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v4

    invoke-virtual {v4}, Lx/e;->m()Lb0/b;

    move-result-object v4

    iget-object v5, p0, Lt2/c;->b:Lt2/b;

    invoke-virtual {v5}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Lb0/b;->convertTo32bitEncrypt(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->getModifiedTime(Ljava/lang/String;Z)J

    move-result-wide v7

    new-instance v9, Lcom/samsung/android/support/senl/document/SDocLocker;

    iget-object v10, p0, Lt2/c;->b:Lt2/b;

    invoke-virtual {v10}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/samsung/android/support/senl/document/SDocLocker;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9}, Lcom/samsung/android/support/senl/document/SDocLocker;->getUserCode()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->updateModifiedTime(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->getModifiedTime(Ljava/lang/String;Z)J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/samsung/android/app/notes/sync/db/o;->j()J

    move-result-wide v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "time gap = "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " , timeFromDb = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v4

    invoke-virtual {v4}, Lx/e;->m()Lb0/b;

    move-result-object v4

    iget-object v5, p0, Lt2/c;->b:Lt2/b;

    invoke-virtual {v5}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v5

    const-wide/16 v6, 0x1

    add-long v7, v9, v6

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v6

    invoke-virtual {v6}, Lx/e;->m()Lb0/b;

    move-result-object v6

    invoke-interface {v6}, Lb0/b;->getSdocContractYes()I

    move-result v9

    move-object v6, v2

    invoke-interface/range {v4 .. v9}, Lb0/b;->setNoteServerTimeAndDirty(Landroid/content/Context;Ljava/lang/String;JI)V

    :cond_2
    :goto_1
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v4}, Lt2/a;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "Succeed to Check the locked notes"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lt2/a;->v(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v1, "Failed to Check the locked notes"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public i(Z)V
    .locals 13

    :try_start_0
    invoke-virtual {p0}, Lx2/f;->b()J

    move-result-wide v0

    iget-object v2, p0, Lt2/c;->b:Lt2/b;

    invoke-virtual {v2}, Lt2/b;->p()La2/d$e;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, La2/d;->d(La2/d$e;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    const-string v5, "snote_list"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "clientTimestamp"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    const-string v9, "1464416139847"

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "deleted"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    if-eqz p1, :cond_1

    if-eqz p1, :cond_2

    cmp-long v7, v7, v9

    if-gez v7, :cond_2

    :cond_1
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "datakey"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v8, p0, Lt2/c;->b:Lt2/b;

    invoke-virtual {v8}, Lt2/b;->p()La2/d$e;

    move-result-object v8

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v7, v9, v3}, La2/d;->a(La2/d$e;Ljava/lang/String;Ljava/lang/String;La2/d$f;)I
    :try_end_1
    .catch Ls0/c; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteAllLegacyServerData - deleteFile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncOldNote$SyncOperationSDoc"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    return-void

    :catch_1
    new-instance p1, Ls0/c;

    const/4 v0, 0x1

    const-string v1, "deleteAllLegacyServerData"

    invoke-direct {p1, v0, v1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public j(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->m()Lb0/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lb0/b;->getNoteFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public k(Ljava/lang/String;)Z
    .locals 11

    const-string v0, "deleted"

    const-string v1, "filepath"

    const-string v2, "existsMetaFileInServer - "

    const-string v3, "SyncOldNote$SyncOperationSDoc"

    const-string v4, "existsMetaFileInServer() start"

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v4, p0, Lt2/c;->b:Lt2/b;

    invoke-virtual {v4}, Lt2/b;->p()La2/d$e;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, La2/d;->f(La2/d$e;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    const-string v7, "snote_list"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    :goto_0
    if-ge v6, v7, :cond_0

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_1

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string p1, "existsMetaFileInServer : bingo!"

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    :cond_1
    const-string p1, "existsMetaFileInServer : bingo!!"

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    :cond_2
    const-string v8, "existsMetaFileInServer : no filepath!"

    invoke-static {v3, v8}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    const-string p1, "existsMetaFileInServer() finish"

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ls0/c;

    const/16 v1, 0x12f

    invoke-direct {v0, v1, p1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ls0/c;

    const/16 v1, 0x130

    invoke-direct {v0, v1, p1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public l()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lt2/a;->g()J

    move-result-wide v0

    invoke-static {}, Lt2/a;->h()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    move-wide v0, v2

    :cond_0
    invoke-static {}, Lt2/a;->i()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    move-wide v0, v2

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lt2/c;->b:Lt2/b;

    invoke-virtual {v1}, Lt2/b;->p()La2/d$e;

    move-result-object v1

    invoke-static {v1, v0}, La2/d;->d(La2/d$e;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getServerListArray - downloadList - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncOldNote$SyncOperationSDoc"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ls0/c;

    const/16 v2, 0x12f

    invoke-direct {v1, v2, v0}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public m()V
    .locals 7

    invoke-static {}, Lt2/a;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "1464416139847"

    const-string v4, "SyncOldNote$SyncOperationSDoc"

    if-gez v0, :cond_0

    const-string v0, "LastSyncTimeForCategory is minus"

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Lt2/a;->r(J)V

    :cond_0
    invoke-static {}, Lt2/a;->i()J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-gez v0, :cond_1

    const-string v0, "LastSyncTimeForTag is minus"

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Lt2/a;->t(J)V

    :cond_1
    invoke-static {}, Lt2/a;->h()J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-gez v0, :cond_2

    const-string v0, "LastSyncTimeForSDoc is minus"

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lt2/a;->s(J)V

    :cond_2
    return-void
.end method
