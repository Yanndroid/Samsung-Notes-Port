.class public Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportSingleTask;
.super Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportBaseTask;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MdeImportSingleTask"


# instance fields
.field public mDocMdeImportInfo:Lq/c;

.field private mMdeImportTaskContract:Lq/b;

.field private mUuidList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr/b;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lr/b;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportBaseTask;-><init>(Landroid/content/Context;Lr/b;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportSingleTask$a;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportSingleTask$a;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportSingleTask;)V

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportSingleTask;->mMdeImportTaskContract:Lq/b;

    iput-object p4, p0, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportSingleTask;->mUuidList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public importProgress()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ly1/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportSingleTask;->mUuidList:Ljava/util/List;

    const/4 v1, 0x0

    const-string v2, "MdeImportSingleTask"

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "importProgress() ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportSingleTask;->mUuidList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportBaseTask;->mSpaceId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareBaseReadResolver;->getGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportBaseTask;->mGroupId:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lu/b;->f()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportBaseTask;->mOwnerId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lq/c;

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportBaseTask;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportBaseTask;->mSpaceId:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportBaseTask;->mGroupId:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportSingleTask;->mUuidList:Ljava/util/List;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lq/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportSingleTask;->mDocMdeImportInfo:Lq/c;

    new-instance v1, Lq/a;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportSingleTask;->mMdeImportTaskContract:Lq/b;

    invoke-direct {v1, v0, v2}, Lq/a;-><init>(Lq/c;Lq/b;)V

    new-instance v0, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportSingleTask;->mDocMdeImportInfo:Lq/c;

    invoke-virtual {v2}, Lq/c;->b()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;-><init>(Landroid/content/Context;)V

    :try_start_1
    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->h()V

    invoke-virtual {v1, v0}, Lq/a;->c(Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->j()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportSingleTask;->mDocMdeImportInfo:Lq/c;

    invoke-virtual {v0}, Lq/c;->c()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->j()V

    throw v1

    :cond_1
    :try_start_2
    const-string v0, "SesSessionAuth is not connected"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportSingleTask;->mDocMdeImportInfo:Lq/c;

    new-instance v3, Ls/h;

    const-string v4, ""

    invoke-direct {v3, v4, v1}, Ls/h;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lq/c;->a(Ly1/a;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportSingleTask;->mDocMdeImportInfo:Lq/c;

    invoke-virtual {v0}, Lq/c;->c()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to import : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ly1/b;

    sget-object v1, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->FAIL_UNKNOWN_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    const-string v2, "failed to make share copy"

    invoke-direct {v0, v1, v2}, Ly1/b;-><init>(Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const-string v0, "importProgress() : mUuidList is not valid"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
