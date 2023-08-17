.class public Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final GRID_VIEW_HW_MIN_RATIO:F = 0.56f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private mFirstBitmap:Landroid/graphics/Bitmap;

.field private mNeedBackground:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mSecondBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "HandWritingBitmap"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mFirstBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mSecondBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mNeedBackground:Z

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mAppContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method private adjustThumbnail(Landroid/graphics/RectF;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 6

    iget v0, p1, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v1, p3

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    div-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    add-int/2addr p3, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    sget-object p1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "adjustThumbnail, jump to next thumbnail, next i: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    iget p3, p1, Landroid/graphics/RectF;->bottom:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p3, p1

    float-to-int p1, p3

    add-int/2addr p1, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    const/4 v1, 0x0

    if-ge p1, p3, :cond_1

    if-gt p1, v0, :cond_2

    :cond_1
    move p1, v1

    :cond_2
    if-lez v0, :cond_4

    if-lez p1, :cond_3

    sub-int p3, p1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_4
    if-lez p1, :cond_5

    move p3, p1

    move v0, v1

    goto :goto_0

    :cond_5
    move p3, v1

    move v0, p3

    :goto_0
    sget-object v3, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjustThumbnail, top: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", bottom: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", cropHeight: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mNeedBackground: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mNeedBackground:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p3, :cond_8

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {p2, v1, v0, v3, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p3

    if-eqz p3, :cond_8

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mFirstBitmap:Landroid/graphics/Bitmap;

    if-nez p2, :cond_7

    if-nez p1, :cond_7

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    if-ge p1, p2, :cond_7

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mFirstBitmap:Landroid/graphics/Bitmap;

    return-object v2

    :cond_7
    move-object p2, p3

    :cond_8
    return-object p2
.end method

.method private createBitmapFromThumbnailPath(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    const-string v0, ".spi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mNeedBackground:Z

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/ImageUtils;->decodeSpi(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createBitmapFromThumbnailPath, decodeSpi : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, ".jpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public static createResultBitmap(Landroid/content/Context;Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;Ljava/util/List;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->getResultBitmap(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Z
    .locals 4

    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {p2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mFirstBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    if-nez p2, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->TAG:Ljava/lang/String;

    const-string p2, "drawBitmap, newBitmap is null"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    sget-object p2, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawBitmap, newBitmap width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/app/notes/data/R$color;->composer_main_background:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return v0

    :cond_1
    sget-object p1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drawBitmap, objectRect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private eraseBackgroundColor(Landroid/graphics/Bitmap;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/app/notes/data/R$color;->background_color_black:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    if-ne p2, v0, :cond_0

    const-string p2, "#333333"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    :cond_0
    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    return-void
.end method

.method private getDoublePageBitmap(I)Landroid/graphics/Bitmap;
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mFirstBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mSecondBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mSecondBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mNeedBackground:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v2, p1}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->eraseBackgroundColor(Landroid/graphics/Bitmap;I)V

    :cond_0
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mFirstBitmap:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v4, v6, v6, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mSecondBitmap:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mSecondBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mSecondBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v3, v6, v6, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    add-int/2addr v9, v1

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v2

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mSecondBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method

.method private getObjectRectTop(ILjava/lang/String;)F
    .locals 5

    const-string v0, "fail to close doc : "

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mAppContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, p2, p1, v4}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/DocumentConstructor;->makeSpenNoteDoc(Landroid/content/Context;Ljava/lang/String;II)Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->getPage(I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getDrawnRectOfAllObject()Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->top:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->close(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    sget-object v1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    :try_start_2
    sget-object p1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->TAG:Ljava/lang/String;

    const-string p2, "getObjectRectTop, fail to setup notedoc"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->close(Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    sget-object p2, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1

    :goto_2
    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->close(Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p2

    sget-object v1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_3
    throw p1
.end method

.method private getSinglePageBitmap(I)Landroid/graphics/Bitmap;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mFirstBitmap:Landroid/graphics/Bitmap;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mNeedBackground:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const v2, 0x3f0f5c29    # 0.56f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->eraseBackgroundColor(Landroid/graphics/Bitmap;I)V

    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mFirstBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mFirstBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method private setThumbnailBitmap(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_6

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v4, "getThumbnailBitmap, thumbnail path is empty, continue, i: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    invoke-direct {p0, v4}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->createBitmapFromThumbnailPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->getObjectRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_3

    :cond_1
    if-nez v3, :cond_2

    iget v6, v5, Landroid/graphics/RectF;->top:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    move v6, v2

    :goto_1
    if-eqz v6, :cond_3

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->getAttachedFile()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->getObjectRectTop(ILjava/lang/String;)F

    move-result v6

    iput v6, v5, Landroid/graphics/RectF;->top:F

    :cond_3
    invoke-direct {p0, v5, v4, v3}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->adjustThumbnail(Landroid/graphics/RectF;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mFirstBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_5

    iput-object v4, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mFirstBitmap:Landroid/graphics/Bitmap;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    iput-object v4, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mSecondBitmap:Landroid/graphics/Bitmap;

    :cond_6
    :goto_3
    sget-object p1, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getResultBitmap(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;Ljava/util/List;)Landroid/graphics/Bitmap;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->setThumbnailBitmap(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;Ljava/util/List;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mFirstBitmap:Landroid/graphics/Bitmap;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->mSecondBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting;->getBackgroundColor()I

    move-result p1

    if-nez p2, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->getSinglePageBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/legacy/HandWritingBitmap;->getDoublePageBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
