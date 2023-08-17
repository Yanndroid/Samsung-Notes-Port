.class public final Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionTextImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionText;
.implements Lcom/samsung/android/app/sdk/deepsky/common/FeatureSupportable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionTextImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 %2\u00020\u00012\u00020\u0002:\u0001%B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0002J3\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016\u00a2\u0006\u0002\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0018\u0010\u0014\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0018\u0010\u0014\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J \u0010\u0014\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u001e\u0010\u0017\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u001a2\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001eH\u0016J\u0010\u0010\u001f\u001a\u00020\u001a2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0018\u0010\u001f\u001a\u00020\u001a2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0018\u0010\u001f\u001a\u00020\u001a2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J \u0010\u001f\u001a\u00020\u001a2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0008\u0010 \u001a\u00020!H\u0016J\u0010\u0010\"\u001a\u00020#2\u0006\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010$\u001a\u00020\tH\u0016J\u0010\u0010$\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionTextImpl;",
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionText;",
        "Lcom/samsung/android/app/sdk/deepsky/common/FeatureSupportable;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "checkThread",
        "",
        "detectBlock",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "points",
        "",
        "Landroid/graphics/Point;",
        "language",
        "",
        "ocrType",
        "Lcom/samsung/android/sdk/ocr/OCRType;",
        "(Landroid/graphics/Bitmap;[Landroid/graphics/Point;ILcom/samsung/android/sdk/ocr/OCRType;)Z",
        "detectVisionText",
        "validRect",
        "Landroid/graphics/Rect;",
        "extractEntity",
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityExtractionResult;",
        "ocrResult",
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;",
        "entityType",
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityType;",
        "entityTypes",
        "",
        "extractVisionText",
        "getRecognizer",
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/Recognizer;",
        "getVisionTextDrawHelper",
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionTextDrawHelper;",
        "isSupported",
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
.field public static final Companion:Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionTextImpl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "VisionTextImpl"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionTextImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionTextImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionTextImpl;->Companion:Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionTextImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionTextImpl;->context:Landroid/content/Context;

    return-void
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


