.class public Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DownloadListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$DownloadListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadListener"


# instance fields
.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadResultCallback:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/ListenerCallback$DownloadResultCallback;

.field private mLocale:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/ListenerCallback$DownloadResultCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/ListenerCallback$DownloadResultCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DownloadListener;->mContext:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DownloadListener;->mLocale:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DownloadListener;->mDownloadResultCallback:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/ListenerCallback$DownloadResultCallback;

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DownloadListener;->mContext:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "DownloadListener"

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected status: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DownloadListener;->mDownloadResultCallback:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/ListenerCallback$DownloadResultCallback;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DownloadListener;->mLocale:Ljava/lang/String;

    invoke-interface {p1, v0, v2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/ListenerCallback$DownloadResultCallback;->onFailed(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DownloadListener;->mLocale:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " download canceled."

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DownloadListener;->mDownloadResultCallback:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/ListenerCallback$DownloadResultCallback;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DownloadListener;->mLocale:Ljava/lang/String;

    invoke-interface {p1, v0, v2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/ListenerCallback$DownloadResultCallback;->onCancelled(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t download "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DownloadListener;->mLocale:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DownloadListener;->mDownloadResultCallback:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/ListenerCallback$DownloadResultCallback;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DownloadListener;->mLocale:Ljava/lang/String;

    invoke-interface {p1, v0, v2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/ListenerCallback$DownloadResultCallback;->onSuccess(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DownloadListener;->mLocale:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " download completed."

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onProgress(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DownloadListener;->mDownloadResultCallback:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/ListenerCallback$DownloadResultCallback;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/ListenerCallback$DownloadResultCallback;->onProgress(II)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DownloadListener;->mContext:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DownloadListener;->mContext:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DownloadListener;->mLocale:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DownloadListener;->mDownloadResultCallback:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/ListenerCallback$DownloadResultCallback;

    return-void
.end method
