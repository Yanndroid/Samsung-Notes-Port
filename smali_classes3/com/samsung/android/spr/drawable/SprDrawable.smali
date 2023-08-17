.class public Lcom/samsung/android/spr/drawable/SprDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/spr/drawable/SprDrawable$SprState;
    }
.end annotation


# static fields
.field private static final MAX_CACHED_BITMAP_SIZE:I = 0x800

.field private static final NA_NAME:Ljava/lang/String; = "n/a"

.field private static final TILE_MODE_CLAMP:I = 0x0

.field private static final TILE_MODE_MIRROR:I = 0x2

.field private static final TILE_MODE_REPEAT:I = 0x1

.field private static final mCanApplyTheme:Ljava/lang/reflect/Method;

.field private static final mExtractThemeAttrs:Ljava/lang/reflect/Method;

.field private static final mGetLayoutDirection:Ljava/lang/reflect/Method;

.field private static final mParseTintMode:Ljava/lang/reflect/Method;

.field private static final mResolveAttributes:Ljava/lang/reflect/Method;

.field private static final mUpdateTintFilter:Ljava/lang/reflect/Method;

.field private static final mVersion:I = 0x24def


# instance fields
.field private mAnimationBitmap:Landroid/graphics/Bitmap;

.field private mCacheBitmap:Landroid/graphics/Bitmap;

.field private mCacheDensityDpi:I

.field public mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

.field private mDstRect:Landroid/graphics/Rect;

.field private mIdentityMatrix:Landroid/graphics/Matrix;

.field private mMirrorMatrix:Landroid/graphics/Matrix;

.field private mMutated:Z

.field private mSprAnimation:Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;

