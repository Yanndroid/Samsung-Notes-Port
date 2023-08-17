.class public final Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionText$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic detectBlock$default(Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionText;Landroid/graphics/Bitmap;[Landroid/graphics/Point;ILcom/samsung/android/sdk/ocr/OCRType;ILjava/lang/Object;)Z
    .locals 0

    if-nez p6, :cond_2

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    sget-object p3, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;->All:Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;

    invoke-virtual {p3}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;->getId()I

    move-result p3

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    sget-object p4, Lcom/samsung/android/sdk/ocr/OCRType;->OCR_ALL:Lcom/samsung/android/sdk/ocr/OCRType;

    :cond_1
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionText;->detectBlock(Landroid/graphics/Bitmap;[Landroid/graphics/Point;ILcom/samsung/android/sdk/ocr/OCRType;)Z

    move-result p0

    return p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: detectBlock"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic isSupported$default(Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionText;Lcom/samsung/android/sdk/ocr/OCRType;ILjava/lang/Object;)Z
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/ocr/OCRType;->OCR_ALL:Lcom/samsung/android/sdk/ocr/OCRType;

    :cond_0
    invoke-interface {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionText;->isSupported(Lcom/samsung/android/sdk/ocr/OCRType;)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: isSupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
