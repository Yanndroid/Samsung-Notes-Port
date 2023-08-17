.class public Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/document/memoconverter/core/Html/ClickableSpanType;


# static fields
.field public static ALPHA_CHECKBOX:F = 0.0f

.field public static final ALPHA_CHECKED:F = 0.3f

.field public static final ALPHA_NONE:F = 1.0f

.field private static EXTRA_BOTTOM_MARGIN:I = 0x0

.field private static EXTRA_TOP_MARGIN:I = 0x0

.field public static final IMAGE_BOUND_PADDING_OFFSET:I = 0x1

.field private static IMAGE_MARGIN:I = 0x0

.field public static final MAX_IMAGE_ALPHA_VALUE:I = 0xff

.field public static MAX_WIDTH:I = 0x0

.field public static MAX_WIDTH_WITH_BIGGER_HEIGHT:I = 0x0

.field public static SCALE_CHECKBOX:F = 0.0f

.field public static final SCALE_CHECKED:F = 0.3f

.field public static final SCALE_NONE:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "HtmlImageSpan"

.field private static final mCacheSize:I

.field private static mImageNotFoundDrawable:Landroid/graphics/drawable/Drawable;

.field private static final mMaxMemory:I

.field private static mMemoryCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public static width:I


# instance fields
.field private mAltText:Ljava/lang/String;

.field private mContentUri:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mImageAlpha:F

.field private mImageScale:F

.field private mIsLoaded:Z

.field private mLeftBound:I

.field private mListener:Lcom/samsung/android/support/senl/document/memoconverter/core/Html/ClickableSpanType$OnClickListener;

.field private mOrientation:I

.field private mSpanEnd:I

