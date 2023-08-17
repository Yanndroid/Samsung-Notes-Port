.class public interface abstract Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/ListenerCallback$DownloadResultCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/ListenerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadResultCallback"
.end annotation


# virtual methods
.method public abstract onCancelled(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract onFailed(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract onProgress(II)V
.end method

.method public abstract onSuccess(Landroid/content/Context;Ljava/lang/String;)V
.end method
