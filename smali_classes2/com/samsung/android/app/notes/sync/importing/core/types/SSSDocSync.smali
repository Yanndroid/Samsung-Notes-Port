.class public Lcom/samsung/android/app/notes/sync/importing/core/types/SSSDocSync;
.super Lcom/samsung/android/app/notes/sync/importing/core/tasks/MigrationImportBaseTask;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SS$SSSDocSync"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;ILjava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;",
            "I",
            "Ljava/util/List<",
            "Ld1/d;",
            ">;Z)V"
        }
    .end annotation

    sget-object v3, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SS_SDOC:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/MigrationImportBaseTask;-><init>(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;IZ)V

    iput-object p4, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mImportList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;IZ)V
    .locals 6

    sget-object v3, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SS_SDOC:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/MigrationImportBaseTask;-><init>(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;IZ)V

    return-void
.end method

.method private clearTempFiles()V
    .locals 6

    const-string v0, "SS$SSSDocSync"

    const-string v1, "clearTempFiles."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v1

    invoke-virtual {v1}, Lc3/n;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v2

    invoke-virtual {v2}, Lc3/n;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v4

    invoke-virtual {v4}, Lc3/n;->p()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to deleteFile Databases_Restore_PATH path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to deleteFile SDocBnR_PATH path "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearTempFiles"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/importing/core/types/SSSDocSync;->unsetRunningFlag()V

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    invoke-virtual {v0}, Lc3/n;->C()V

    return-void
.end method

