.class public Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LetterTileProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SPDToSDocXConverter$LetterTileProvider"


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private final mCanvas:Landroid/graphics/Canvas;

.field private final mFirstChar:[C

.field private final mPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LetterTileProvider;->mPaint:Landroid/text/TextPaint;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LetterTileProvider;->mBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LetterTileProvider;->mCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x1

    new-array v2, v1, [C

    iput-object v2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LetterTileProvider;->mFirstChar:[C

    const-string v2, "sans-serif-light"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    return-void
.end method

.method private static isEnglishLetterOrDigit(C)Z
    .locals 1

    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x30

    if-gt v0, p0, :cond_3

    const/16 v0, 0x39

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getLetterTile(CII)Landroid/graphics/Bitmap;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLetterTile, displayChar: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", color: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPDToSDocXConverter$LetterTileProvider"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LetterTileProvider;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, p3}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LetterTileProvider;->isEnglishLetterOrDigit(C)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LetterTileProvider;->mFirstChar:[C

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    const/4 v2, 0x0

    aput-char p1, p3, v2

    iget-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LetterTileProvider;->mPaint:Landroid/text/TextPaint;

    int-to-float p2, p2

    const p3, 0x3f333333    # 0.7f

    mul-float/2addr p3, p2

    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LetterTileProvider;->mPaint:Landroid/text/TextPaint;

    iget-object p3, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LetterTileProvider;->mFirstChar:[C

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LetterTileProvider;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p3, v2, v3, v4}, Landroid/text/TextPaint;->getTextBounds([CIILandroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LetterTileProvider;->mFirstChar:[C

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 p1, 0x40000000    # 2.0f

    div-float v5, p2, p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LetterTileProvider;->mBounds:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, p2

    int-to-float p2, p3

    div-float/2addr p2, p1

    add-float v6, v5, p2

    iget-object v7, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/LetterTileProvider;->mPaint:Landroid/text/TextPaint;

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    :cond_0
    return-object v0
.end method
