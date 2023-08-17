.class public Lcom/samsung/android/sdk/ocr/RecognizerInternal_OneUI41;
.super Lcom/samsung/android/sdk/ocr/RecognizerInternal;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecognizerInternal_OneUI41"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/ocr/OCRType;Lcom/samsung/android/sdk/ocr/OCRLanguage;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/ocr/RecognizerInternal;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/ocr/OCRType;Lcom/samsung/android/sdk/ocr/OCRLanguage;)V

    const-string p1, "RecognizerInternal_OneUI41"

    const-string p2, "OCR Recognizer(Internal_OneUI41) is initialized with version: 3.0.220726"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/ocr/RecognizerParams;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ocr/RecognizerInternal;-><init>(Lcom/samsung/android/sdk/ocr/RecognizerParams;)V

    const-string p1, "RecognizerInternal_OneUI41"

    const-string v0, "OCR Recognizer(Internal_OneUI41) is initialized with version: 3.0.220726"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const-string v0, "RecognizerInternal_OneUI41"

    const-string v1, "Cancel operation is not supported in Recognizer OneUI4.1"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createRecognizerProvider(Lcom/samsung/android/sdk/ocr/RecognizerParams;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ocr/RecognizerInternal;->closeRecognizerProvider()V

    new-instance v0, Lcom/samsung/android/sdk/ocr/RecognizerProvider_OneUI41;

    iget-object v1, p0, Lcom/samsung/android/sdk/ocr/RecognizerInternal;->mRecognizerSupporter:Lcom/samsung/android/sdk/ocr/RecognizerSupporter;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/sdk/ocr/RecognizerProvider_OneUI41;-><init>(Lcom/samsung/android/sdk/ocr/RecognizerParams;Lcom/samsung/android/sdk/ocr/RecognizerSupporter;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerInternal;->mRecognizerProvider:Lcom/samsung/android/sdk/ocr/RecognizerProvider;

    return-void
.end method

.method public hasText(Landroid/graphics/Bitmap;)Z
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/ocr/RecognizerInternal_OneUI41$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/ocr/RecognizerInternal_OneUI41$1;-><init>(Lcom/samsung/android/sdk/ocr/RecognizerInternal_OneUI41;)V

    new-instance v1, Lcom/samsung/android/sdk/ocr/OCRResult;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ocr/OCRResult;-><init>()V

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/ocr/RecognizerInternal;->process(Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/ocr/RecognizerInternal$ocr_processor;Lcom/samsung/android/sdk/ocr/OCRResult;)Z

    move-result p1

    return p1
.end method
