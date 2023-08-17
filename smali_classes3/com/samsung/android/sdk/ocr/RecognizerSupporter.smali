.class public Lcom/samsung/android/sdk/ocr/RecognizerSupporter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecognizerSupporter"


# instance fields
.field public isMOCRSupported:Z

.field public isSOCRSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerSupporter;->isMOCRSupported:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerSupporter;->isSOCRSupported:Z

    invoke-static {}, Lcom/samsung/android/sdk/ocr/MOCRecognizer;->isSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerSupporter;->isMOCRSupported:Z

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;->isSupported(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ocr/RecognizerSupporter;->isSOCRSupported:Z

    return-void
.end method

.method public static isSupported(Landroid/content/Context;Lcom/samsung/android/sdk/ocr/OCRType;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/ocr/OCRType;->OCR_ALL:Lcom/samsung/android/sdk/ocr/OCRType;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/ocr/MOCRecognizer;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;->isSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/ocr/OCRType;->OCR_PRINTED:Lcom/samsung/android/sdk/ocr/OCRType;

    if-ne v0, p1, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/ocr/MOCRecognizer;->isSupported()Z

    move-result p0

    return p0

    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/ocr/OCRType;->OCR_HANDWRITTEN:Lcom/samsung/android/sdk/ocr/OCRType;

    if-ne v0, p1, :cond_3

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrEngine;->isSupported(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Undefined OCR Type : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecognizerSupporter"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method


# virtual methods
.method public checkRecognizerSupportedType(Lcom/samsung/android/sdk/ocr/OCRType;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerSupporter;->isMOCRSupported:Z

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/sdk/ocr/RecognizerSupporter;->isSOCRSupported:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/ocr/OCRException$UnsupportedRecognizerException;

    const-string v0, "OCR Recognizer is not supported"

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/ocr/OCRException$UnsupportedRecognizerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/android/sdk/ocr/OCRType;->OCR_PRINTED:Lcom/samsung/android/sdk/ocr/OCRType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/ocr/OCRType;->OCR_ALL:Lcom/samsung/android/sdk/ocr/OCRType;

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/samsung/android/sdk/ocr/OCRException$UnsupportedRecognizerException;

    const-string v0, "OCR Recognizer is not supported MOCR Type"

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/ocr/OCRException$UnsupportedRecognizerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/sdk/ocr/RecognizerSupporter;->isSOCRSupported:Z

    if-nez v0, :cond_5

    sget-object v0, Lcom/samsung/android/sdk/ocr/OCRType;->OCR_HANDWRITTEN:Lcom/samsung/android/sdk/ocr/OCRType;

    if-eq p1, v0, :cond_4

    sget-object v0, Lcom/samsung/android/sdk/ocr/OCRType;->OCR_ALL:Lcom/samsung/android/sdk/ocr/OCRType;

    if-eq p1, v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Lcom/samsung/android/sdk/ocr/OCRException$UnsupportedRecognizerException;

    const-string v0, "OCR Recognizer is not supported SOCR Type"

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/ocr/OCRException$UnsupportedRecognizerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    return-void
.end method
