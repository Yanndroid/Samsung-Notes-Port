.class public Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapDownloadTask;
.super Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExternalSnapDownloadTask"


# instance fields
.field private final mTempFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$UpDownloadCallback;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$UpDownloadCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$UpDownloadCallback;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapDownloadTask;->mTempFilePath:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapDownloadTask;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapDownloadTask;->mTempFilePath:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public execute()V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CS7] externalSnapDownload, run() : uuid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExternalSnapDownloadTask"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getInstance()Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->isCoeditRunning(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0xc9

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CS7-2] externalSnapDownload, run() : already exists, uuid = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->mCallback:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$UpDownloadCallback;

    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$UpDownloadCallback;->onError(I)V

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    sget-object v6, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->LIST:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    sget-object v7, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;->PORTRAIT:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    const/16 v8, 0x870

    const/4 v9, 0x1

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;IZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapDownloadTask;->mTempFilePath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->saveAsDirectory(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getInstance()Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->mUuid:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapDownloadTask;->mTempFilePath:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->mGroupId:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->mWorkspaceId:Ljava/lang/String;

    new-instance v9, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapDownloadTask$1;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->mCallback:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$UpDownloadCallback;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->mContract:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$Contract;

    invoke-direct {v9, p0, v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapDownloadTask$1;-><init>(Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapDownloadTask;Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$UpDownloadCallback;Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$Contract;)V

    move-object v4, v0

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->externalSnapDownload(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;)V

    return-void

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CS7-2] externalSnapDownload, run() : saveAsDirectory Failed, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "externalSnapDownload, saveAsDirectory Failed"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->closeDoc(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->mCallback:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$UpDownloadCallback;

    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$UpDownloadCallback;->onError(I)V

    return-void

    :catch_1
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CS7-2] externalSnapDownload, run() : createSpenNoteForDownload Failed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->mCallback:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$UpDownloadCallback;

    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$UpDownloadCallback;->onError(I)V

    return-void
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ExternalSnapDownloadTask"

    return-object v0
.end method
