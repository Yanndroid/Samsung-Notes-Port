.class public final Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ&\u0010\u000b\u001a\u00020\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\nH\u0002J\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\t\u001a\u00020\nH\u0002J&\u0010\u0016\u001a\u00020\u000f2\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u000e2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\t\u001a\u00020\nH\u0002J.\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u00042\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u000e2\u0008\u0010\t\u001a\u0004\u0018\u00010\nJ&\u0010\u001f\u001a\u00020\u00182\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00130\u000e2\u0006\u0010!\u001a\u00020\"2\u0006\u0010\t\u001a\u00020\nH\u0002J\u001e\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000e2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J$\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u000e2\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u000e2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0008\u0010&\u001a\u00020\nH\u0007J$\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u000e2\u0006\u0010\t\u001a\u00020\nH\u0002J)\u0010)\u001a\u0008\u0012\u0004\u0012\u00020+0*2\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020+0*2\u0006\u0010\t\u001a\u00020\nH\u0002\u00a2\u0006\u0002\u0010-J#\u0010.\u001a\u00020\n2\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020+0*2\u0006\u0010\t\u001a\u00020\nH\u0002\u00a2\u0006\u0002\u00100J$\u00101\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u000e2\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u00020\"0\u000e2\u0006\u0010\t\u001a\u00020\nH\u0002\u00a8\u00063"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;",
        "",
        "()V",
        "convertOCRResultToOcrResult",
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;",
        "context",
        "Landroid/content/Context;",
        "resultFromOcr",
        "Lcom/samsung/android/sdk/ocr/OCRResult;",
        "validRect",
        "Landroid/graphics/Rect;",
        "createBlockInfo",
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$BlockInfo;",
        "lineInfoList",
        "",
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$LineInfo;",
        "blockData",
        "Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;",
        "createCharacterInfo",
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$CharInfo;",
        "charData",
        "Lcom/samsung/android/sdk/ocr/OCRResult$CharData;",
        "createListInfo",
        "wordInfoList",
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$WordInfo;",
        "lineData",
        "Lcom/samsung/android/sdk/ocr/OCRResult$LineData;",
        "createOcrResultWithEntityInfo",
        "ocrResult",
        "entityTypes",
        "Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityType;",
        "createWordInfo",
        "charInfoList",
        "wordData",
        "Lcom/samsung/android/sdk/ocr/OCRResult$WordData;",
        "getBlockInfoList",
        "getCharInfoListFromCharDataList",
        "characters",
        "getEmptyRect",
        "getLineInfoListFromLineDataList",
        "lines",
        "getOriginPoint",
        "",
        "Landroid/graphics/Point;",
        "pointArray",
        "([Landroid/graphics/Point;Landroid/graphics/Rect;)[Landroid/graphics/Point;",
        "getRectFromPointArray",
        "point",
        "([Landroid/graphics/Point;Landroid/graphics/Rect;)Landroid/graphics/Rect;",
        "getWordInfoListFromWordDataList",
        "words",
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
.field public static final INSTANCE:Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;

    invoke-direct {v0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;-><init>()V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/graphics/Rect;Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$BlockInfo;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;->getBlockInfoList$lambda-2(Landroid/graphics/Rect;Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$BlockInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroid/graphics/Rect;Lcom/samsung/android/sdk/ocr/OCRResult$WordData;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$WordInfo;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;->getWordInfoListFromWordDataList$lambda-6(Landroid/graphics/Rect;Lcom/samsung/android/sdk/ocr/OCRResult$WordData;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$WordInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroid/graphics/Rect;Lcom/samsung/android/sdk/ocr/OCRResult$CharData;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$CharInfo;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;->getCharInfoListFromCharDataList$lambda-7(Landroid/graphics/Rect;Lcom/samsung/android/sdk/ocr/OCRResult$CharData;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$CharInfo;

    move-result-object p0

    return-object p0
.end method

.method private final createBlockInfo(Ljava/util/List;Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;Landroid/graphics/Rect;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$BlockInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$LineInfo;",
            ">;",
            "Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;",
            "Landroid/graphics/Rect;",
            ")",
            "Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$BlockInfo;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$BlockInfo;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;->getRect()[Landroid/graphics/Point;

    move-result-object v1

    const-string v2, "blockData.rect"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, p3}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;->getRectFromPointArray([Landroid/graphics/Point;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;->getRect()[Landroid/graphics/Point;

    move-result-object p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;->getOriginPoint([Landroid/graphics/Point;Landroid/graphics/Rect;)[Landroid/graphics/Point;

    move-result-object p2

    invoke-direct {v0, p1, v1, p2}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$BlockInfo;-><init>(Ljava/util/List;Landroid/graphics/Rect;[Landroid/graphics/Point;)V

    return-object v0
.end method

.method private final createCharacterInfo(Lcom/samsung/android/sdk/ocr/OCRResult$CharData;Landroid/graphics/Rect;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$CharInfo;
    .locals 4

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$CharInfo;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$CharData;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "charData.text"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$CharData;->getRect()[Landroid/graphics/Point;

    move-result-object v2

    const-string v3, "charData.rect"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, p2}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;->getRectFromPointArray([Landroid/graphics/Point;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$CharData;->getRect()[Landroid/graphics/Point;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;->getOriginPoint([Landroid/graphics/Point;Landroid/graphics/Rect;)[Landroid/graphics/Point;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$CharInfo;-><init>(Ljava/lang/String;Landroid/graphics/Rect;[Landroid/graphics/Point;)V

    return-object v0
.end method

.method private final createListInfo(Ljava/util/List;Lcom/samsung/android/sdk/ocr/OCRResult$LineData;Landroid/graphics/Rect;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$LineInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$WordInfo;",
            ">;",
            "Lcom/samsung/android/sdk/ocr/OCRResult$LineData;",
            "Landroid/graphics/Rect;",
            ")",
            "Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$LineInfo;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$LineInfo;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ocr/OCRResult$LineData;->getRect()[Landroid/graphics/Point;

    move-result-object v1

    const-string v2, "lineData.rect"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, p3}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;->getRectFromPointArray([Landroid/graphics/Point;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ocr/OCRResult$LineData;->getRect()[Landroid/graphics/Point;

    move-result-object p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;->getOriginPoint([Landroid/graphics/Point;Landroid/graphics/Rect;)[Landroid/graphics/Point;

    move-result-object p2

    invoke-direct {v0, p1, v1, p2}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$LineInfo;-><init>(Ljava/util/List;Landroid/graphics/Rect;[Landroid/graphics/Point;)V

    return-object v0
.end method

.method private final createWordInfo(Ljava/util/List;Lcom/samsung/android/sdk/ocr/OCRResult$WordData;Landroid/graphics/Rect;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$WordInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$CharInfo;",
            ">;",
            "Lcom/samsung/android/sdk/ocr/OCRResult$WordData;",
            "Landroid/graphics/Rect;",
            ")",
            "Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$WordInfo;"
        }
    .end annotation

    new-instance v7, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$WordInfo;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ocr/OCRResult$WordData;->getRect()[Landroid/graphics/Point;

    move-result-object v0

    const-string/jumbo v1, "wordData.rect"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;->getRectFromPointArray([Landroid/graphics/Point;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ocr/OCRResult$WordData;->getRect()[Landroid/graphics/Point;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;->getOriginPoint([Landroid/graphics/Point;Landroid/graphics/Rect;)[Landroid/graphics/Point;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$WordInfo;-><init>(Ljava/util/List;Landroid/graphics/Rect;[Landroid/graphics/Point;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method public static synthetic d(Landroid/graphics/Rect;Lcom/samsung/android/sdk/ocr/OCRResult$LineData;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$LineInfo;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;->getLineInfoListFromLineDataList$lambda-5(Landroid/graphics/Rect;Lcom/samsung/android/sdk/ocr/OCRResult$LineData;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$LineInfo;

    move-result-object p0

    return-object p0
.end method

.method private final getBlockInfoList(Lcom/samsung/android/sdk/ocr/OCRResult;Landroid/graphics/Rect;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/ocr/OCRResult;",
            "Landroid/graphics/Rect;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$BlockInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ocr/OCRResult;->getBlockDataList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/a;

    invoke-direct {v0, p2}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/a;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "resultFromOcr.blockDataL\u2026lect(Collectors.toList())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method private static final getBlockInfoList$lambda-2(Landroid/graphics/Rect;Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$BlockInfo;
    .locals 3

    const-string v0, "$validRect"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;->getLineDataList()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "it.lineDataList"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;->getLineInfoListFromLineDataList(Ljava/util/List;Landroid/graphics/Rect;)Ljava/util/List;

    move-result-object v1

    const-string v2, "it"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1, p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;->createBlockInfo(Ljava/util/List;Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;Landroid/graphics/Rect;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$BlockInfo;

    move-result-object p0

    return-object p0
.end method

.method private final getCharInfoListFromCharDataList(Ljava/util/List;Landroid/graphics/Rect;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/sdk/ocr/OCRResult$CharData;",
            ">;",
            "Landroid/graphics/Rect;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$CharInfo;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/b;

    invoke-direct {v0, p2}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/b;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "characters.stream().map \u2026lect(Collectors.toList())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method private static final getCharInfoListFromCharDataList$lambda-7(Landroid/graphics/Rect;Lcom/samsung/android/sdk/ocr/OCRResult$CharData;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$CharInfo;
    .locals 2

    const-string v0, "$validRect"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;->createCharacterInfo(Lcom/samsung/android/sdk/ocr/OCRResult$CharData;Landroid/graphics/Rect;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$CharInfo;

    move-result-object p0

    return-object p0
.end method

.method private final getLineInfoListFromLineDataList(Ljava/util/List;Landroid/graphics/Rect;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/sdk/ocr/OCRResult$LineData;",
            ">;",
            "Landroid/graphics/Rect;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$LineInfo;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/c;

    invoke-direct {v0, p2}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/c;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "lines.stream().map {\n   \u2026lect(Collectors.toList())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method private static final getLineInfoListFromLineDataList$lambda-5(Landroid/graphics/Rect;Lcom/samsung/android/sdk/ocr/OCRResult$LineData;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$LineInfo;
    .locals 3

    const-string v0, "$validRect"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$LineData;->getWordDataList()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "it.wordDataList"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;->getWordInfoListFromWordDataList(Ljava/util/List;Landroid/graphics/Rect;)Ljava/util/List;

    move-result-object v1

    const-string v2, "it"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1, p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;->createListInfo(Ljava/util/List;Lcom/samsung/android/sdk/ocr/OCRResult$LineData;Landroid/graphics/Rect;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$LineInfo;

    move-result-object p0

    return-object p0
.end method

.method private final getOriginPoint([Landroid/graphics/Point;Landroid/graphics/Rect;)[Landroid/graphics/Point;
    .locals 4

    invoke-static {p1}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->x:I

    iget v2, v1, Landroid/graphics/Point;->y:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private final getRectFromPointArray([Landroid/graphics/Point;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;->getEmptyRect()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, p1, v1

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    aget-object v1, p1, v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    const/4 v1, 0x2

    aget-object v2, p1, v1

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    aget-object p1, p1, v1

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method private final getWordInfoListFromWordDataList(Ljava/util/List;Landroid/graphics/Rect;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/sdk/ocr/OCRResult$WordData;",
            ">;",
            "Landroid/graphics/Rect;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$WordInfo;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/d;

    invoke-direct {v0, p2}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/d;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo p2, "words.stream().map {\n   \u2026lect(Collectors.toList())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method private static final getWordInfoListFromWordDataList$lambda-6(Landroid/graphics/Rect;Lcom/samsung/android/sdk/ocr/OCRResult$WordData;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$WordInfo;
    .locals 3

    const-string v0, "$validRect"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$WordData;->getCharDataList()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "it.charDataList"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;->getCharInfoListFromCharDataList(Ljava/util/List;Landroid/graphics/Rect;)Ljava/util/List;

    move-result-object v1

    const-string v2, "it"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1, p0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;->createWordInfo(Ljava/util/List;Lcom/samsung/android/sdk/ocr/OCRResult$WordData;Landroid/graphics/Rect;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$WordInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final convertOCRResultToOcrResult(Landroid/content/Context;Lcom/samsung/android/sdk/ocr/OCRResult;Landroid/graphics/Rect;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/sdk/ocr/OCRResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultFromOcr"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "validRect"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;->getBlockInfoList(Lcom/samsung/android/sdk/ocr/OCRResult;Landroid/graphics/Rect;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 p2, 0x2

    new-array p2, p2, [Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityType;

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityType;->PHONE:Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityType;

    const/4 v2, 0x0

    aput-object v1, p2, v2

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityType;->EMAIL:Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityType;

    const/4 v2, 0x1

    aput-object v1, p2, v2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResultConverter;->createOcrResultWithEntityInfo(Landroid/content/Context;Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;Ljava/util/List;Landroid/graphics/Rect;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;

    move-result-object p1

    return-object p1
.end method

.method public final createOcrResultWithEntityInfo(Landroid/content/Context;Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;Ljava/util/List;Landroid/graphics/Rect;)Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;
    .locals 16
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityType;",
            ">;",
            "Landroid/graphics/Rect;",
            ")",
            "Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "context"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "ocrResult"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "entityTypes"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;

    invoke-direct {v3, v0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p4

    invoke-virtual {v3, v1, v2, v0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/OcrEntityExtractor;->extractEntity(Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;Ljava/util/List;Landroid/graphics/Rect;)Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityExtractionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityExtractionResult;->getItems()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityItem;

    invoke-virtual {v5}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityItem;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityItem;->getType()Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityType;->getTypeId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityItem;->getRect()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v5}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityItem;->getPoly()Ljava/util/List;

    move-result-object v6

    const/4 v10, 0x0

    new-array v11, v10, [Landroid/graphics/Point;

    invoke-interface {v6, v11}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    const-string v11, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v6, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v12, v6

    check-cast v12, [Landroid/graphics/Point;

    invoke-virtual {v5}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityItem;->getUnderlines()Ljava/util/List;

    move-result-object v6

    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v6, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/Underline;

    new-instance v15, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$UnderlineInfo;

    invoke-virtual {v14}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/Underline;->getStart()Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v14}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/Underline;->getStop()Landroid/graphics/PointF;

    move-result-object v14

    invoke-direct {v15, v4, v14}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$UnderlineInfo;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-interface {v13, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v4, 0xa

    goto :goto_1

    :cond_0
    new-array v4, v10, [Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$UnderlineInfo;

    invoke-interface {v13, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v11, v4

    check-cast v11, [Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$UnderlineInfo;

    invoke-virtual {v5}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityItem;->getLabel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityItem;->getScore()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    new-instance v5, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$EntityInfo;

    move-object v6, v5

    move-object v10, v12

    move-object v12, v4

    invoke-direct/range {v6 .. v13}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$EntityInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;[Landroid/graphics/Point;[Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$UnderlineInfo;Ljava/lang/Integer;Ljava/lang/Float;)V

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v4, 0xa

    goto/16 :goto_0

    :cond_1
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;->getBlockInfoList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/entity/EntityExtractionResult;->getLanguageTags()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v2, v0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-object v3
.end method

.method public final getEmptyRect()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method
