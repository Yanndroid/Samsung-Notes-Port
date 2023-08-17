.class public final Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/sdk/deepsky/visiontext/Recognizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 !2\u00020\u0001:\u0001!B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0002J\u0008\u0010\t\u001a\u00020\u0008H\u0002J#\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0016\u00a2\u0006\u0002\u0010\u0011J#\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0002\u00a2\u0006\u0002\u0010\u0011J\u0010\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0018\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u001a\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015H\u0002J\u0018\u0010\u001a\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0010\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0018\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u0010\u0010\u001d\u001a\u00020\u00082\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0008\u0010 \u001a\u00020\u0008H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;",
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/Recognizer;",
        "context",
        "Landroid/content/Context;",
        "recognizer",
        "Lcom/samsung/android/sdk/ocr/Recognizer;",
        "(Landroid/content/Context;Lcom/samsung/android/sdk/ocr/Recognizer;)V",
        "checkIfRecognizerValid",
        "",
        "checkThread",
        "detectBlock",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "points",
        "",
        "Landroid/graphics/Point;",
        "(Landroid/graphics/Bitmap;[Landroid/graphics/Point;)Z",
        "detectBlockWithOcrRecognizer",
        "detectText",
        "validRect",
        "Landroid/graphics/Rect;",
        "detectTextWithOcrRecognizer",
        "extractText",
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;",
        "extractTextWithOcrRecognizer",
        "getBitmapWithinRect",
        "hasText",
        "hasTextWithOcrRecognizer",
        "initialize",
        "language",
        "",
        "release",
        "Companion",
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
.field public static final Companion:Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RecognizerImpl"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private recognizer:Lcom/samsung/android/sdk/ocr/Recognizer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;->Companion:Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/ocr/Recognizer;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/sdk/ocr/Recognizer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;->recognizer:Lcom/samsung/android/sdk/ocr/Recognizer;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/ocr/Recognizer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/ocr/Recognizer;)V

    return-void
.end method

