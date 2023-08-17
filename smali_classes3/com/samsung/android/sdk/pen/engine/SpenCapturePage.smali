.class public Lcom/samsung/android/sdk/pen/engine/SpenCapturePage;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenCapturePage"


# instance fields
.field private mImpl:Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->setResources(Landroid/content/res/Resources;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenCapturePage;->mImpl:Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;

    goto :goto_0

    :cond_0
    const-string p1, "SpenCapturePage"

    const-string v0, "OPenGLES is not supported"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public capturePage(F)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenCapturePage;->mImpl:Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->capturePage(F)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public capturePage(II)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenCapturePage;->mImpl:Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->capturePage(II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public capturePage(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenCapturePage;->mImpl:Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->capturePage(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public captureRect(Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenCapturePage;->mImpl:Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->captureRect(Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public captureRect(Landroid/graphics/RectF;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenCapturePage;->mImpl:Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->captureRect(Landroid/graphics/RectF;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenCapturePage;->mImpl:Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->close()V

    return-void
.end method

.method public compressPage(Ljava/lang/String;F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenCapturePage;->mImpl:Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->compressPage(Ljava/lang/String;F)V

    return-void
.end method

.method public isHyperTextViewEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenCapturePage;->mImpl:Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->isHyperTextViewEnabled()Z

    move-result v0

    return v0
.end method

.method public isThumbnailEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public setHyperTextViewEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenCapturePage;->mImpl:Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->setHyperTextViewEnabled(Z)V

    return-void
.end method

.method public setPageDoc(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenCapturePage;->mImpl:Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->setPageDoc(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)V

    return-void
.end method

.method public setPageDocWithoutRedraw(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenCapturePage;->mImpl:Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/capture/SpenCapturePageImpl;->setPageDocWithoutRedraw(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)V

    return-void
.end method

.method public setThumbnailEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
