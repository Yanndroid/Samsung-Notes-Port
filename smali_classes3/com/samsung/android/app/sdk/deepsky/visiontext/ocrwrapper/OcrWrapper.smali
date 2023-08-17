.class public final Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Deprecated;
    level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
    message = "Use Recognizer interface"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J;\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0002\u0010\u0012J\u0016\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u001e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000fJ(\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u0016J2\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u00182\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011H\u0002J\u0010\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J*\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011H\u0002J \u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0018\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011J\u0016\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u001e\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000fJ(\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;",
        "",
        "()V",
        "TAG",
        "",
        "detectBlock",
        "",
        "context",
        "Landroid/content/Context;",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "points",
        "",
        "Landroid/graphics/Point;",
        "language",
        "",
        "ocrType",
        "Lcom/samsung/android/sdk/ocr/OCRType;",
        "(Landroid/content/Context;Landroid/graphics/Bitmap;[Landroid/graphics/Point;ILcom/samsung/android/sdk/ocr/OCRType;)Z",
        "extractText",
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;",
        "validRect",
        "Landroid/graphics/Rect;",
        "extractTextFromRecognizer",
        "Lcom/samsung/android/sdk/ocr/OCRLanguage;",
        "getConvertedLang",
        "isDetectedFromRecognizer",
        "isHandwritten",
        "isSupported",
        "isTextDetected",
        "deepsky-sdk-2.2.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "OcrWrapper"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;

    invoke-direct {v0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;-><init>()V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic detectBlock$default(Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;Landroid/content/Context;Landroid/graphics/Bitmap;[Landroid/graphics/Point;ILcom/samsung/android/sdk/ocr/OCRType;ILjava/lang/Object;)Z
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    sget-object p5, Lcom/samsung/android/sdk/ocr/OCRType;->OCR_ALL:Lcom/samsung/android/sdk/ocr/OCRType;

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->detectBlock(Landroid/content/Context;Landroid/graphics/Bitmap;[Landroid/graphics/Point;ILcom/samsung/android/sdk/ocr/OCRType;)Z

    move-result p0

    return p0
.end method

.method public static synthetic extractText$default(Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;Landroid/content/Context;Landroid/graphics/Bitmap;ILandroid/graphics/Rect;ILjava/lang/Object;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, -0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->extractText(Landroid/content/Context;Landroid/graphics/Bitmap;ILandroid/graphics/Rect;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;

    move-result-object p0

    return-object p0
.end method

.method private final extractTextFromRecognizer(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/ocr/OCRLanguage;Landroid/graphics/Rect;Lcom/samsung/android/sdk/ocr/OCRType;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;
    .locals 6

    new-instance v0, Lcom/samsung/android/sdk/ocr/Recognizer;

    invoke-direct {v0, p1, p5, p3}, Lcom/samsung/android/sdk/ocr/Recognizer;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/ocr/OCRType;Lcom/samsung/android/sdk/ocr/OCRLanguage;)V

    new-instance p3, Lcom/samsung/android/sdk/ocr/OCRResult;

    invoke-direct {p3}, Lcom/samsung/android/sdk/ocr/OCRResult;-><init>()V

    const-string p5, "OcrWrapper"

    const-string v1, "extractText with Language"

    invoke-static {p5, v1}, Lcom/samsung/android/app/sdk/deepsky/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/sdk/ocr/Recognizer;->recognize(Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/ocr/OCRResult;)Z

    move-result p2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ocr/Recognizer;->close()V

    if-eqz p2, :cond_0

    sget-object p2, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;

    invoke-virtual {p2, p1, p3, p4}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;->convertOCRResultToOcrResult(Landroid/content/Context;Lcom/samsung/android/sdk/ocr/OCRResult;Landroid/graphics/Rect;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public static synthetic extractTextFromRecognizer$default(Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/ocr/OCRLanguage;Landroid/graphics/Rect;Lcom/samsung/android/sdk/ocr/OCRType;ILjava/lang/Object;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    sget-object p5, Lcom/samsung/android/sdk/ocr/OCRType;->OCR_ALL:Lcom/samsung/android/sdk/ocr/OCRType;

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->extractTextFromRecognizer(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/ocr/OCRLanguage;Landroid/graphics/Rect;Lcom/samsung/android/sdk/ocr/OCRType;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;

    move-result-object p0

    return-object p0
.end method

.method private final getConvertedLang(I)Lcom/samsung/android/sdk/ocr/OCRLanguage;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;->Companion:Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage$Companion;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage$Companion;->getByValue(I)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;->getConvertedId$deepsky_sdk_2_2_9_release()Lcom/samsung/android/sdk/ocr/OCRLanguage;

    move-result-object p1

    return-object p1
.end method

.method private final isDetectedFromRecognizer(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/ocr/OCRLanguage;Lcom/samsung/android/sdk/ocr/OCRType;)Z
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/ocr/Recognizer;

    invoke-direct {v0, p1, p4, p3}, Lcom/samsung/android/sdk/ocr/Recognizer;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/ocr/OCRType;Lcom/samsung/android/sdk/ocr/OCRLanguage;)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/ocr/Recognizer;->detectText(Landroid/graphics/Bitmap;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "isTextDetected isDetected:"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "OcrWrapper"

    invoke-static {p3, p2}, Lcom/samsung/android/app/sdk/deepsky/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ocr/Recognizer;->close()V

    return p1
.end method

.method public static synthetic isDetectedFromRecognizer$default(Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/ocr/OCRLanguage;Lcom/samsung/android/sdk/ocr/OCRType;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    sget-object p4, Lcom/samsung/android/sdk/ocr/OCRType;->OCR_ALL:Lcom/samsung/android/sdk/ocr/OCRType;

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->isDetectedFromRecognizer(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/ocr/OCRLanguage;Lcom/samsung/android/sdk/ocr/OCRType;)Z

    move-result p0

    return p0
.end method

.method public static synthetic isSupported$default(Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;Landroid/content/Context;Lcom/samsung/android/sdk/ocr/OCRType;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lcom/samsung/android/sdk/ocr/OCRType;->OCR_ALL:Lcom/samsung/android/sdk/ocr/OCRType;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->isSupported(Landroid/content/Context;Lcom/samsung/android/sdk/ocr/OCRType;)Z

    move-result p0

    return p0
.end method

.method public static synthetic isTextDetected$default(Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;Landroid/content/Context;Landroid/graphics/Bitmap;ILandroid/graphics/Rect;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, -0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->isTextDetected(Landroid/content/Context;Landroid/graphics/Bitmap;ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final detectBlock(Landroid/content/Context;Landroid/graphics/Bitmap;[Landroid/graphics/Point;ILcom/samsung/android/sdk/ocr/OCRType;)Z
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Landroid/graphics/Point;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/samsung/android/sdk/ocr/OCRType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "points"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ocrType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/ocr/Recognizer;

    invoke-direct {p0, p4}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->getConvertedLang(I)Lcom/samsung/android/sdk/ocr/OCRLanguage;

    move-result-object p4

    invoke-direct {v0, p1, p5, p4}, Lcom/samsung/android/sdk/ocr/Recognizer;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/ocr/OCRType;Lcom/samsung/android/sdk/ocr/OCRLanguage;)V

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/sdk/ocr/Recognizer;->detectBlock(Landroid/graphics/Bitmap;[Landroid/graphics/Point;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "blockDetected:"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "OcrWrapper"

    invoke-static {p3, p2}, Lcom/samsung/android/app/sdk/deepsky/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ocr/Recognizer;->close()V

    return p1
.end method

.method public final extractText(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/sdk/ocr/OCRLanguage;->AUTO:Lcom/samsung/android/sdk/ocr/OCRLanguage;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v8}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->extractTextFromRecognizer$default(Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/ocr/OCRLanguage;Landroid/graphics/Rect;Lcom/samsung/android/sdk/ocr/OCRType;ILjava/lang/Object;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;

    move-result-object p1

    return-object p1
.end method

.method public final extractText(Landroid/content/Context;Landroid/graphics/Bitmap;I)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->getConvertedLang(I)Lcom/samsung/android/sdk/ocr/OCRLanguage;

    move-result-object v4

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v8}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->extractTextFromRecognizer$default(Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/ocr/OCRLanguage;Landroid/graphics/Rect;Lcom/samsung/android/sdk/ocr/OCRType;ILjava/lang/Object;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;

    move-result-object p1

    return-object p1
.end method

.method public final extractText(Landroid/content/Context;Landroid/graphics/Bitmap;ILandroid/graphics/Rect;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "bitmap"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "validRect"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "extractText with rect = "

    invoke-static {v1, p4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "OcrWrapper"

    invoke-static {v5, v1}, Lcom/samsung/android/app/sdk/deepsky/logger/LibLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p4, Landroid/graphics/Rect;->left:I

    iget v5, p4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {p2, v1, v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v1, "convertedBitmap"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->getConvertedLang(I)Lcom/samsung/android/sdk/ocr/OCRLanguage;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    :goto_0
    move-object v3, v5

    move-object v4, p4

    move-object v5, v6

    move v6, v7

    move-object v7, v8

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->extractTextFromRecognizer$default(Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/ocr/OCRLanguage;Landroid/graphics/Rect;Lcom/samsung/android/sdk/ocr/OCRType;ILjava/lang/Object;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isTextDetected validRect.width() = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", validRect.height() = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/samsung/android/app/sdk/deepsky/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p3}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->getConvertedLang(I)Lcom/samsung/android/sdk/ocr/OCRLanguage;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    goto :goto_0
.end method

.method public final isHandwritten(Landroid/content/Context;Landroid/graphics/Bitmap;I)Z
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/ocr/Recognizer;

    sget-object v1, Lcom/samsung/android/sdk/ocr/OCRType;->OCR_HANDWRITTEN:Lcom/samsung/android/sdk/ocr/OCRType;

    invoke-direct {p0, p3}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->getConvertedLang(I)Lcom/samsung/android/sdk/ocr/OCRLanguage;

    move-result-object p3

    invoke-direct {v0, p1, v1, p3}, Lcom/samsung/android/sdk/ocr/Recognizer;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/ocr/OCRType;Lcom/samsung/android/sdk/ocr/OCRLanguage;)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/ocr/Recognizer;->isHandwritten(Landroid/graphics/Bitmap;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "isHandwritten:"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "OcrWrapper"

    invoke-static {p3, p2}, Lcom/samsung/android/app/sdk/deepsky/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ocr/Recognizer;->close()V

    return p1
.end method

.method public final isSupported(Landroid/content/Context;Lcom/samsung/android/sdk/ocr/OCRType;)Z
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/sdk/ocr/OCRType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ocrType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ocr/Recognizer;->isSupported(Landroid/content/Context;Lcom/samsung/android/sdk/ocr/OCRType;)Z

    move-result p1

    return p1
.end method

.method public final isTextDetected(Landroid/content/Context;Landroid/graphics/Bitmap;)Z
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/sdk/ocr/OCRLanguage;->AUTO:Lcom/samsung/android/sdk/ocr/OCRLanguage;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->isDetectedFromRecognizer$default(Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/ocr/OCRLanguage;Lcom/samsung/android/sdk/ocr/OCRType;ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isTextDetected(Landroid/content/Context;Landroid/graphics/Bitmap;I)Z
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->getConvertedLang(I)Lcom/samsung/android/sdk/ocr/OCRLanguage;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->isDetectedFromRecognizer$default(Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/ocr/OCRLanguage;Lcom/samsung/android/sdk/ocr/OCRType;ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isTextDetected(Landroid/content/Context;Landroid/graphics/Bitmap;ILandroid/graphics/Rect;)Z
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "validRect"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isTextDetected with rect = "

    invoke-static {v0, p4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OcrWrapper"

    invoke-static {v1, v0}, Lcom/samsung/android/app/sdk/deepsky/logger/LibLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p4, Landroid/graphics/Rect;->left:I

    iget v1, p4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    invoke-static {p2, v0, v1, v2, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    const-string p2, "convertedBitmap"

    invoke-static {v5, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->getConvertedLang(I)Lcom/samsung/android/sdk/ocr/OCRLanguage;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v3 .. v9}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->isDetectedFromRecognizer$default(Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/ocr/OCRLanguage;Lcom/samsung/android/sdk/ocr/OCRType;ILjava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTextDetected validRect.width() = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", validRect.height() = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Lcom/samsung/android/app/sdk/deepsky/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p3}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->getConvertedLang(I)Lcom/samsung/android/sdk/ocr/OCRLanguage;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v2 .. v8}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->isDetectedFromRecognizer$default(Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/ocr/OCRLanguage;Lcom/samsung/android/sdk/ocr/OCRType;ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method
