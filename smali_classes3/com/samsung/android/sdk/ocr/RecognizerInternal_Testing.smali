.class public Lcom/samsung/android/sdk/ocr/RecognizerInternal_Testing;
.super Lcom/samsung/android/sdk/ocr/RecognizerInternal;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecognizerOnTesting"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/ocr/OCRType;Lcom/samsung/android/sdk/ocr/OCRLanguage;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/ocr/RecognizerInternal;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/ocr/OCRType;Lcom/samsung/android/sdk/ocr/OCRLanguage;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/ocr/RecognizerParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ocr/RecognizerInternal;-><init>(Lcom/samsung/android/sdk/ocr/RecognizerParams;)V

    return-void
.end method


# virtual methods
.method public recognizeDetectedLines(Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/ocr/OCRResult;)Z
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/ocr/RecognizerInternal_Testing$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/ocr/RecognizerInternal_Testing$1;-><init>(Lcom/samsung/android/sdk/ocr/RecognizerInternal_Testing;)V

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/sdk/ocr/RecognizerInternal;->process(Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/ocr/RecognizerInternal$ocr_processor;Lcom/samsung/android/sdk/ocr/OCRResult;)Z

    move-result p1

    return p1
.end method
