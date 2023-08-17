.class public Lcom/samsung/android/sdk/ocr/MOCRConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertBlock(Lcom/samsung/android/ocr/MOCRResult$Block;Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;)Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;
    .locals 5

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;->clear()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/ocr/MOCRResult$Block;->lines:[Lcom/samsung/android/ocr/MOCRResult$Line;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ocr/MOCRConverter;->convertLine(Lcom/samsung/android/ocr/MOCRResult$Line;Lcom/samsung/android/sdk/ocr/OCRResult$LineData;)Lcom/samsung/android/sdk/ocr/OCRResult$LineData;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;->add(Lcom/samsung/android/sdk/ocr/OCRResult$LineData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/ocr/MOCRResult$Block;->bRect:[Landroid/graphics/Point;

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;->setRect([Landroid/graphics/Point;)V

    return-object p1
.end method

.method public static convertChar(Lcom/samsung/android/ocr/MOCRResult$Char;Lcom/samsung/android/sdk/ocr/OCRResult$CharData;)Lcom/samsung/android/sdk/ocr/OCRResult$CharData;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/sdk/ocr/OCRResult$CharData;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$CharData;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$CharData;->clear()V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/ocr/MOCRResult$Char;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/ocr/OCRResult$CharData;->setText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/ocr/MOCRResult$Char;->cRect:[Landroid/graphics/Point;

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/ocr/OCRResult$CharData;->setRect([Landroid/graphics/Point;)V

    return-object p1
.end method

.method public static convertLine(Lcom/samsung/android/ocr/MOCRResult$Line;Lcom/samsung/android/sdk/ocr/OCRResult$LineData;)Lcom/samsung/android/sdk/ocr/OCRResult$LineData;
    .locals 5

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/sdk/ocr/OCRResult$LineData;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$LineData;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$LineData;->clear()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ocr/MOCRConverter;->convertWord(Lcom/samsung/android/ocr/MOCRResult$Word;Lcom/samsung/android/sdk/ocr/OCRResult$WordData;)Lcom/samsung/android/sdk/ocr/OCRResult$WordData;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/samsung/android/sdk/ocr/OCRResult$LineData;->add(Lcom/samsung/android/sdk/ocr/OCRResult$WordData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/ocr/MOCRResult$Line;->lRect:[Landroid/graphics/Point;

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/ocr/OCRResult$LineData;->setRect([Landroid/graphics/Point;)V

    return-object p1
.end method

.method public static convertPage(Lcom/samsung/android/ocr/MOCRResult$Page;Lcom/samsung/android/sdk/ocr/OCRResult;)Lcom/samsung/android/sdk/ocr/OCRResult;
    .locals 4

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/sdk/ocr/OCRResult;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ocr/OCRResult;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ocr/OCRResult;->clear()V

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/ocr/MOCRResult$Page;->blocks:[Lcom/samsung/android/ocr/MOCRResult$Block;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ocr/MOCRConverter;->convertBlock(Lcom/samsung/android/ocr/MOCRResult$Block;Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;)Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/ocr/OCRResult;->add(Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public static convertWord(Lcom/samsung/android/ocr/MOCRResult$Word;Lcom/samsung/android/sdk/ocr/OCRResult$WordData;)Lcom/samsung/android/sdk/ocr/OCRResult$WordData;
    .locals 5

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/sdk/ocr/OCRResult$WordData;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$WordData;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$WordData;->clear()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ocr/MOCRConverter;->convertChar(Lcom/samsung/android/ocr/MOCRResult$Char;Lcom/samsung/android/sdk/ocr/OCRResult$CharData;)Lcom/samsung/android/sdk/ocr/OCRResult$CharData;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/samsung/android/sdk/ocr/OCRResult$WordData;->add(Lcom/samsung/android/sdk/ocr/OCRResult$CharData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->wRect:[Landroid/graphics/Point;

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/ocr/OCRResult$WordData;->setRect([Landroid/graphics/Point;)V

    return-object p1
.end method
