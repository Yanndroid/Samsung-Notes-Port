.class public Lcom/samsung/android/sdk/pen/ocr/SpenOcrPageData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenOcrPageData"


# instance fields
.field private mTextBlockList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrPageData;->mTextBlockList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrPageData;->mTextBlockList:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;)Landroid/graphics/Point;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrPageData;->lambda$findNearestTextBlock$0(Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroid/graphics/Point;Landroid/graphics/Point;)Ljava/lang/Double;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrPageData;->lambda$findNearestTextBlock$1(Landroid/graphics/Point;Landroid/graphics/Point;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method private static isPointInPolygon(Landroid/graphics/Point;[Landroid/graphics/Point;)Z
    .locals 10

    array-length v0, p1

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    move v4, v1

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v5, p1, v1

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget v6, p0, Landroid/graphics/Point;->y:I

    const/4 v7, 0x1

    if-le v5, v6, :cond_0

    move v5, v7

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    aget-object v8, p1, v3

    iget v8, v8, Landroid/graphics/Point;->y:I

    if-le v8, v6, :cond_1

    goto :goto_2

    :cond_1
    move v7, v2

    :goto_2
    if-eq v5, v7, :cond_2

    iget v5, p0, Landroid/graphics/Point;->x:I

    aget-object v7, p1, v3

    iget v7, v7, Landroid/graphics/Point;->x:I

    aget-object v8, p1, v1

    iget v8, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v8

    aget-object v8, p1, v1

    iget v8, v8, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v8

    mul-int/2addr v7, v6

    aget-object v3, p1, v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    aget-object v6, p1, v1

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v6

    div-int/2addr v7, v3

    aget-object v3, p1, v1

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v7, v3

    if-ge v5, v7, :cond_2

    xor-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/lit8 v3, v1, 0x1

    move v9, v3

    move v3, v1

    move v1, v9

    goto :goto_0

    :cond_3
    return v4
.end method

.method private static synthetic lambda$findNearestTextBlock$0(Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;)Landroid/graphics/Point;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;->getRect()[Landroid/graphics/Point;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/sdk/ocr/OCRResultUtils;->getCenterPoint([Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$findNearestTextBlock$1(Landroid/graphics/Point;Landroid/graphics/Point;)Ljava/lang/Double;
    .locals 4

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p0, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, p0

    int-to-double p0, p1

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public add(Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrPageData;->mTextBlockList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrPageData;->mTextBlockList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public findNearestTextBlock(Landroid/graphics/Point;)I
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrPageData;->getTextBlockList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "SpenOcrPageData"

    if-gtz v0, :cond_0

    const-string p1, "There is no detected text block"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pivotPoint : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrPageData;->getTextBlockList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/pen/ocr/b;->a:Lcom/samsung/android/sdk/pen/ocr/b;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/pen/ocr/a;

    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/pen/ocr/a;-><init>(Landroid/graphics/Point;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrPageData;->mTextBlockList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextBlockList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrPageData;->mTextBlockList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public scale(F)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrPageData;->mTextBlockList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;->scale(F)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public setTextBlockList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrPageData;->mTextBlockList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