# virtual methods
.method public detectBlock(Landroid/graphics/Bitmap;[Landroid/graphics/Point;ILcom/samsung/android/sdk/ocr/OCRType;)Z
    .locals 8
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Landroid/graphics/Point;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/sdk/ocr/OCRType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "points"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ocrType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "detectBlock "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VisionTextImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/app/sdk/deepsky/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionTextImpl;->checkThread()V

    sget-object v2, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;

    iget-object v3, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionTextImpl;->context:Landroid/content/Context;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->detectBlock(Landroid/content/Context;Landroid/graphics/Bitmap;[Landroid/graphics/Point;ILcom/samsung/android/sdk/ocr/OCRType;)Z

    move-result p1

    return p1
.end method

.method public detectVisionText(Landroid/graphics/Bitmap;)Z
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectVisionText "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VisionTextImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/app/sdk/deepsky/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionTextImpl;->checkThread()V

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionTextImpl;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->isTextDetected(Landroid/content/Context;Landroid/graphics/Bitmap;)Z

    move-result p1

    return p1
.end method

.method public detectVisionText(Landroid/graphics/Bitmap;I)Z
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "detectVisionText "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", language = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VisionTextImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/app/sdk/deepsky/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionTextImpl;->checkThread()V

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionTextImpl;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->isTextDetected(Landroid/content/Context;Landroid/graphics/Bitmap;I)Z

    move-result p1

    return p1
.end method

.method public detectVisionText(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;)Z
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "validRect"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "detectVisionText "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", language = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VisionTextImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/app/sdk/deepsky/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionTextImpl;->checkThread()V

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionTextImpl;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->isTextDetected(Landroid/content/Context;Landroid/graphics/Bitmap;ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public detectVisionText(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Z
    .locals 9
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

    const-string v1, "detectVisionText "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VisionTextImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/app/sdk/deepsky/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionTextImpl;->checkThread()V

    sget-object v2, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;

    iget-object v3, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionTextImpl;->context:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v4, p1

    move-object v6, p2

    invoke-static/range {v2 .. v8}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->isTextDetected$default(Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;Landroid/content/Context;Landroid/graphics/Bitmap;ILandroid/graphics/Rect;ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public extractEntity(Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityType;)Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityExtractionResult;
    .locals 2
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ocrResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extractEntity "

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VisionTextImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/app/sdk/deepsky/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionTextImpl;->checkThread()V

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionTextImpl;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;->extractEntity(Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;Ljava/util/List;Landroid/graphics/Rect;)Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityExtractionResult;

    move-result-object p1

    return-object p1
.end method

.method public extractEntity(Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;Ljava/util/List;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;
    .locals 11
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityType;",
            ">;)",
            "Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ocrResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityTypes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extractEntity, types: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const/4 v10, 0x0

    move-object v2, p2

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VisionTextImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/app/sdk/deepsky/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionTextImpl;->checkThread()V

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    new-array p2, p2, [Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityType;

    const/4 v0, 0x0

    sget-object v2, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityType;->PHONE:Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityType;

    aput-object v2, p2, v0

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityType;->EMAIL:Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityType;

    aput-object v0, p2, v1

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    :goto_0
    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionTextImpl;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;->createOcrResultWithEntityInfo(Landroid/content/Context;Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;Ljava/util/List;Landroid/graphics/Rect;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;

    move-result-object p1

    return-object p1
.end method

.method public extractVisionText(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extractVisionText "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VisionTextImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/app/sdk/deepsky/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionTextImpl;->checkThread()V

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionTextImpl;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->extractText(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;

    move-result-object p1

    return-object p1
.end method

.method public extractVisionText(Landroid/graphics/Bitmap;I)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extractVisionText "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", language = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VisionTextImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/app/sdk/deepsky/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionTextImpl;->checkThread()V

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionTextImpl;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->extractText(Landroid/content/Context;Landroid/graphics/Bitmap;I)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;

    move-result-object p1

    return-object p1
.end method

.method public extractVisionText(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "validRect"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extractVisionText "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", language = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VisionTextImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/app/sdk/deepsky/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionTextImpl;->checkThread()V

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionTextImpl;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->extractText(Landroid/content/Context;Landroid/graphics/Bitmap;ILandroid/graphics/Rect;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;

    move-result-object p1

    return-object p1
.end method

.method public extractVisionText(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;
    .locals 9
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

    const-string v1, "extractVisionText "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VisionTextImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/app/sdk/deepsky/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionTextImpl;->checkThread()V

    sget-object v2, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;

    iget-object v3, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionTextImpl;->context:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v4, p1

    move-object v6, p2

    invoke-static/range {v2 .. v8}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->extractText$default(Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;Landroid/content/Context;Landroid/graphics/Bitmap;ILandroid/graphics/Rect;ILjava/lang/Object;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;

    move-result-object p1

    return-object p1
.end method

.method public getRecognizer()Lcom/samsung/android/app/sdk/deepsky/visiontext/Recognizer;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionTextImpl;->context:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/samsung/android/app/sdk/deepsky/visiontext/RecognizerImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/ocr/Recognizer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v1, "RecognizerImpl object -->"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeepSkyStar"

    invoke-static {v2, v1}, Lcom/samsung/android/app/sdk/deepsky/logger/LibLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getVisionTextDrawHelper(Landroid/content/Context;)Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionTextDrawHelper;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public isSupported()Z
    .locals 4

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionTextImpl;->context:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->isSupported$default(Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;Landroid/content/Context;Lcom/samsung/android/sdk/ocr/OCRType;ILjava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isSupported "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VisionTextImpl"

    invoke-static {v2, v1}, Lcom/samsung/android/app/sdk/deepsky/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isSupported(Lcom/samsung/android/sdk/ocr/OCRType;)Z
    .locals 2
    .param p1    # Lcom/samsung/android/sdk/ocr/OCRType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ocrType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/VisionTextImpl;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrWrapper;->isSupported(Landroid/content/Context;Lcom/samsung/android/sdk/ocr/OCRType;)Z

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, " is supported on this device"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "VisionTextImpl"

    invoke-static {v1, p1}, Lcom/samsung/android/app/sdk/deepsky/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