.field private mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field private final mTmpFloats:[F

.field private final mTmpMatrix:Landroid/graphics/Matrix;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const-class v0, [I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    const-class v4, Landroid/graphics/drawable/Drawable;

    const-string/jumbo v5, "updateTintFilter"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/graphics/PorterDuffColorFilter;

    aput-object v7, v6, v3

    const-class v7, Landroid/content/res/ColorStateList;

    aput-object v7, v6, v2

    const-class v7, Landroid/graphics/PorterDuff$Mode;

    aput-object v7, v6, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v4, 0x0

    :goto_0
    sput-object v4, Lcom/samsung/android/spr/drawable/SprDrawable;->mUpdateTintFilter:Ljava/lang/reflect/Method;

    :try_start_1
    const-class v5, Landroid/graphics/drawable/Drawable;

    const-string v6, "parseTintMode"

    new-array v7, v1, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    const-class v8, Landroid/graphics/PorterDuff$Mode;

    aput-object v8, v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    sput-object v4, Lcom/samsung/android/spr/drawable/SprDrawable;->mParseTintMode:Ljava/lang/reflect/Method;

    :try_start_2
    const-class v5, Landroid/graphics/drawable/Drawable;

    const-string v6, "getLayoutDirection"

    new-array v7, v3, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    sput-object v4, Lcom/samsung/android/spr/drawable/SprDrawable;->mGetLayoutDirection:Ljava/lang/reflect/Method;

    :try_start_3
    const-class v5, Landroid/content/res/TypedArray;

    const-string v6, "extractThemeAttrs"

    new-array v7, v3, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    sput-object v4, Lcom/samsung/android/spr/drawable/SprDrawable;->mExtractThemeAttrs:Ljava/lang/reflect/Method;

    :try_start_4
    const-class v5, Landroid/content/res/Resources$Theme;

    const-string v6, "resolveAttributes"

    new-array v1, v1, [Ljava/lang/Class;

    aput-object v0, v1, v3

    aput-object v0, v1, v2

    invoke-virtual {v5, v6, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    sput-object v4, Lcom/samsung/android/spr/drawable/SprDrawable;->mResolveAttributes:Ljava/lang/reflect/Method;

    :try_start_5
    const-class v0, Landroid/content/res/ColorStateList;

    const-string v1, "canApplyTheme"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    sput-object v4, Lcom/samsung/android/spr/drawable/SprDrawable;->mCanApplyTheme:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mMutated:Z

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    iput v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheDensityDpi:I

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mSprAnimation:Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mAnimationBitmap:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDstRect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mIdentityMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTmpMatrix:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTmpFloats:[F

    new-instance v0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    invoke-direct {v0, v1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;-><init>(Lcom/samsung/android/spr/drawable/document/SprDocument;)V

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;Landroid/content/res/Resources;)V
    .locals 5

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mMutated:Z

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    iput v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheDensityDpi:I

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mSprAnimation:Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mAnimationBitmap:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDstRect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mIdentityMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTmpMatrix:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTmpFloats:[F

    iput-object p1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {p1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$000(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Lcom/samsung/android/spr/drawable/document/SprDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-virtual {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->getDensityScale()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v1, v1, Lcom/samsung/android/spr/drawable/document/SprDocument;->mLeft:F

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v2, v2, Lcom/samsung/android/spr/drawable/document/SprDocument;->mTop:F

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v3, v3, Lcom/samsung/android/spr/drawable/document/SprDocument;->mRight:F

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v4, v4, Lcom/samsung/android/spr/drawable/document/SprDocument;->mBottom:F

    mul-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-super {p0, v1, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {p1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$100(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$200(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/spr/drawable/SprDrawable;->updateTintFilterInternal(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0, p2}, Lcom/samsung/android/spr/drawable/SprDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/spr/drawable/document/SprDocument;)V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mMutated:Z

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    iput v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheDensityDpi:I

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mSprAnimation:Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mAnimationBitmap:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDstRect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mIdentityMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTmpMatrix:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTmpFloats:[F

    new-instance v0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-direct {v0, p1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;-><init>(Lcom/samsung/android/spr/drawable/document/SprDocument;)V

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$000(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Lcom/samsung/android/spr/drawable/document/SprDocument;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->getDensityScale()F

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v0, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mLeft:F

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v1, v1, Lcom/samsung/android/spr/drawable/document/SprDocument;->mTop:F

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v2, v2, Lcom/samsung/android/spr/drawable/document/SprDocument;->mRight:F

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v3, v3, Lcom/samsung/android/spr/drawable/document/SprDocument;->mBottom:F

    mul-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-super {p0, v0, v1, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public static synthetic access$1700(Landroid/content/res/Resources;)I
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->getDeviceDensityDpi(Landroid/content/res/Resources;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1800()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCanApplyTheme:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static createFromPathName(Ljava/lang/String;)Lcom/samsung/android/spr/drawable/SprDrawable;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p0, v1}, Lcom/samsung/android/spr/drawable/SprDrawable;->createFromStreamInternal(Ljava/lang/String;Ljava/io/InputStream;)Lcom/samsung/android/spr/drawable/document/SprDocument;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    new-instance v2, Lcom/samsung/android/spr/drawable/SprDrawable;

    invoke-direct {v2, v0}, Lcom/samsung/android/spr/drawable/SprDrawable;-><init>(Lcom/samsung/android/spr/drawable/document/SprDocument;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->getErrorDrawable(Ljava/lang/String;)Lcom/samsung/android/spr/drawable/SprDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static createFromResourceStream(Landroid/content/res/Resources;I)Lcom/samsung/android/spr/drawable/SprDrawable;
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/spr/drawable/SprDrawable;->createFromStreamInternal(Ljava/lang/String;Ljava/io/InputStream;)Lcom/samsung/android/spr/drawable/document/SprDocument;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    new-instance v2, Lcom/samsung/android/spr/drawable/SprDrawable;

    invoke-direct {v2, v1}, Lcom/samsung/android/spr/drawable/SprDrawable;-><init>(Lcom/samsung/android/spr/drawable/document/SprDocument;)V

    invoke-direct {v2, p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->updateLocalState(Landroid/content/res/Resources;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->getErrorDrawable(Ljava/lang/String;)Lcom/samsung/android/spr/drawable/SprDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static createFromStream(Ljava/io/InputStream;)Lcom/samsung/android/spr/drawable/SprDrawable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "n/a"

    invoke-static {v0, p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->createFromStream(Ljava/lang/String;Ljava/io/InputStream;)Lcom/samsung/android/spr/drawable/SprDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static createFromStream(Ljava/lang/String;Ljava/io/InputStream;)Lcom/samsung/android/spr/drawable/SprDrawable;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/spr/drawable/SprDrawable;->createFromStream(Ljava/lang/String;Ljava/io/InputStream;Landroid/content/res/Resources;)Lcom/samsung/android/spr/drawable/SprDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static createFromStream(Ljava/lang/String;Ljava/io/InputStream;Landroid/content/res/Resources;)Lcom/samsung/android/spr/drawable/SprDrawable;
    .locals 1

    :try_start_0
    new-instance v0, Lcom/samsung/android/spr/drawable/SprDrawable;

    invoke-static {p0, p1}, Lcom/samsung/android/spr/drawable/SprDrawable;->createFromStreamInternal(Ljava/lang/String;Ljava/io/InputStream;)Lcom/samsung/android/spr/drawable/document/SprDocument;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/spr/drawable/SprDrawable;-><init>(Lcom/samsung/android/spr/drawable/document/SprDocument;)V

    if-eqz p2, :cond_0

    invoke-direct {v0, p2}, Lcom/samsung/android/spr/drawable/SprDrawable;->updateLocalState(Landroid/content/res/Resources;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->getErrorDrawable(Ljava/lang/String;)Lcom/samsung/android/spr/drawable/SprDrawable;

    move-result-object p0

    return-object p0
.end method

.method private static createFromStreamInternal(Ljava/lang/String;Ljava/io/InputStream;)Lcom/samsung/android/spr/drawable/document/SprDocument;
    .locals 7

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x3

    new-array v1, p1, [B

    if-nez p0, :cond_0

    const-string p0, "n/a"

    :cond_0
    invoke-virtual {v0, p1}, Ljava/io/BufferedInputStream;->mark(I)V

    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    if-lt v2, p1, :cond_4

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    const/4 p1, 0x0

    aget-byte v2, v1, p1

    const/4 v3, 0x2

    const/16 v4, 0x53

    const/4 v5, 0x1

    if-ne v2, v4, :cond_1

    aget-byte v2, v1, v5

    const/16 v6, 0x56

    if-ne v2, v6, :cond_1

    aget-byte v2, v1, v3

    const/16 v6, 0x46

    if-eq v2, v6, :cond_2

    :cond_1
    aget-byte p1, v1, p1

    if-ne p1, v4, :cond_3

    aget-byte p1, v1, v5

    const/16 v2, 0x50

    if-ne p1, v2, :cond_3

    aget-byte p1, v1, v3

    const/16 v1, 0x52

    if-ne p1, v1, :cond_3

    :cond_2
    new-instance p1, Lcom/samsung/android/spr/drawable/document/SprDocument;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/spr/drawable/document/SprDocument;-><init>(Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object p1

    invoke-virtual {p1, v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/spr/drawable/document/SprDocument;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/spr/drawable/document/SprDocument;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    :goto_0
    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    new-instance p0, Ljava/io/IOException;

    const-string p1, "file is too short"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getDeviceDensityDpi(Landroid/content/res/Resources;)I
    .locals 0

    if-nez p0, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    return p0
.end method

.method private static getErrorDrawable(Ljava/lang/String;)Lcom/samsung/android/spr/drawable/SprDrawable;
    .locals 16

    new-instance v6, Lcom/samsung/android/spr/drawable/document/SprDocument;

    const/16 v0, 0x15e

    int-to-float v7, v0

    const/16 v0, 0x113

    int-to-float v8, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    move v4, v7

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/spr/drawable/document/SprDocument;-><init>(Ljava/lang/String;FFFF)V

    new-instance v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;

    const/16 v1, 0x32

    int-to-float v1, v1

    const/16 v2, 0xc8

    int-to-float v3, v2

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v1, v3}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    new-instance v5, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;

    const/16 v9, 0xff

    invoke-static {v9, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    const/4 v11, 0x1

    invoke-direct {v5, v11, v10}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;-><init>(BI)V

    invoke-virtual {v0, v5}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->appendAttribute(Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;)V

    invoke-virtual {v6, v0}, Lcom/samsung/android/spr/drawable/document/SprDocument;->appendObject(Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)V

    new-instance v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;

    const/16 v5, 0x64

    int-to-float v5, v5

    invoke-direct {v0, v1, v4, v5, v3}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    new-instance v10, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;

    const/16 v12, -0x100

    invoke-direct {v10, v11, v12}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;-><init>(BI)V

    invoke-virtual {v0, v10}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->appendAttribute(Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;)V

    invoke-virtual {v6, v0}, Lcom/samsung/android/spr/drawable/document/SprDocument;->appendObject(Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)V

    new-instance v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;

    const/16 v10, 0x96

    int-to-float v10, v10

    invoke-direct {v0, v5, v4, v10, v3}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    new-instance v12, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;

    const/4 v13, 0x0

    invoke-static {v9, v13, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v14

    invoke-direct {v12, v11, v14}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;-><init>(BI)V

    invoke-virtual {v0, v12}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->appendAttribute(Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;)V

    invoke-virtual {v6, v0}, Lcom/samsung/android/spr/drawable/document/SprDocument;->appendObject(Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)V

    new-instance v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;

    invoke-direct {v0, v10, v4, v3, v3}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    new-instance v12, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;

    invoke-static {v9, v13, v9, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v14

    invoke-direct {v12, v11, v14}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;-><init>(BI)V

    invoke-virtual {v0, v12}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->appendAttribute(Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;)V

    invoke-virtual {v6, v0}, Lcom/samsung/android/spr/drawable/document/SprDocument;->appendObject(Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)V

    new-instance v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;

    const/16 v12, 0xfa

    int-to-float v12, v12

    invoke-direct {v0, v3, v4, v12, v3}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    new-instance v14, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;

    invoke-static {v9, v9, v13, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v15

    invoke-direct {v14, v11, v15}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;-><init>(BI)V

    invoke-virtual {v0, v14}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->appendAttribute(Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;)V

    invoke-virtual {v6, v0}, Lcom/samsung/android/spr/drawable/document/SprDocument;->appendObject(Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)V

    new-instance v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;

    const/16 v14, 0x12c

    int-to-float v14, v14

    invoke-direct {v0, v12, v4, v14, v3}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    new-instance v15, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;

    invoke-static {v9, v9, v13, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-direct {v15, v11, v2}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;-><init>(BI)V

    invoke-virtual {v0, v15}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->appendAttribute(Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;)V

    invoke-virtual {v6, v0}, Lcom/samsung/android/spr/drawable/document/SprDocument;->appendObject(Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)V

    new-instance v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;

    invoke-direct {v0, v14, v4, v7, v3}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    new-instance v2, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;

    invoke-static {v9, v13, v13, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v15

    invoke-direct {v2, v11, v15}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;-><init>(BI)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->appendAttribute(Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;)V

    invoke-virtual {v6, v0}, Lcom/samsung/android/spr/drawable/document/SprDocument;->appendObject(Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)V

    new-instance v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;

    const/16 v2, 0xe1

    int-to-float v2, v2

    invoke-direct {v0, v4, v3, v1, v2}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    new-instance v15, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;

    invoke-static {v9, v13, v13, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-direct {v15, v11, v4}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;-><init>(BI)V

    invoke-virtual {v0, v15}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->appendAttribute(Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;)V

    invoke-virtual {v6, v0}, Lcom/samsung/android/spr/drawable/document/SprDocument;->appendObject(Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)V

    new-instance v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;

    invoke-direct {v0, v1, v3, v5, v2}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    new-instance v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;

    invoke-static {v9, v13, v13, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-direct {v1, v11, v4}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;-><init>(BI)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->appendAttribute(Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;)V

    invoke-virtual {v6, v0}, Lcom/samsung/android/spr/drawable/document/SprDocument;->appendObject(Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)V

    new-instance v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;

    invoke-direct {v0, v5, v3, v10, v2}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    new-instance v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;

    invoke-static {v9, v9, v13, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-direct {v1, v11, v4}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;-><init>(BI)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->appendAttribute(Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;)V

    invoke-virtual {v6, v0}, Lcom/samsung/android/spr/drawable/document/SprDocument;->appendObject(Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)V

    new-instance v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;

    invoke-direct {v0, v10, v3, v3, v2}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    new-instance v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;

    invoke-static {v9, v13, v13, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-direct {v1, v11, v4}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;-><init>(BI)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->appendAttribute(Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;)V

    invoke-virtual {v6, v0}, Lcom/samsung/android/spr/drawable/document/SprDocument;->appendObject(Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)V

    new-instance v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;

    invoke-direct {v0, v3, v3, v12, v2}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    new-instance v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;

    invoke-static {v9, v13, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-direct {v1, v11, v4}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;-><init>(BI)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->appendAttribute(Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;)V

    invoke-virtual {v6, v0}, Lcom/samsung/android/spr/drawable/document/SprDocument;->appendObject(Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)V

    new-instance v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;

    invoke-direct {v0, v12, v3, v14, v2}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    new-instance v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;

    invoke-static {v9, v13, v13, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-direct {v1, v11, v4}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;-><init>(BI)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->appendAttribute(Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;)V

    invoke-virtual {v6, v0}, Lcom/samsung/android/spr/drawable/document/SprDocument;->appendObject(Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)V

    new-instance v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;

    invoke-direct {v0, v14, v3, v7, v2}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    new-instance v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;

    const/16 v3, 0xc8

    invoke-static {v9, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-direct {v1, v11, v3}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;-><init>(BI)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->appendAttribute(Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;)V

    invoke-virtual {v6, v0}, Lcom/samsung/android/spr/drawable/document/SprDocument;->appendObject(Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)V

    new-instance v0, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v7, v8}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    new-instance v3, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprLinearGradient;

    invoke-direct {v3}, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprLinearGradient;-><init>()V

    iput-byte v11, v3, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprGradientBase;->spreadMode:B

    iput v1, v3, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprLinearGradient;->x1:F

    iput v2, v3, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprLinearGradient;->y1:F

    iput v7, v3, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprLinearGradient;->x2:F

    iput v2, v3, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprLinearGradient;->y2:F

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    iput-object v2, v3, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprGradientBase;->colors:[I

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    iput-object v1, v3, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprGradientBase;->positions:[F

    invoke-virtual {v3}, Lcom/samsung/android/spr/drawable/document/attribute/impl/SprLinearGradient;->updateGradient()V

    new-instance v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;-><init>(BLcom/samsung/android/spr/drawable/document/attribute/impl/SprGradientBase;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->appendAttribute(Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;)V

    invoke-virtual {v6, v0}, Lcom/samsung/android/spr/drawable/document/SprDocument;->appendObject(Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;)V

    new-instance v0, Lcom/samsung/android/spr/drawable/SprDrawable$1;

    invoke-direct {v0, v6}, Lcom/samsung/android/spr/drawable/SprDrawable$1;-><init>(Lcom/samsung/android/spr/drawable/document/SprDocument;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1000000
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static getVersion()I
    .locals 1

    const v0, 0x24def

    return v0
.end method

.method private needMirroring()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/samsung/android/spr/drawable/SprDrawable;->mGetLayoutDirection:Ljava/lang/reflect/Method;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->isAutoMirrored()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    if-ne v1, v3, :cond_0

    move v0, v3

    :catch_0
    :cond_0
    return v0
.end method

.method private static parseTileMode(I)Landroid/graphics/Shader$TileMode;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    return-object p0

    :cond_1
    sget-object p0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    return-object p0

    :cond_2
    sget-object p0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    return-object p0
.end method

.method public static sprObtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p2, p3, p0, p0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method private updateCachedBitmap(III)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheDensityDpi:I

    if-eq v0, p3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$300(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Lcom/samsung/android/spr/drawable/cache/SprCacheManager;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcom/samsung/android/spr/drawable/cache/SprCacheManager;->unlock(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    iput v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheDensityDpi:I

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$300(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Lcom/samsung/android/spr/drawable/cache/SprCacheManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/spr/drawable/cache/SprCacheManager;->getCache(III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheDensityDpi:I

    if-nez v0, :cond_6

    iget-object p3, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    monitor-enter p3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    invoke-virtual {v0}, Lcom/samsung/android/spr/drawable/document/SprDocument;->isPredraw()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    invoke-virtual {v0, v1}, Lcom/samsung/android/spr/drawable/document/SprDocument;->preDraw(I)V

    :cond_4
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    new-instance v2, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1000(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)I

    move-result v6

    move v3, p1

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/spr/drawable/document/SprDocument;->draw(Landroid/graphics/Canvas;IIII)V

    iget-object p1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {p1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$300(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Lcom/samsung/android/spr/drawable/cache/SprCacheManager;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheDensityDpi:I

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/spr/drawable/cache/SprCacheManager;->addCache(Landroid/graphics/Bitmap;I)V

    :cond_5
    monitor-exit p3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {p1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$300(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Lcom/samsung/android/spr/drawable/cache/SprCacheManager;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Lcom/samsung/android/spr/drawable/cache/SprCacheManager;->lock(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private updateDensity(Landroid/content/res/Resources;)V
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/spr/drawable/SprDrawable;->getDeviceDensityDpi(Landroid/content/res/Resources;)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1000(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)I

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v0, p1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1002(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;I)I

    iget-object p1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {p1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$300(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Lcom/samsung/android/spr/drawable/cache/SprCacheManager;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Lcom/samsung/android/spr/drawable/cache/SprCacheManager;->unlock(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheDensityDpi:I

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {p1, v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$802(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;Landroid/graphics/NinePatch;)Landroid/graphics/NinePatch;

    iget-object p1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {p1, v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1602(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method private updateDstRectAndInsetsIfDirty()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$400(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Shader$TileMode;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$500(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Shader$TileMode;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    sget-object v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mGetLayoutDirection:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1200(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->getIntrinsicHeight()I

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-static/range {v1 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    :catch_0
    :goto_0
    return-void
.end method

.method private updateLocalState(Landroid/content/res/Resources;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$100(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/spr/drawable/SprDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/spr/drawable/SprDrawable;->updateDensity(Landroid/content/res/Resources;)V

    iget-object p1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->getDensityScale()F

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v0, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mLeft:F

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v1, v1, Lcom/samsung/android/spr/drawable/document/SprDocument;->mTop:F

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v2, v2, Lcom/samsung/android/spr/drawable/document/SprDocument;->mRight:F

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v3, v3, Lcom/samsung/android/spr/drawable/document/SprDocument;->mBottom:F

    mul-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-super {p0, v0, v1, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 7

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1300(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)I

    move-result v2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1302(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;I)I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Lcom/samsung/android/spr/drawable/SprDrawable;->mExtractThemeAttrs:Ljava/lang/reflect/Method;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    invoke-static {v1, v4}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1402(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;[I)[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {v1, v2}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1402(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;[I)[I

    :goto_0
    sget v1, Lcom/samsung/android/spr/engine/R$styleable;->SprDrawable_src:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    iget-object v5, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/samsung/android/spr/drawable/SprDrawable;->createFromStreamInternal(Ljava/lang/String;Ljava/io/InputStream;)Lcom/samsung/android/spr/drawable/document/SprDocument;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->setDocument(Lcom/samsung/android/spr/drawable/document/SprDocument;)V

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$000(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Lcom/samsung/android/spr/drawable/document/SprDocument;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v2, v4

    goto :goto_1

    :catch_2
    move-exception p1

    :goto_1
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_2
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_3
    sget v1, Lcom/samsung/android/spr/engine/R$styleable;->SprDrawable_tintMode:I

    const/4 v4, -0x1

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-eq v1, v4, :cond_2

    :try_start_4
    iget-object v4, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    sget-object v5, Lcom/samsung/android/spr/drawable/SprDrawable;->mParseTintMode:Ljava/lang/reflect/Method;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v3

    const/4 v1, 0x1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    aput-object v3, v6, v1

    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PorterDuff$Mode;

    invoke-static {v4, v1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$202(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$202(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    :cond_2
    :goto_4
    sget v1, Lcom/samsung/android/spr/engine/R$styleable;->SprDrawable_tint:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v2, v1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$102(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    sget v2, Lcom/samsung/android/spr/engine/R$styleable;->SprDrawable_gravity:I

    const/16 v3, 0x77

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1202(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;I)I

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    sget v2, Lcom/samsung/android/spr/engine/R$styleable;->SprDrawable_autoMirrored:I

    iget-object v3, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v3}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1500(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1502(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;Z)Z

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$600(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Paint;

    move-result-object v1

    sget v2, Lcom/samsung/android/spr/engine/R$styleable;->SprDrawable_alpha:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    sget v1, Lcom/samsung/android/spr/engine/R$styleable;->SprDrawable_tileMode:I

    const/4 v2, -0x2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-eq v1, v2, :cond_4

    invoke-static {v1}, Lcom/samsung/android/spr/drawable/SprDrawable;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v1

    invoke-virtual {p0, v1, v1}, Lcom/samsung/android/spr/drawable/SprDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    :cond_4
    sget v1, Lcom/samsung/android/spr/engine/R$styleable;->SprDrawable_tileModeX:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-eq v1, v2, :cond_5

    invoke-static {v1}, Lcom/samsung/android/spr/drawable/SprDrawable;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/spr/drawable/SprDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    :cond_5
    sget v1, Lcom/samsung/android/spr/engine/R$styleable;->SprDrawable_tileModeY:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    if-eq p1, v2, :cond_6

    invoke-static {p1}, Lcom/samsung/android/spr/drawable/SprDrawable;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/spr/drawable/SprDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    :cond_6
    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/SprDrawable;->updateDensity(Landroid/content/res/Resources;)V

    return-void
.end method

.method private updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p2, p1, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1400(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)[I

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/samsung/android/spr/drawable/SprDrawable;->mResolveAttributes:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1400(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)[I

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    sget-object v4, Lcom/samsung/android/spr/engine/R$styleable;->SprDrawable:[I

    aput-object v4, v3, v0

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/TypedArray;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/SprDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v1, v0

    goto :goto_2

    :catch_0
    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v1, v0

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_2
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    :catch_3
    move-exception p1

    :goto_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    throw p1

    :cond_2
    :goto_3
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/spr/drawable/SprDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_1c

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_1c

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    if-nez v0, :cond_0

    goto/16 :goto_b

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$400(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Shader$TileMode;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$500(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Shader$TileMode;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTmpFloats:[F

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTmpFloats:[F

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v4, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTmpFloats:[F

    const/4 v5, 0x4

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTmpFloats:[F

    aget v6, v5, v1

    cmpl-float v6, v6, v2

    if-nez v6, :cond_1

    const/4 v6, 0x3

    aget v5, v5, v6

    cmpl-float v5, v5, v2

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v0, v5

    iget-object v5, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    float-to-int v4, v5

    const/16 v5, 0x800

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v4, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v4, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->getIntrinsicHeight()I

    move-result v4

    :goto_0
    move v7, v0

    move v8, v4

    if-lez v7, :cond_1c

    if-gtz v8, :cond_4

    goto/16 :goto_b

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->isRunning()Z

    move-result v0

    iget-object v4, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v4}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$600(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Paint;

    move-result-object v4

    iget-object v11, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    monitor-enter v11

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v5}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$700(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v5}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$800(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/NinePatch;

    move-result-object v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v5}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$900(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)V

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_8

    iget-object v5, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mSprAnimation:Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;

    invoke-virtual {v5}, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;->getAnimationIndex()I

    move-result v9

    iget-object v12, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    monitor-enter v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    invoke-virtual {v5, v9}, Lcom/samsung/android/spr/drawable/document/SprDocument;->preDraw(I)V

    iget-object v5, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mAnimationBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v5, v7, :cond_7

    iget-object v5, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mAnimationBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-eq v5, v8, :cond_6

    goto :goto_1

    :cond_6
    new-instance v5, Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mAnimationBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v3, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    :cond_7
    :goto_1
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mAnimationBitmap:Landroid/graphics/Bitmap;

    new-instance v5, Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mAnimationBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    :goto_2
    move-object v6, v5

    iget-object v5, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget-object v10, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v10}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1000(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)I

    move-result v10

    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/spr/drawable/document/SprDocument;->draw(Landroid/graphics/Canvas;IIII)V

    monitor-exit v12

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_8
    iget-object v5, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v5}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1000(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)I

    move-result v5

    invoke-direct {p0, v7, v8, v5}, Lcom/samsung/android/spr/drawable/SprDrawable;->updateCachedBitmap(III)V

    :cond_9
    :goto_3
    iget-object v5, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v5}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1100(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_a

    if-eqz v0, :cond_f

    :cond_a
    iget-object v5, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v5}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$400(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Shader$TileMode;

    move-result-object v5

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v5}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$500(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Shader$TileMode;

    move-result-object v5

    if-nez v5, :cond_b

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_5

    :cond_b
    iget-object v5, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v5}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$400(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Shader$TileMode;

    move-result-object v5

    iget-object v7, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v7}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$500(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Shader$TileMode;

    move-result-object v7

    new-instance v8, Landroid/graphics/BitmapShader;

    iget-object v9, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mAnimationBitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_c

    goto :goto_4

    :cond_c
    iget-object v9, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    :goto_4
    if-nez v5, :cond_d

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    :cond_d
    if-nez v7, :cond_e

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    :cond_e
    invoke-direct {v8, v9, v5, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_5
    iget-object v5, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v5, v3}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1102(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;Z)Z

    :cond_f
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v5, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v5, :cond_10

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v5

    if-nez v5, :cond_10

    iget-object v3, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_6

    :cond_10
    move v1, v3

    :goto_6
    invoke-virtual {v4}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v3

    invoke-direct {p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->needMirroring()Z

    move-result v5

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, -0x40800000    # -1.0f

    if-nez v3, :cond_15

    iget-object v3, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v3}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$700(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$800(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/NinePatch;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$800(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/NinePatch;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v2, v4}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_a

    :cond_11
    if-eqz v5, :cond_12

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v3, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDstRect:Landroid/graphics/Rect;

    iget v9, v3, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v3

    int-to-float v3, v9

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v8, v7}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_12
    iget-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mAnimationBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_13

    goto :goto_7

    :cond_13
    iget-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    :goto_7
    iget-object v3, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v6, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mSprAnimation:Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;

    invoke-virtual {v0}, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;->update()V

    :cond_14
    if-eqz v5, :cond_1a

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_a

    :cond_15
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    if-eqz v5, :cond_17

    if-nez v0, :cond_16

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    :cond_16
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDstRect:Landroid/graphics/Rect;

    iget v9, v5, Landroid/graphics/Rect;->right:I

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v5

    int-to-float v5, v9

    invoke-virtual {v0, v5, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v8, v7}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    :goto_8
    invoke-virtual {v3, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_9

    :cond_17
    if-eqz v0, :cond_19

    iput-object v6, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mIdentityMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_18

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mIdentityMatrix:Landroid/graphics/Matrix;

    :cond_18
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mIdentityMatrix:Landroid/graphics/Matrix;

    goto :goto_8

    :cond_19
    :goto_9
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_1a
    :goto_a
    if-eqz v1, :cond_1b

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_1b
    return-void

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_1c
    :goto_b
    return-void
.end method

.method public finalize()V
    .locals 3

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->stop()V

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$300(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Lcom/samsung/android/spr/drawable/cache/SprCacheManager;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcom/samsung/android/spr/drawable/cache/SprCacheManager;->unlock(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheDensityDpi:I

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mSprAnimation:Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mAnimationBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDstRect:Landroid/graphics/Rect;

    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$600(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v2}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1000(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/spr/drawable/SprDrawable;->updateCachedBitmap(III)V

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$600(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1300(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1302(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;I)I

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    return-object v0
.end method

.method public getDocument()Lcom/samsung/android/spr/drawable/document/SprDocument;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    return-object v0
.end method

.method public getGravity()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1200(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-virtual {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-virtual {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1200(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)I

    move-result v0

    const/4 v1, -0x3

    const/16 v2, 0x77

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$600(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    const/16 v2, 0xff

    if-ge v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-virtual {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->getDensityScale()F

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v2, v2, Lcom/samsung/android/spr/drawable/document/SprDocument;->mPaddingLeft:F

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v3, v3, Lcom/samsung/android/spr/drawable/document/SprDocument;->mPaddingTop:F

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v4, v4, Lcom/samsung/android/spr/drawable/document/SprDocument;->mPaddingRight:F

    mul-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v5, v5, Lcom/samsung/android/spr/drawable/document/SprDocument;->mPaddingBottom:F

    mul-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v0, p1, Lcom/samsung/android/spr/drawable/document/SprDocument;->mPaddingLeft:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/samsung/android/spr/drawable/document/SprDocument;->mPaddingTop:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/samsung/android/spr/drawable/document/SprDocument;->mPaddingRight:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    iget p1, p1, Lcom/samsung/android/spr/drawable/document/SprDocument;->mPaddingBottom:F

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getTileModeX()Landroid/graphics/Shader$TileMode;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$400(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Shader$TileMode;

    move-result-object v0

    return-object v0
.end method

.method public getTileModeY()Landroid/graphics/Shader$TileMode;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$500(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Shader$TileMode;

    move-result-object v0

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/spr/drawable/SprDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    sget-object p2, Lcom/samsung/android/spr/engine/R$styleable;->SprDrawable:[I

    invoke-static {p1, p4, p3, p2}, Lcom/samsung/android/spr/drawable/SprDrawable;->sprObtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/samsung/android/spr/drawable/SprDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0, p1}, Lcom/samsung/android/spr/drawable/SprDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1500(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mSprAnimation:Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$100(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$100(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    new-instance v0, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-direct {v0, v1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;-><init>(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)V

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mMutated:Z

    :cond_0
    return-object p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->updateDstRectAndInsetsIfDirty()V

    return-void
.end method

.method public onStateChange([I)Z
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {p1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$100(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$200(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {p1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$100(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$200(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/spr/drawable/SprDrawable;->updateTintFilterInternal(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$600(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$600(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1500(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v0, p1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1502(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;Z)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$600(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1200(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v0, p1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1202(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;I)I

    invoke-direct {p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->updateDstRectAndInsetsIfDirty()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setTileModeX(Landroid/graphics/Shader$TileMode;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$500(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Shader$TileMode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/spr/drawable/SprDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    return-void
.end method

.method public setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$400(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Shader$TileMode;

    move-result-object v1

    if-ne v1, p1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$500(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Shader$TileMode;

    move-result-object v1

    if-eq v1, p2, :cond_1

    :cond_0
    invoke-static {v0, p1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$402(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;Landroid/graphics/Shader$TileMode;)Landroid/graphics/Shader$TileMode;

    invoke-static {v0, p2}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$502(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;Landroid/graphics/Shader$TileMode;)Landroid/graphics/Shader$TileMode;

    const/4 p1, 0x1

    invoke-static {v0, p1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$1102(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;Z)Z

    invoke-direct {p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->updateDstRectAndInsetsIfDirty()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public final setTileModeY(Landroid/graphics/Shader$TileMode;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$400(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/Shader$TileMode;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/spr/drawable/SprDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v0, p1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$102(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    iget-object p1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$100(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$200(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/spr/drawable/SprDrawable;->updateTintFilterInternal(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mState:Lcom/samsung/android/spr/drawable/SprDrawable$SprState;

    invoke-static {v0, p1}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$202(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    iget-object p1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$100(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0}, Lcom/samsung/android/spr/drawable/SprDrawable$SprState;->access$200(Lcom/samsung/android/spr/drawable/SprDrawable$SprState;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/spr/drawable/SprDrawable;->updateTintFilterInternal(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public start()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/SprDrawable;->stop()V

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/spr/drawable/document/SprDocument;->getFrameAnimationCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    new-instance v0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationFrame;

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationFrame;-><init>(Landroid/graphics/drawable/Drawable;Lcom/samsung/android/spr/drawable/document/SprDocument;)V

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mSprAnimation:Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    invoke-virtual {v0}, Lcom/samsung/android/spr/drawable/document/SprDocument;->getValueAnimationObjects()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    invoke-virtual {v0}, Lcom/samsung/android/spr/drawable/document/SprDocument;->isIntrinsic()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    invoke-virtual {v0}, Lcom/samsung/android/spr/drawable/document/SprDocument;->clone()Lcom/samsung/android/spr/drawable/document/SprDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :goto_1
    new-instance v0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue;

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue;-><init>(Landroid/graphics/drawable/Drawable;Lcom/samsung/android/spr/drawable/document/SprDocument;)V

    goto :goto_0

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mSprAnimation:Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;->start()V

    :cond_4
    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mSprAnimation:Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mSprAnimation:Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;

    :cond_0
    return-void
.end method

.method public toSPR(Ljava/io/OutputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/spr/drawable/document/SprDocument;->toSPR(Ljava/io/OutputStream;)Z

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    if-nez v0, :cond_0

    const-string v0, "SprDocument is null"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v1, v1, Lcom/samsung/android/spr/drawable/document/SprDocument;->mLeft:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v2, v2, Lcom/samsung/android/spr/drawable/document/SprDocument;->mTop:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v2, v2, Lcom/samsung/android/spr/drawable/document/SprDocument;->mRight:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v1, v1, Lcom/samsung/android/spr/drawable/document/SprDocument;->mBottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\nLoading:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprDocument;->getLoadingTime()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "ms\nElement:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprDocument;->getTotalElementCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nSegment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprDocument;->getTotalSegmentCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nAttribute:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/SprDrawable;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    invoke-virtual {v1}, Lcom/samsung/android/spr/drawable/document/SprDocument;->getTotalAttributeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateTintFilterInternal(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 5

    sget-object v0, Lcom/samsung/android/spr/drawable/SprDrawable;->mUpdateTintFilter:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/spr/drawable/SprDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v3, 0x3

    const/4 v4, 0x0

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object p2, v3, v2

    const/4 p1, 0x2

    aput-object p3, v3, p1

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PorterDuffColorFilter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    :catch_0
    sget-object p1, Lcom/samsung/android/spr/drawable/SprDrawable;->mUpdateTintFilter:Ljava/lang/reflect/Method;

    invoke-virtual {p1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-object v1
.end method
