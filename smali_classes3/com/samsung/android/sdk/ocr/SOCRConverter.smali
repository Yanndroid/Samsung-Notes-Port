.class public Lcom/samsung/android/sdk/ocr/SOCRConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SOCRConverter"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static CreateCharDataForLegacyLibrary(Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;)V
    .locals 15

    invoke-static {p0}, Lcom/samsung/android/sdk/ocr/SOCRConverter;->isLegacyWordData(Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;)Z

    move-result v0

    const-string v1, "SOCRConverter"

    if-nez v0, :cond_0

    const-string p0, "Word data is not legacy so it doesn\'t need to generate characters"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->getLegacyText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->getCharRects()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    if-ne v4, v2, :cond_2

    :goto_0
    if-ge v5, v2, :cond_1

    new-instance v1, Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;

    invoke-direct {v1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;-><init>()V

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;->setText(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/graphics/Point;

    invoke-virtual {v1, v5}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;->setRect([Landroid/graphics/Point;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->add(Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;)V

    move v5, v4

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->getRect()[Landroid/graphics/Point;

    move-result-object v3

    aget-object v4, v3, v5

    const/4 v6, 0x1

    aget-object v7, v3, v6

    const/4 v8, 0x2

    aget-object v9, v3, v8

    const/4 v10, 0x3

    aget-object v3, v3, v10

    new-array v11, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v5

    const-string v12, "Converting a word into %d character list"

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v5

    :goto_1
    if-ge v1, v2, :cond_3

    new-instance v11, Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;

    invoke-direct {v11}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;-><init>()V

    add-int/lit8 v12, v1, 0x1

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;->setText(Ljava/lang/String;)V

    const/4 v13, 0x4

    new-array v13, v13, [Landroid/graphics/Point;

    invoke-static {v4, v7, v1, v2}, Lcom/samsung/android/sdk/ocr/SOCRConverter;->getSplitPoint(Landroid/graphics/Point;Landroid/graphics/Point;II)Landroid/graphics/Point;

    move-result-object v14

    aput-object v14, v13, v5

    invoke-static {v4, v7, v12, v2}, Lcom/samsung/android/sdk/ocr/SOCRConverter;->getSplitPoint(Landroid/graphics/Point;Landroid/graphics/Point;II)Landroid/graphics/Point;

    move-result-object v14

    aput-object v14, v13, v6

    invoke-static {v3, v9, v12, v2}, Lcom/samsung/android/sdk/ocr/SOCRConverter;->getSplitPoint(Landroid/graphics/Point;Landroid/graphics/Point;II)Landroid/graphics/Point;

    move-result-object v14

    aput-object v14, v13, v8

    invoke-static {v3, v9, v1, v2}, Lcom/samsung/android/sdk/ocr/SOCRConverter;->getSplitPoint(Landroid/graphics/Point;Landroid/graphics/Point;II)Landroid/graphics/Point;

    move-result-object v1

    aput-object v1, v13, v10

    invoke-virtual {v11, v13}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;->setRect([Landroid/graphics/Point;)V

    invoke-virtual {p0, v11}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->add(Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;)V

    move v1, v12

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static convertBlock(Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;)Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;->clear()V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;->getLineDataList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLineData;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ocr/SOCRConverter;->convertLine(Lcom/samsung/android/sdk/pen/ocr/SpenOcrLineData;Lcom/samsung/android/sdk/ocr/OCRResult$LineData;)Lcom/samsung/android/sdk/ocr/OCRResult$LineData;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;->add(Lcom/samsung/android/sdk/ocr/OCRResult$LineData;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;->getRect()[Landroid/graphics/Point;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;->setRect([Landroid/graphics/Point;)V

    return-object p1
.end method

.method public static convertChar(Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;Lcom/samsung/android/sdk/ocr/OCRResult$CharData;)Lcom/samsung/android/sdk/ocr/OCRResult$CharData;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/sdk/ocr/OCRResult$CharData;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$CharData;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$CharData;->clear()V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/ocr/OCRResult$CharData;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;->getRect()[Landroid/graphics/Point;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/ocr/OCRResult$CharData;->setRect([Landroid/graphics/Point;)V

    return-object p1
.end method

.method public static convertChar(Lcom/samsung/android/sdk/ocr/OCRResult$CharData;Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;)Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;->clear()V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ocr/OCRResult$CharData;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ocr/OCRResult$CharData;->getRect()[Landroid/graphics/Point;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;->setRect([Landroid/graphics/Point;)V

    return-object p1
.end method

.method public static convertLine(Lcom/samsung/android/sdk/pen/ocr/SpenOcrLineData;Lcom/samsung/android/sdk/ocr/OCRResult$LineData;)Lcom/samsung/android/sdk/ocr/OCRResult$LineData;
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/sdk/ocr/OCRResult$LineData;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$LineData;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$LineData;->clear()V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLineData;->getWordDataList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ocr/SOCRConverter;->convertWord(Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;Lcom/samsung/android/sdk/ocr/OCRResult$WordData;)Lcom/samsung/android/sdk/ocr/OCRResult$WordData;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/ocr/OCRResult$LineData;->add(Lcom/samsung/android/sdk/ocr/OCRResult$WordData;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLineData;->getRect()[Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/ocr/OCRResult$LineData;->setRect([Landroid/graphics/Point;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLineData;->getAngle()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/ocr/OCRResult$LineData;->setAngle(F)V

    return-object p1
.end method

.method public static convertLine(Lcom/samsung/android/sdk/ocr/OCRResult$LineData;Lcom/samsung/android/sdk/pen/ocr/SpenOcrLineData;)Lcom/samsung/android/sdk/pen/ocr/SpenOcrLineData;
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLineData;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLineData;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLineData;->clear()V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ocr/OCRResult$LineData;->getWordDataList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/ocr/OCRResult$WordData;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ocr/SOCRConverter;->convertWord(Lcom/samsung/android/sdk/ocr/OCRResult$WordData;Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;)Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLineData;->add(Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ocr/OCRResult$LineData;->getRect()[Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLineData;->setRect([Landroid/graphics/Point;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ocr/OCRResult$LineData;->getAngle()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLineData;->setAngle(F)V

    return-object p1
.end method

.method public static convertPage(Lcom/samsung/android/sdk/pen/ocr/SpenOcrPageData;Lcom/samsung/android/sdk/ocr/OCRResult;)Lcom/samsung/android/sdk/ocr/OCRResult;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/sdk/ocr/OCRResult;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ocr/OCRResult;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ocr/OCRResult;->clear()V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrPageData;->getTextBlockList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ocr/SOCRConverter;->convertBlock(Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;)Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/ocr/OCRResult;->add(Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;)V

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public static convertWord(Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;Lcom/samsung/android/sdk/ocr/OCRResult$WordData;)Lcom/samsung/android/sdk/ocr/OCRResult$WordData;
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/sdk/ocr/OCRResult$WordData;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$WordData;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$WordData;->clear()V

    :goto_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ocr/SOCRConverter;->CreateCharDataForLegacyLibrary(Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->getCharDataList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ocr/SOCRConverter;->convertChar(Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;Lcom/samsung/android/sdk/ocr/OCRResult$CharData;)Lcom/samsung/android/sdk/ocr/OCRResult$CharData;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/ocr/OCRResult$WordData;->add(Lcom/samsung/android/sdk/ocr/OCRResult$CharData;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->getRect()[Landroid/graphics/Point;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/ocr/OCRResult$WordData;->setRect([Landroid/graphics/Point;)V

    return-object p1
.end method

.method public static convertWord(Lcom/samsung/android/sdk/ocr/OCRResult$WordData;Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;)Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->clear()V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ocr/OCRResult$WordData;->getCharDataList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/ocr/OCRResult$CharData;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ocr/SOCRConverter;->convertChar(Lcom/samsung/android/sdk/ocr/OCRResult$CharData;Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;)Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->add(Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ocr/OCRResult$WordData;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ocr/OCRResult$WordData;->getRect()[Landroid/graphics/Point;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->setRect([Landroid/graphics/Point;)V

    return-object p1
.end method

.method private static getSplitPoint(Landroid/graphics/Point;Landroid/graphics/Point;II)Landroid/graphics/Point;
    .locals 4

    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Landroid/graphics/Point;->x:I

    sub-int v2, p3, p2

    mul-int/2addr v1, v2

    iget v3, p1, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, p2

    add-int/2addr v1, v3

    int-to-float v1, v1

    int-to-float p3, p3

    div-float/2addr v1, p3

    float-to-int v1, v1

    iget p0, p0, Landroid/graphics/Point;->y:I

    mul-int/2addr p0, v2

    iget p1, p1, Landroid/graphics/Point;->y:I

    mul-int/2addr p1, p2

    add-int/2addr p0, p1

    int-to-float p0, p0

    div-float/2addr p0, p3

    float-to-int p0, p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private static isLegacyWordData(Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->getLegacyText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SOCRConverter"

    if-eqz v0, :cond_0

    const-string p0, "No legacy conversion: legacy word text has not been assigned"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->getCharDataList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const-string p0, "No legacy conversion: charDataList is not empty"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->getRect()[Landroid/graphics/Point;

    move-result-object p0

    if-eqz p0, :cond_3

    array-length p0, p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    const-string p0, "No legacy conversion: word Rect is not defined"

    goto :goto_0
.end method
