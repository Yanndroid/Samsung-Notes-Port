.class public Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mItemId:Ljava/lang/String;

.field public mRequestFirst:Z

.field public mRunnable:Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadResponse;

.field public mSpaceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadResponse;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;->mRequestFirst:Z

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;->mSpaceId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;->mItemId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;->mRunnable:Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadResponse;

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;->mRunnable:Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadResponse;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;->mSpaceId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadResponse;->onCompleted(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;->mRunnable:Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadResponse;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;->mSpaceId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadResponse;->onCompleted(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2
.end method
