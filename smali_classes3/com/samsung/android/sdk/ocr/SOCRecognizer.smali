.class public Lcom/samsung/android/sdk/ocr/SOCRecognizer;
.super Lcom/samsung/android/sdk/ocr/SOCRecognizerBase;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SOCRecognizer"


# instance fields
.field private mMoireDetector:Lcom/samsung/android/sdk/pen/ocr/SpenMoireDetector;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/ocr/SpenIOcrEngine;Lcom/samsung/android/sdk/ocr/RecognizerParams;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/ocr/SOCRecognizerBase;-><init>(Lcom/samsung/android/sdk/pen/ocr/SpenIOcrEngine;Lcom/samsung/android/sdk/ocr/RecognizerParams;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/SOCRecognizer;->mMoireDetector:Lcom/samsung/android/sdk/pen/ocr/SpenMoireDetector;

    new-instance v0, Lcom/samsung/android/sdk/pen/ocr/SpenMoireDetector;

    iget-object p2, p2, Lcom/samsung/android/sdk/ocr/RecognizerParams;->context:Landroid/content/Context;

    invoke-direct {v0, p2, p1}, Lcom/samsung/android/sdk/pen/ocr/SpenMoireDetector;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/ocr/SpenIOcrEngine;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/SOCRecognizer;->mMoireDetector:Lcom/samsung/android/sdk/pen/ocr/SpenMoireDetector;

    const-string p1, "SOCRecognizer"

    const-string p2, "SpenRecognizer(SOCRecognizer) is created with Moire Detector!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/SOCRecognizerBase;->mRecognizer:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrRecognizer;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/ocr/SpenIOcrRecognizer;->cancelRequest()V

    return-void
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/SOCRecognizer;->mMoireDetector:Lcom/samsung/android/sdk/pen/ocr/SpenMoireDetector;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/ocr/SpenMoireDetector;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/SOCRecognizer;->mMoireDetector:Lcom/samsung/android/sdk/pen/ocr/SpenMoireDetector;

    const-string v0, "SOCRecognizer"

    const-string v1, "mMoireDetector destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/samsung/android/sdk/ocr/SOCRecognizerBase;->destroy()V

    const-string v1, "SOCRecognizer destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public detect(Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/ocr/OCRResult;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/SOCRecognizer;->mMoireDetector:Lcom/samsung/android/sdk/pen/ocr/SpenMoireDetector;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/ocr/SpenMoireDetector;->detectMoire(Landroid/graphics/Bitmap;)Z

    move-result v0

    const-string v1, "deMoire"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/SOCRecognizerBase;->mRecognizer:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrRecognizer;

    const-string/jumbo v2, "true"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/SOCRecognizerBase;->mRecognizer:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrRecognizer;

    const-string v2, "false"

    :goto_0
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/sdk/pen/ocr/SpenIOcrRecognizer;->setConfiguration(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/ocr/SOCRecognizerBase;->detectBase(Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/ocr/OCRResult;)Z

    move-result p1

    return p1
.end method

.method public recognize(Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/ocr/OCRResult;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/SOCRecognizer;->mMoireDetector:Lcom/samsung/android/sdk/pen/ocr/SpenMoireDetector;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/ocr/SpenMoireDetector;->detectMoire(Landroid/graphics/Bitmap;)Z

    move-result v0

    const-string v1, "deMoire"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/SOCRecognizerBase;->mRecognizer:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrRecognizer;

    const-string/jumbo v2, "true"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ocr/SOCRecognizerBase;->mRecognizer:Lcom/samsung/android/sdk/pen/ocr/SpenIOcrRecognizer;

    const-string v2, "false"

    :goto_0
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/sdk/pen/ocr/SpenIOcrRecognizer;->setConfiguration(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/ocr/SOCRecognizerBase;->recognizeBase(Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/ocr/OCRResult;)Z

    move-result p1

    return p1
.end method