.field private mSpanStart:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mMaxMemory:I

    div-int/lit8 v0, v0, 0x4

    sput v0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mCacheSize:I

    const/4 v1, 0x0

    sput v1, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->width:I

    new-instance v1, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan$1;

    invoke-direct {v1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan$1;-><init>(I)V

    sput-object v1, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mMemoryCache:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mImageScale:F

    iput v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mImageAlpha:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mListener:Lcom/samsung/android/support/senl/document/memoconverter/core/Html/ClickableSpanType$OnClickListener;

    const-string v0, "HtmlImageSpan"

    const-string v1, "HtmlImageSpan()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mContentUri:Landroid/net/Uri;

    iput p3, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mOrientation:I

    invoke-static {p4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mAltText:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "MAX_WIDTH="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->MAX_WIDTH:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mOrientation:I

    if-eqz p1, :cond_1

    const/16 p2, 0x5a

    if-eq p1, p2, :cond_1

    const/16 p2, 0xb4

    if-eq p1, p2, :cond_1

    const/16 p2, 0x10e

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "unable to proceed given orientaion: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;ILjava/lang/String;F)V
    .locals 2

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mImageScale:F

    iput v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mImageAlpha:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mListener:Lcom/samsung/android/support/senl/document/memoconverter/core/Html/ClickableSpanType$OnClickListener;

    const-string v0, "HtmlImageSpan"

    const-string v1, "HtmlImageSpan ()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mContentUri:Landroid/net/Uri;

    iput p3, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mOrientation:I

    invoke-static {p4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mAltText:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mImageScale:F

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mImageScale="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mImageScale:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "  MAX_WIDTH="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->MAX_WIDTH:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mOrientation:I

    if-eqz p1, :cond_1

    const/16 p2, 0x5a

    if-eq p1, p2, :cond_1

    const/16 p2, 0xb4

    if-eq p1, p2, :cond_1

    const/16 p2, 0x10e

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "unable to proceed given orientaion: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static addBitMapToCache(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 0

    if-eqz p2, :cond_1

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/ImageUtil;->isDrawingMemo(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->addBoundary(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_0
    sget-object p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mMemoryCache:Landroid/util/LruCache;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private static addBoundary(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x2

    int-to-float v2, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/2addr v4, v1

    int-to-float v1, v4

    invoke-direct {v0, v2, v2, v3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const-string v3, "#d4d4d4"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-object v1
.end method

.method public static flushCache()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mMemoryCache:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    :cond_0
    return-void
.end method

.method public static getBitMapFromCache(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mMemoryCache:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mIsLoaded:Z

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mContentUri:Landroid/net/Uri;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    sget-object v3, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mMemoryCache:Landroid/util/LruCache;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/high16 v3, 0x437f0000    # 255.0f

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v2, v5, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    iget v5, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mImageScale:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    sub-int/2addr v1, v4

    sput v1, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->width:I

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    iget v5, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mImageScale:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    sub-int/2addr v1, v4

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mImageScale:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int/2addr v5, v4

    invoke-virtual {v2, v0, v0, v1, v5}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    iget v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mImageAlpha:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    return-object v2

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "content"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "file"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    const-string v3, "http"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "https"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->getDrawableFromRemoteUri()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->getDrawableFromLocalUri()Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v2, v5, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mImageScale:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mImageScale:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v2, v0, v0, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mImageScale:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int/2addr v5, v4

    sput v5, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->width:I

    iget v5, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mImageAlpha:F

    mul-float/2addr v5, v3

    float-to-int v3, v5

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    :cond_5
    :goto_2
    if-eqz v2, :cond_6

    move v0, v4

    :cond_6
    iput-boolean v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mIsLoaded:Z

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    sget-object v0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mMemoryCache:Landroid/util/LruCache;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v3, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mIsLoaded:Z

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    sget-object v2, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mImageNotFoundDrawable:Landroid/graphics/drawable/Drawable;

    :goto_3
    return-object v2
.end method

.method private getDrawableFromLocalUri()Landroid/graphics/Bitmap;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDrawableFromLocalUri() uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HtmlImageSpan"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mContentUri:Landroid/net/Uri;

    iget v4, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mOrientation:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/support/senl/document/memoconverter/core/ImageUtil;->getActualImageWidth(Landroid/content/Context;Landroid/net/Uri;I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mContentUri:Landroid/net/Uri;

    iget v5, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mOrientation:I

    invoke-static {v3, v4, v5}, Lcom/samsung/android/support/senl/document/memoconverter/core/ImageUtil;->getActualImageHeight(Landroid/content/Context;Landroid/net/Uri;I)I

    move-result v3

    if-lt v2, v3, :cond_0

    sget v3, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->MAX_WIDTH:I

    goto :goto_0

    :cond_0
    sget v3, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->MAX_WIDTH_WITH_BIGGER_HEIGHT:I

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mContentUri:Landroid/net/Uri;

    iget v6, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mOrientation:I

    invoke-static {v4, v5, v2, v6, v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/ImageUtil;->decodeImageScaledIf(Landroid/content/Context;Landroid/net/Uri;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mContentUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/ImageUtil;->isDrawingMemo(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->addBoundary(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to loaded content "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-object v0
.end method

.method private getDrawableFromRemoteUri()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getMaxWidth()I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMaxWidth()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HtmlImageSpan"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->width:I

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/document/R$drawable;->composer_image_not_found:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/spr/drawable/Spr;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sput-object v0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mImageNotFoundDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->MAX_WIDTH_WITH_BIGGER_HEIGHT:I

    sput v0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->MAX_WIDTH:I

    sput v0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->width:I

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->SCALE_CHECKBOX:F

    sput v0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->ALPHA_CHECKBOX:F

    sput v3, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->IMAGE_MARGIN:I

    sput v3, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->EXTRA_TOP_MARGIN:I

    sput v3, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->EXTRA_BOTTOM_MARGIN:I

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sput p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->MAX_WIDTH_WITH_BIGGER_HEIGHT:I

    sput p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->MAX_WIDTH:I

    sput p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->width:I

    sput v0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->SCALE_CHECKBOX:F

    sput v0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->ALPHA_CHECKBOX:F

    sput v3, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->IMAGE_MARGIN:I

    sput v3, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->EXTRA_TOP_MARGIN:I

    sput v3, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->EXTRA_BOTTOM_MARGIN:I

    return-void
.end method

.method public static removeBitmapFromCache(Landroid/net/Uri;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mMemoryCache:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static trimMemory()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mMemoryCache:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    sget v1, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mCacheSize:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->trimToSize(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iput p3, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mSpanStart:I

    iput p4, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mSpanEnd:I

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p7, p3

    sget p3, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->EXTRA_TOP_MARGIN:I

    sub-int/2addr p7, p3

    sget p3, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->EXTRA_BOTTOM_MARGIN:I

    add-int/2addr p7, p3

    sget p3, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->IMAGE_MARGIN:I

    int-to-float p3, p3

    add-float/2addr p5, p3

    float-to-int p3, p5

    iput p3, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mLeftBound:I

    int-to-float p3, p3

    int-to-float p4, p7

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getLeftBound()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mLeftBound:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mOrientation:I

    return v0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mContext:Landroid/content/Context;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p5, :cond_1

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    neg-int p2, p2

    sget p3, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->EXTRA_TOP_MARGIN:I

    sub-int/2addr p2, p3

    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sget p3, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->EXTRA_BOTTOM_MARGIN:I

    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    :cond_1
    iget p1, p1, Landroid/graphics/Rect;->right:I

    sget p2, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->IMAGE_MARGIN:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    return p1
.end method

.method public getSpanEnd()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mSpanEnd:I

    return v0
.end method

.method public getSpanStart()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mSpanStart:I

    return v0
.end method

.method public isLoaded()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mIsLoaded:Z

    return v0
.end method

.method public onClick(Lcom/samsung/android/support/senl/document/memoconverter/core/Html/ClickableSpanType;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mListener:Lcom/samsung/android/support/senl/document/memoconverter/core/Html/ClickableSpanType$OnClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/ClickableSpanType$OnClickListener;->onClick(Lcom/samsung/android/support/senl/document/memoconverter/core/Html/ClickableSpanType;)V

    :cond_0
    return-void
.end method

.method public setAnimationValues(FF)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mImageScale:F

    iput p2, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mImageAlpha:F

    return-void
.end method

.method public setImageAlpha(F)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mImageAlpha"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HtmlImageSpan"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mImageAlpha:F

    return-void
.end method

.method public setOnClickListener(Lcom/samsung/android/support/senl/document/memoconverter/core/Html/ClickableSpanType$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mListener:Lcom/samsung/android/support/senl/document/memoconverter/core/Html/ClickableSpanType$OnClickListener;

    return-void
.end method

.method public toHtml()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<img src=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\" orientation=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\" altText=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mAltText:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toHtmlForCopy()Ljava/lang/String;
    .locals 3

    sget v0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->MAX_WIDTH:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<img src=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\" orientation=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\" altText=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->mAltText:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"   width=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\" />"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/Html/HtmlImageSpan;->toHtml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