.method private importItems()V
    .locals 22

    move-object/from16 v1, p0

    const-string v2, "SS$SSSDocSync"

    const-string v0, "importItems."

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/MigrationImportBaseTask;->sendProgressEntireRestore(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->a()Lx/a;

    move-result-object v0

    invoke-interface {v0}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/samsung/android/support/senl/nt/base/common/util/WDocUtils;->getNoteFilePath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->m()Lb0/b;

    move-result-object v12

    iget-object v0, v1, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mSuccessfulList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mSuccessfulList:Ljava/util/List;

    :cond_0
    iget-object v0, v1, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mImportList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    move v0, v4

    :goto_0
    const/4 v13, 0x1

    if-ge v0, v6, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v7

    if-nez v7, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Import : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " / "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/utils/a;->z()Z

    move-result v7

    if-nez v7, :cond_1

    const-string v0, "Not enough free space"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1
    iget-object v7, v1, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mImportList:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ld1/d;

    iget-object v9, v1, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    if-eqz v9, :cond_2

    sget-object v10, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SS_SDOC:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    iget-object v11, v1, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mSuccessfulList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-interface {v9, v10, v7, v11}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;->onDownloaded(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;Ld1/d;I)V

    iget-object v9, v1, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    iget-object v11, v1, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mSuccessfulList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-interface {v9, v10, v8, v11, v6}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;->onItemImportFinished(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;III)V

    :cond_2
    invoke-virtual {v7}, Ld1/d;->A()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Ld1/d;->c()Ljava/lang/String;

    move-result-object v10

    const-string v11, "1"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    const-string v14, "2"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    goto :goto_1

    :cond_3
    const-string v14, "SDocBnR"

    invoke-static {v5, v14}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v10}, Lcom/samsung/android/app/notes/sync/utils/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_4

    move-object v10, v11

    :cond_4
    :goto_1
    invoke-virtual {v7}, Ld1/d;->d()Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v7}, Ld1/d;->D()Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ".sdoc"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_2
    invoke-static {v5, v11}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Ld1/d;->s()Z

    move-result v14

    if-eqz v14, :cond_6

    :try_start_0
    new-instance v14, Ljava/io/File;

    invoke-virtual {v7}, Ld1/d;->m()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7}, Ld1/d;->D()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v14, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v14, v4}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    new-instance v4, Ljava/io/File;

    invoke-virtual {v7}, Ld1/d;->m()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7}, Ld1/d;->D()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v4, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "delete fail"

    invoke-static {v2, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "copy fail "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_6
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "importItems saveMemo: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ld1/d;->x()Z

    move-result v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, " , LockState : "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ld1/d;->o()I

    move-result v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lb0/d$a;

    iget-object v14, v1, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mContext:Landroid/content/Context;

    invoke-direct {v4, v14}, Lb0/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v11}, Lb0/d$a;->g(Ljava/lang/String;)Lb0/d$a;

    move-result-object v14

    invoke-virtual {v14, v9}, Lb0/d$a;->t(Ljava/lang/String;)Lb0/d$a;

    move-result-object v9

    invoke-virtual {v7}, Ld1/d;->x()Z

    move-result v14

    invoke-virtual {v9, v14}, Lb0/d$a;->o(Z)Lb0/d$a;

    move-result-object v9

    invoke-virtual {v9, v13}, Lb0/d$a;->d(Z)Lb0/d$a;

    move-result-object v9

    invoke-interface {v12}, Lb0/b;->getSdocContractNo()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v9, v14}, Lb0/d$a;->f(Ljava/lang/Integer;)Lb0/d$a;

    move-result-object v9

    invoke-virtual {v7}, Ld1/d;->k()Z

    move-result v14

    invoke-virtual {v9, v14}, Lb0/d$a;->h(Z)Lb0/d$a;

    move-result-object v9

    invoke-virtual {v7}, Ld1/d;->o()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v9, v14}, Lb0/d$a;->n(Ljava/lang/Integer;)Lb0/d$a;

    move-result-object v9

    invoke-virtual {v9, v10}, Lb0/d$a;->c(Ljava/lang/String;)Lb0/d$a;

    move-result-object v9

    invoke-virtual {v7}, Ld1/d;->b()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Lb0/d$a;->b(J)Lb0/d$a;

    move-result-object v9

    invoke-virtual {v7}, Ld1/d;->B()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Lb0/d$a;->r(J)Lb0/d$a;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lb0/d$a;->s(Z)Lb0/d$a;

    move-result-object v9

    invoke-virtual {v7}, Ld1/d;->z()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Lb0/d$a;->m(J)Lb0/d$a;

    move-result-object v9

    invoke-virtual {v7}, Ld1/d;->g()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Lb0/d$a;->e(J)Lb0/d$a;

    move-result-object v9

    invoke-virtual {v9, v13}, Lb0/d$a;->j(Z)Lb0/d$a;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SaveNoteResolverProxyContract try to save "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v9

    invoke-virtual {v9}, Lx/e;->l()Lb0/d;

    move-result-object v9

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v10

    invoke-virtual {v10}, Lx/e;->a()Lx/a;

    move-result-object v10

    invoke-interface {v10}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v4}, Lb0/d$a;->a()Lb0/e;

    move-result-object v4

    invoke-interface {v9, v10, v4}, Lb0/d;->saveDoc(Landroid/content/Context;Lb0/e;)Z

    const-string v4, "SaveNoteResolverProxyContract saves complete"

    invoke-static {v2, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ld1/d;->y()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    const-string v4, "Send Progress Restore"

    invoke-static {v2, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    mul-int/lit8 v0, v0, 0x27

    div-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x33

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/MigrationImportBaseTask;->sendProgressEntireRestore(I)V

    iget-object v0, v1, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mSuccessfulList:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    move v0, v8

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_8
    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v0, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ld1/d;

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v6

    invoke-virtual {v6}, Lx/e;->a()Lx/a;

    move-result-object v6

    invoke-interface {v6}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5}, Ld1/d;->A()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Ld1/d;->B()J

    move-result-wide v9

    const/4 v11, 0x0

    move-object v6, v12

    invoke-interface/range {v6 .. v11}, Lb0/b;->recoverySDoc(Landroid/content/Context;Ljava/lang/String;JI)V

    mul-int/lit8 v5, v4, 0x9

    div-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x5b

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/MigrationImportBaseTask;->sendProgressEntireRestore(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_9
    invoke-static {}, Lc3/f;->d()Lc3/f;

    move-result-object v0

    invoke-virtual {v0}, Lc3/f;->f()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "importItems WidgetList.size > 0"

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Integer;

    invoke-static {}, Lc3/f;->d()Lc3/f;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v7, v4, v6

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Lc3/f;->l(I)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_a

    const-string v5, "sendPickWidgetBroadcast"

    invoke-static {v2, v5}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lc3/f;->d()Lc3/f;

    move-result-object v5

    aget-object v7, v4, v6

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Lc3/f;->p(I)I

    move-result v5

    invoke-static {}, Lc3/f;->d()Lc3/f;

    move-result-object v7

    aget-object v8, v4, v6

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lc3/f;->j(I)I

    move-result v7

    invoke-static {}, Lc3/f;->d()Lc3/f;

    move-result-object v8

    aget-object v9, v4, v6

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Lc3/f;->k(I)I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "transparency : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " , backgroundColor : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " , darkMode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/WidgetAccessHandler;->getWidgetBroadcaster()Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/IWidgetBroadcaster;

    move-result-object v14

    iget-object v15, v1, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mContext:Landroid/content/Context;

    aget-object v9, v4, v13

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const/16 v19, 0x0

    move/from16 v18, v5

    move/from16 v20, v7

    move/from16 v21, v8

    invoke-interface/range {v14 .. v21}, Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/IWidgetBroadcaster;->sendPickWidgetBroadcast(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_a
    const-string/jumbo v4, "uuid == null"

    invoke-static {v2, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Integer;

    invoke-static {}, Lc3/f;->d()Lc3/f;

    move-result-object v3

    invoke-virtual {v3, v2}, Lc3/f;->g([Ljava/lang/Integer;)V

    goto :goto_8

    :cond_c
    return-void
.end method


# virtual methods
.method public getImportItems()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mImportList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mImportList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld1/d;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    sget-object v4, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SS_SDOC:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v3, v4, v1, v0, v2}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;->onUpdated(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;IILd1/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setRunningFlag()V
    .locals 2

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc3/n;->T(Z)V

    return-void
.end method

.method public startImport()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/importing/core/types/SSSDocSync;->importItems()V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/importing/core/types/SSSDocSync;->clearTempFiles()V

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/MigrationImportBaseTask;->sendProgressEntireRestore(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/MigrationImportBaseTask;->sendResponseEntireRestore(II)V

    return-void
.end method

.method public syncProgress()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public unsetRunningFlag()V
    .locals 2

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc3/n;->T(Z)V

    return-void
.end method
