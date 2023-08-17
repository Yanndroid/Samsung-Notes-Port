.class public abstract Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$ExternalBaseCallback;,
        Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$UpDownloadCallback;,
        Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$Contract;
    }
.end annotation


# instance fields
.field public mCallback:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$UpDownloadCallback;

.field public final mContext:Landroid/content/Context;

.field public mContract:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$Contract;

.field public final mGroupId:Ljava/lang/String;

.field public final mUuid:Ljava/lang/String;

.field public final mWorkspaceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$UpDownloadCallback;)V
    .locals 0
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
    .param p5    # Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$UpDownloadCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->mUuid:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->mGroupId:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->mWorkspaceId:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->mCallback:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$UpDownloadCallback;

    return-void
.end method


# virtual methods
.method public closeDoc(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "closeDoc: "

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeDoc, skip, WNote is null: "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeDoc, skip, WNote is closed: "

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->close(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", fail to close doc, e : "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public abstract execute()V
.end method

.method public getSnapResult(Ljava/lang/String;)I
    .locals 1

    const-string v0, "SNAP_ERROR_UPLOAD_FAIL_LARGE_XML_SIZE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xcd

    return p1

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getInstance()Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->isCoeditWithComposerRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0xcc

    return p1

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->isCoeditDataNetworkAvailable()Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0xcb

    return p1

    :cond_2
    const/16 p1, 0xca

    return p1
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->mContract:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$Contract;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->mCallback:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$UpDownloadCallback;

    return-void
.end method

.method public final run()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->execute()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->release()V

    return-void
.end method

.method public setContract(Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$Contract;)Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$Contract;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask;->mContract:Lcom/samsung/android/support/senl/nt/coedit/service/task/ExternalBaseTask$Contract;

    return-object p0
.end method
