.class public Lcom/samsung/android/app/notes/sync/importing/core/types/SSTMemoSync;
.super Lcom/samsung/android/app/notes/sync/importing/core/tasks/MigrationImportBaseTask;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SS$SSTMemoSync"


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

    sget-object v3, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SS_TMEMO:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

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

    sget-object v3, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SS_TMEMO:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/MigrationImportBaseTask;-><init>(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;IZ)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/app/notes/sync/importing/core/types/SSTMemoSync;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/notes/sync/importing/core/types/SSTMemoSync;->updateProgress(II)V

    return-void
.end method

.method private clearTempFiles()V
    .locals 4

    const-string v0, "SS$SSTMemoSync"

    const-string v1, "clearTempFiles."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v2

    invoke-virtual {v2}, Lc3/n;->w()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException while deleting restoreTMemoPath. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/importing/core/types/SSTMemoSync;->unsetRunningFlag()V

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    invoke-virtual {v0}, Lc3/n;->C()V

    return-void
.end method

.method private importItems()V
    .locals 5

    const-string v0, "SS$SSTMemoSync"

    const-string v1, "importItems."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v1

    invoke-virtual {v1}, Lc3/n;->w()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TMemo.xml"

    invoke-static {v1, v2}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mSuccessfulList:Ljava/util/List;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mSuccessfulList:Ljava/util/List;

    :cond_0
    :try_start_0
    const-string v2, "Start converting"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lz/h;

    invoke-direct {v2}, Lz/h;-><init>()V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v3

    invoke-virtual {v3}, Lx/e;->a()Lx/a;

    move-result-object v3

    invoke-interface {v3}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/app/notes/sync/importing/core/types/SSTMemoSync$a;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/notes/sync/importing/core/types/SSTMemoSync$a;-><init>(Lcom/samsung/android/app/notes/sync/importing/core/types/SSTMemoSync;)V

    invoke-virtual {v2, v3, v1, v4}, Lz/h;->a(Landroid/content/Context;Ljava/lang/String;Lx/d$b;)Z

    const-string v2, "Succeed to convert"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Failed to delete encryptedTMemo"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/MigrationImportBaseTask;->sendResponseEntireRestore(II)V

    return-void
.end method

.method private updateProgress(II)V
    .locals 4

    const-string v0, "SS$SSTMemoSync"

    if-lez p1, :cond_0

    if-gt p1, p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateProgress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mSuccessfulList:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mImportList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld1/d;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SS_TMEMO:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mImportList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld1/d;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mSuccessfulList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;->onDownloaded(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;Ld1/d;I)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mSuccessfulList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, p1, v2, p2}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;->onItemImportFinished(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;III)V

    goto :goto_0

    :cond_0
    const-string p1, "doneCnt error"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
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

    sget-object v4, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SS_TMEMO:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

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

    invoke-virtual {v0, v1}, Lc3/n;->e0(Z)V

    return-void
.end method

.method public startImport()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/importing/core/types/SSTMemoSync;->importItems()V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/importing/core/types/SSTMemoSync;->clearTempFiles()V

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

    invoke-virtual {v0, v1}, Lc3/n;->e0(Z)V

    return-void
.end method
