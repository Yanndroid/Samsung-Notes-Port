.class public interface abstract Lcom/samsung/android/support/senl/docscan/detect/presenter/ViewContract$Fragment;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/docscan/detect/presenter/ViewContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Fragment"
.end annotation


# virtual methods
.method public abstract finishWithSuccess(Ljava/lang/String;)V
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getPreviewCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.end method

.method public abstract isAdded()Z
.end method

.method public abstract updateThumbnailView(Landroid/graphics/Bitmap;I)V
.end method
