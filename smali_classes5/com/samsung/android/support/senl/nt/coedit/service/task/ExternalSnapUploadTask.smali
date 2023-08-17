.class public Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapUploadTask;
.super Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExternalSnapUploadTask"


# instance fields
.field private final mFilePath:Ljava/lang/String;

.field private final mSpaceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$UpDownloadCallback;)V
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
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$UpDownloadCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$UpDownloadCallback;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapUploadTask;->mFilePath:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapUploadTask;->mSpaceId:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapUploadTask;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapUploadTask;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapUploadTask;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapUploadTask;->mSpaceId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public execute()V
    .locals 11

    const-string v0, "ExternalSnapUploadTask"

    const-string v1, "[CS7] externalSnapUpload() - runnable"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getInstance()Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->mUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->isCoeditRunning(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0xc9

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "externalSnapUpload, already exists, uuid: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->mUuid:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->mCallback:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$UpDownloadCallback;

    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$UpDownloadCallback;->onError(I)V

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapUploadTask;->mFilePath:Ljava/lang/String;

    const/16 v6, 0x870

    const/16 v7, 0x1f40

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;-><init>(Landroid/content/Context;Ljava/lang/String;IIZZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getInstance()Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->mUuid:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapUploadTask;->mFilePath:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->mGroupId:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->mWorkspaceId:Ljava/lang/String;

    new-instance v9, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapUploadTask$1;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->mCallback:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$UpDownloadCallback;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->mContract:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$Contract;

    invoke-direct {v9, p0, v0, v2}, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapUploadTask$1;-><init>(Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalSnapUploadTask;Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$UpDownloadCallback;Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$Contract;)V

    move-object v4, v1

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->externalSnapUpload(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/common/ExternalControlCallback;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "externalSnapUpload, createSpenNoteForUpload Failed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->mCallback:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$UpDownloadCallback;

    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$UpDownloadCallback;->onError(I)V

    return-void
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ExternalSnapUploadTask"

    return-object v0
.end method