.method private final checkIfRecognizerValid()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;->recognizer:Lcom/samsung/android/sdk/ocr/Recognizer;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recognizer is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final checkThread()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should be called on worker thread"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final detectBlockWithOcrRecognizer(Landroid/graphics/Bitmap;[Landroid/graphics/Point;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;->recognizer:Lcom/samsung/android/sdk/ocr/Recognizer;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/ocr/Recognizer;->detectBlock(Landroid/graphics/Bitmap;[Landroid/graphics/Point;)Z

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "detectBlockFromRecognizer detectBlock = "

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "RecognizerImpl"

    invoke-static {v0, p2}, Lcom/samsung/android/app/sdk/deepsky/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private final detectTextWithOcrRecognizer(Landroid/graphics/Bitmap;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;->recognizer:Lcom/samsung/android/sdk/ocr/Recognizer;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ocr/Recognizer;->detectText(Landroid/graphics/Bitmap;)Z

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "detectTextWithOcrRecognizer detectText = "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecognizerImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/app/sdk/deepsky/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private final extractTextWithOcrRecognizer(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;
    .locals 6

    new-instance v0, Lcom/samsung/android/sdk/ocr/OCRResult;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ocr/OCRResult;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;->recognizer:Lcom/samsung/android/sdk/ocr/Recognizer;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/sdk/ocr/Recognizer;->recognize(Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/ocr/OCRResult;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_1

    sget-object p1, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;->context:Landroid/content/Context;

    invoke-virtual {p1, v1, v0, p2}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;->convertOCRResultToOcrResult(Landroid/content/Context;Lcom/samsung/android/sdk/ocr/OCRResult;Landroid/graphics/Rect;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string p2, "RecognizerImpl"

    const-string v0, "extractTextFromRecognizer empty result"

    invoke-static {p2, v0}, Lcom/samsung/android/app/sdk/deepsky/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public static synthetic extractTextWithOcrRecognizer$default(Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;Landroid/graphics/Bitmap;Landroid/graphics/Rect;ILjava/lang/Object;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;
    .locals 1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;->extractTextWithOcrRecognizer(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;

    move-result-object p0

    return-object p0
.end method

.method private final getBitmapWithinRect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 3

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-static {p1, v0, v1, v2, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p2, "createBitmap(\n          \u2026idRect.height()\n        )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final hasTextWithOcrRecognizer(Landroid/graphics/Bitmap;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;->recognizer:Lcom/samsung/android/sdk/ocr/Recognizer;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ocr/Recognizer;->hasText(Landroid/graphics/Bitmap;)Z

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "hasTextFromRecognizer hasText = "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecognizerImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/app/sdk/deepsky/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method


# virtual methods
.method public detectBlock(Landroid/graphics/Bitmap;[Landroid/graphics/Point;)Z
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Landroid/graphics/Point;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "points"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "detectBlock "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", points = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecognizerImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/app/sdk/deepsky/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;->checkThread()V

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;->checkIfRecognizerValid()V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;->detectBlockWithOcrRecognizer(Landroid/graphics/Bitmap;[Landroid/graphics/Point;)Z

    move-result p1

    return p1
.end method

.method public detectText(Landroid/graphics/Bitmap;)Z
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectText "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecognizerImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/app/sdk/deepsky/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;->checkThread()V

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;->checkIfRecognizerValid()V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;->detectTextWithOcrRecognizer(Landroid/graphics/Bitmap;)Z

    move-result p1

    return p1
.end method

.method public detectText(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Z
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "validRect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "detectText "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", validRect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecognizerImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/app/sdk/deepsky/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;->checkThread()V

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;->checkIfRecognizerValid()V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;->getBitmapWithinRect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;->detectTextWithOcrRecognizer(Landroid/graphics/Bitmap;)Z

    move-result p1

    return p1
.end method

.method public extractText(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extractText "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecognizerImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/app/sdk/deepsky/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;->checkThread()V

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;->checkIfRecognizerValid()V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;->extractTextWithOcrRecognizer$default(Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;Landroid/graphics/Bitmap;Landroid/graphics/Rect;ILjava/lang/Object;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;

    move-result-object p1

    return-object p1
.end method

.method public extractText(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "validRect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extractText "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecognizerImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/app/sdk/deepsky/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;->checkThread()V

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;->checkIfRecognizerValid()V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;->getBitmapWithinRect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;->extractTextWithOcrRecognizer(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;

    move-result-object p1

    return-object p1
.end method

.method public hasText(Landroid/graphics/Bitmap;)Z
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hasText "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecognizerImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/app/sdk/deepsky/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;->checkThread()V

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;->checkIfRecognizerValid()V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;->hasTextWithOcrRecognizer(Landroid/graphics/Bitmap;)Z

    move-result p1

    return p1
.end method

.method public hasText(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Z
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "validRect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasText "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", validRect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecognizerImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/app/sdk/deepsky/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;->checkThread()V

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;->checkIfRecognizerValid()V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;->getBitmapWithinRect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;->hasTextWithOcrRecognizer(Landroid/graphics/Bitmap;)Z

    move-result p1

    return p1
.end method

.method public initialize(I)V
    .locals 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "init  language = "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecognizerImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/app/sdk/deepsky/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;->checkThread()V

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;->recognizer:Lcom/samsung/android/sdk/ocr/Recognizer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/ocr/Recognizer;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;->context:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/sdk/ocr/OCRType;->OCR_ALL:Lcom/samsung/android/sdk/ocr/OCRType;

    sget-object v3, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;->Companion:Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage$Companion;

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage$Companion;->getByValue(I)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/VisionOCRLanguage;->getConvertedId$deepsky_sdk_2_2_9_release()Lcom/samsung/android/sdk/ocr/OCRLanguage;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/sdk/ocr/Recognizer;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/ocr/OCRType;Lcom/samsung/android/sdk/ocr/OCRLanguage;)V

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;->recognizer:Lcom/samsung/android/sdk/ocr/Recognizer;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already initialized"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public release()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;->checkThread()V

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;->recognizer:Lcom/samsung/android/sdk/ocr/Recognizer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ocr/Recognizer;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;->recognizer:Lcom/samsung/android/sdk/ocr/Recognizer;

    :goto_0
    return-void
.end method
