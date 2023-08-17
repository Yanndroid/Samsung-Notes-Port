.class public Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CONTROL_BITMAP_SIZE_DP:I = 0x19

.field private static final DEFAULT_BITMAP_SIZE:I = 0x64

.field private static final MAX_PEN_SIZE:I = 0x64

.field private static final NO_TINT_COLOR:I = -0x1

.field private static final PEN_BITMAP_PADDING_DP:I = 0x4

.field private static final PEN_BITMAP_SIZE_DP:I = 0x2a

.field private static final PEN_POINTER_SIZE:I = 0xc8

.field private static final SPOID_BITMAP_PADDING_RATIO:F = 0.123f

.field private static final SPOID_BITMAP_SIZE_DP:I = 0x18

.field private static final TAG:Ljava/lang/String; = "SpenToolTip"

.field private static final TIMESTAMP_GAP:I = 0x64


# instance fields
.field private final mChangeStyleIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/ChangeStyleIcon;

.field private final mConfiguration:Landroid/content/res/Configuration;

.field private mContext:Landroid/content/Context;

.field private final mControlIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/ControlIcon;

.field private final mCutterRemoverIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/CutterRemoverIcon;

.field private final mDensity:F

.field private final mEraserPenIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/EraserPenIcon;

.field private final mEraserRemoverIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/EraserRemoverIcon;

.field private mFillColorIcon:Landroid/graphics/drawable/Drawable;

.field private mIsEnabled:Z

.field private mPenBitmap:Landroid/graphics/Bitmap;

.field private mPenBitmapRef:Landroid/graphics/Bitmap;

.field private final mPenIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;

.field private mPenImageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mPenList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPenManager:Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

.field private mPenPaint:Landroid/graphics/Paint;

.field private mPoints:[Landroid/graphics/PointF;

.field private mPressures:[F

.field private mSdkResources:Landroid/content/res/Resources;

.field private final mSelectionIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/SelectionIcon;

.field private final mShapeIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/ShapeIcon;

.field private mSpoidIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenBitmapRef:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenImageMap:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mIsEnabled:Z

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mDensity:F

    new-instance v1, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenManager:Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    const/4 p1, 0x3

    new-array v1, p1, [Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPoints:[Landroid/graphics/PointF;

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPressures:[F

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPoints:[Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    const/high16 v2, 0x42480000    # 50.0f

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x0

    aput-object v1, p1, v2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPoints:[Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, p1, v0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPoints:[Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    const/high16 v4, 0x43160000    # 150.0f

    invoke-direct {v1, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x2

    aput-object v1, p1, v3

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPressures:[F

    const v1, 0x3f4ccccd    # 0.8f

    aput v1, p1, v2

    const v1, 0x3f19999a    # 0.6f

    aput v1, p1, v0

    const v0, 0x3ecccccd    # 0.4f

    aput v0, p1, v3

    new-instance p1, Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;

    new-instance p1, Lcom/samsung/android/sdk/pen/engine/pointericon/EraserPenIcon;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/engine/pointericon/EraserPenIcon;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mEraserPenIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/EraserPenIcon;

    new-instance p1, Lcom/samsung/android/sdk/pen/engine/pointericon/SelectionIcon;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/engine/pointericon/SelectionIcon;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mSelectionIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/SelectionIcon;

    new-instance p1, Lcom/samsung/android/sdk/pen/engine/pointericon/ChangeStyleIcon;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/engine/pointericon/ChangeStyleIcon;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mChangeStyleIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/ChangeStyleIcon;

    new-instance p1, Lcom/samsung/android/sdk/pen/engine/pointericon/EraserRemoverIcon;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/engine/pointericon/EraserRemoverIcon;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mEraserRemoverIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/EraserRemoverIcon;

    new-instance p1, Lcom/samsung/android/sdk/pen/engine/pointericon/CutterRemoverIcon;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/engine/pointericon/CutterRemoverIcon;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mCutterRemoverIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/CutterRemoverIcon;

    new-instance p1, Lcom/samsung/android/sdk/pen/engine/pointericon/ShapeIcon;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/engine/pointericon/ShapeIcon;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mShapeIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/ShapeIcon;

    new-instance p1, Lcom/samsung/android/sdk/pen/engine/pointericon/ControlIcon;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/engine/pointericon/ControlIcon;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mControlIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/ControlIcon;

    return-void
.end method

.method private getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawable"

    invoke-virtual {v0, p1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/util/SpenScreenCodecDecoder;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private getDrawableWithResize()Landroid/graphics/Bitmap;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "change_style_arrow"

    const-string v4, "drawable"

    invoke-virtual {v0, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mDensity:F

    const/high16 v3, 0x41b80000    # 23.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/16 v3, 0x46

    if-le v2, v3, :cond_2

    move v2, v3

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    invoke-direct {p0, v4, v0, v3, v3}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->resizeImage(Landroid/content/res/Resources;III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    return-object v1

    :cond_3
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v3, 0x64

    invoke-static {v3, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mDensity:F

    const/high16 v4, -0x40800000    # -1.0f

    mul-float/2addr v4, v3

    float-to-int v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    rsub-int/lit8 v6, v2, 0x64

    int-to-float v6, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    int-to-float v4, v4

    add-float/2addr v4, v6

    int-to-float v3, v3

    add-float/2addr v6, v3

    invoke-virtual {v5, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, v7, v7, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    return-object v1
.end method

.method private resizeImage(Landroid/content/res/Resources;III)Landroid/graphics/drawable/Drawable;
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/util/SpenScreenCodecDecoder;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float p2, p3

    int-to-float p3, v5

    div-float/2addr p2, p3

    int-to-float p3, p4

    int-to-float p4, v6

    div-float/2addr p3, p4

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v7, p2, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    new-instance p3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p3, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p3
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenBitmap:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenBitmapRef:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenBitmapRef:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenManager:Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenManager:Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/content/res/Resources;->flushLayoutCache()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPoints:[Landroid/graphics/PointF;

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPoints:[Landroid/graphics/PointF;

    :cond_5
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPressures:[F

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenImageMap:Ljava/util/HashMap;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenImageMap:Ljava/util/HashMap;

    :cond_6
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mContext:Landroid/content/Context;

    return-void
.end method

.method public getDrawableChangeStyleImage(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mChangeStyleIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/ChangeStyleIcon;

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/engine/pointericon/ChangeStyleIcon;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/pointericon/ChangeStyleIcon;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mChangeStyleIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/ChangeStyleIcon;

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/engine/pointericon/ChangeStyleIcon;->drawable:Landroid/graphics/drawable/Drawable;

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mChangeStyleIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/ChangeStyleIcon;

    iput p1, v0, Lcom/samsung/android/sdk/pen/engine/pointericon/ChangeStyleIcon;->color:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->getDrawableWithResize()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mChangeStyleIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/ChangeStyleIcon;

    iget v0, v0, Lcom/samsung/android/sdk/pen/engine/pointericon/ChangeStyleIcon;->color:I

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->getTintImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mChangeStyleIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/ChangeStyleIcon;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, v0, Lcom/samsung/android/sdk/pen/engine/pointericon/ChangeStyleIcon;->drawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getDrawableControlImage(Ljava/lang/String;FLandroid/graphics/Point;)Landroid/graphics/drawable/Drawable;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mControlIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/ControlIcon;

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/engine/pointericon/ControlIcon;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/pointericon/ControlIcon;->equals(Ljava/lang/String;F)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mControlIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/ControlIcon;

    iput-object p1, v0, Lcom/samsung/android/sdk/pen/engine/pointericon/ControlIcon;->drawableName:Ljava/lang/String;

    iput p2, v0, Lcom/samsung/android/sdk/pen/engine/pointericon/ControlIcon;->rotationDegree:F

    const/16 v3, 0x19

    const/16 v4, 0x19

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/engine/pointericon/ControlIcon;->hotSpot:Landroid/graphics/Point;

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->resizeImage(Ljava/lang/String;IIFLandroid/graphics/Point;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/sdk/pen/engine/pointericon/ControlIcon;->drawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mControlIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/ControlIcon;

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/engine/pointericon/ControlIcon;->hotSpot:Landroid/graphics/Point;

    iget p2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p3, p2, p1}, Landroid/graphics/Point;->set(II)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mControlIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/ControlIcon;

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/engine/pointericon/ControlIcon;->drawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public getDrawableCutterImage(FI)Landroid/graphics/drawable/Drawable;
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mCutterRemoverIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/CutterRemoverIcon;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/pointericon/CutterRemoverIcon;->equals(FI)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x258

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mDensity:F

    const/high16 v4, 0x3f800000    # 1.0f

    const v6, -0x686869

    move-object v2, v0

    move v5, p1

    move v7, p2

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/sdk/pen/engine/util/SpenEngineUtil;->drawRemoverPreview(Landroid/graphics/Bitmap;FFFII)Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mCutterRemoverIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/CutterRemoverIcon;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, v1, Lcom/samsung/android/sdk/pen/engine/pointericon/CutterRemoverIcon;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mCutterRemoverIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/CutterRemoverIcon;

    iput p2, v0, Lcom/samsung/android/sdk/pen/engine/pointericon/CutterRemoverIcon;->color:I

    iput p1, v0, Lcom/samsung/android/sdk/pen/engine/pointericon/CutterRemoverIcon;->radius:F

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mCutterRemoverIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/CutterRemoverIcon;

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/engine/pointericon/CutterRemoverIcon;->drawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public getDrawableEraserImage(F)Landroid/graphics/drawable/Drawable;
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mEraserPenIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/EraserPenIcon;

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/engine/pointericon/EraserPenIcon;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/pointericon/EraserPenIcon;->equals(F)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mEraserPenIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/EraserPenIcon;

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/engine/pointericon/EraserPenIcon;->drawable:Landroid/graphics/drawable/Drawable;

    return-object p1

    :cond_1
    const-string v0, "airview_pointer_eraser_50"

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v3, 0x64

    invoke-static {v3, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    instance-of v3, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_3

    move-object v3, v0

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_4

    return-object v1

    :cond_3
    move-object v3, v1

    :cond_4
    const/high16 v4, 0x42c80000    # 100.0f

    cmpl-float v5, p1, v4

    const/high16 v6, 0x41200000    # 10.0f

    if-lez v5, :cond_5

    move p1, v4

    goto :goto_1

    :cond_5
    cmpg-float v5, p1, v6

    if-gez v5, :cond_6

    move p1, v6

    :cond_6
    :goto_1
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    float-to-int v8, p1

    invoke-virtual {v6, v7, v7, v8, v8}, Landroid/graphics/Rect;->set(IIII)V

    instance-of v7, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v7, :cond_7

    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    sub-float/2addr v4, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v4, p1

    invoke-virtual {v5, v4, v4}, Landroid/graphics/Canvas;->translate(FF)V

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    :cond_7
    invoke-virtual {v5, v3, v1, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_2
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mEraserPenIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/EraserPenIcon;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p1, Lcom/samsung/android/sdk/pen/engine/pointericon/EraserPenIcon;->drawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getDrawableFillColorImage()Landroid/graphics/drawable/Drawable;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mFillColorIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    const/high16 v0, 0x41c00000    # 24.0f

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mDensity:F

    mul-float/2addr v2, v0

    const-string v0, "hover_fill_color"

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v3, 0x64

    invoke-static {v3, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    const/high16 v4, 0x42c80000    # 100.0f

    cmpl-float v6, v2, v4

    if-lez v6, :cond_2

    move v2, v4

    :cond_2
    float-to-int v6, v2

    invoke-virtual {v0, v5, v5, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sub-float/2addr v4, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v4, v2

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/16 v2, 0xcc

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mFillColorIcon:Landroid/graphics/drawable/Drawable;

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mFillColorIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDrawablePenImage(Ljava/lang/String;IFZFI)Landroid/graphics/drawable/Drawable;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.android.sdk.pen.pen.preload.Eraser"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p3}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->getDrawableEraserImage(F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;->equals(Ljava/lang/String;IFZFI)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "SpenToolTip"

    const-string p2, "getDrawablePenImage return cache bitmap drawble"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;->drawable:Landroid/graphics/drawable/Drawable;

    return-object p1

    :cond_2
    const/16 v0, 0x4bb

    if-ne p6, v0, :cond_3

    invoke-virtual/range {p0 .. p5}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->getDrawablePenImageStyleCurver(Ljava/lang/String;IFZF)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual/range {p0 .. p5}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->getDrawablePenImageStyleLine(Ljava/lang/String;IFZF)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDrawablePenImageStyleCurver(Ljava/lang/String;IFZF)Landroid/graphics/drawable/Drawable;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenManager:Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->createPreviewPen(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, "SpenToolTip"

    const-string p2, "Fail - loadPlugin"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/lit8 v3, v2, 0x2a

    div-int/lit16 v3, v3, 0xa0

    mul-int/lit8 v2, v2, 0x4

    div-int/lit16 v2, v2, 0xa0

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v2, 0x4

    sub-int/2addr v3, v4

    int-to-float v4, v3

    const v5, 0x3f99999a    # 1.2f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenBitmapRef:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenBitmap:Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenBitmapRef:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;

    iput-object p1, v3, Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;->name:Ljava/lang/String;

    iput p2, v3, Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;->color:I

    iput p3, v3, Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;->size:F

    iput-boolean p4, v3, Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;->isFixedWidth:Z

    iput p5, v3, Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;->particleSize:F

    const/16 v5, 0x4bb

    iput v5, v3, Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;->style:I

    const/high16 v3, 0x43200000    # 160.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    div-float/2addr v3, v0

    mul-float/2addr p3, v3

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->getMinSettingValue()F

    move-result v0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->getMaxSettingValue()F

    move-result v1

    cmpg-float v3, p3, v0

    const/16 v5, 0x64

    const/4 v6, 0x1

    if-gtz v3, :cond_2

    :goto_0
    move v5, v6

    goto :goto_1

    :cond_2
    cmpl-float v3, p3, v1

    if-ltz v3, :cond_3

    goto :goto_1

    :cond_3
    sub-float/2addr p3, v0

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr p3, v3

    sub-float/2addr v1, v0

    div-float/2addr p3, v1

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    if-ge p3, v6, :cond_4

    goto :goto_0

    :cond_4
    if-le p3, v5, :cond_5

    goto :goto_1

    :cond_5
    move v5, p3

    :goto_1
    iget-object p3, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p3

    if-ne p3, v6, :cond_6

    move p3, v6

    goto :goto_2

    :cond_6
    move p3, v4

    :goto_2
    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;-><init>()V

    iput-object p1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iput p2, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iput v5, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    iput p5, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleSize:F

    iput-boolean p4, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isFixedWidth:Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1, p2, v0, p3, v6}, Lcom/samsung/android/sdk/pen/pen/SpenPenUtil;->drawPenPreview(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;ZZ)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x3f000000    # 0.5f

    mul-float/2addr p2, p3

    float-to-int p2, p2

    iget-object p4, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    int-to-float p4, p4

    mul-float/2addr p4, p3

    float-to-int p3, p4

    invoke-static {p1, p2, p3, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance p2, Landroid/graphics/Canvas;

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p2, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    int-to-float p4, v2

    invoke-virtual {p2, p1, p4, p4, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;

    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    iget-object p4, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p2, p3, p4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object p2, p1, Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;->drawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;->drawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public getDrawablePenImageStyleLine(Ljava/lang/String;IFZF)Landroid/graphics/drawable/Drawable;
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    iget-object v6, v1, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenList:Ljava/util/List;

    const/4 v7, 0x0

    if-nez v6, :cond_0

    iget-object v6, v1, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenManager:Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->getPenInfoList()Ljava/util/List;

    move-result-object v6

    iput-object v6, v1, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenList:Ljava/util/List;

    if-nez v6, :cond_0

    return-object v7

    :cond_0
    const-string v6, "SpenToolTip"

    const-string v8, "getDrawablePenImage return new bitmap drawble"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v1, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;

    iput-object v0, v6, Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;->name:Ljava/lang/String;

    iput v2, v6, Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;->color:I

    iput v3, v6, Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;->size:F

    iput-boolean v4, v6, Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;->isFixedWidth:Z

    iput v5, v6, Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;->particleSize:F

    const/16 v8, 0x4ba

    iput v8, v6, Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;->style:I

    const/4 v6, 0x0

    move v8, v6

    :goto_0
    iget-object v9, v1, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_9

    iget-object v9, v1, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;

    iget-object v10, v9, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;->className:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_a

    iget-object v0, v1, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenBitmapRef:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v0, v1, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenBitmap:Landroid/graphics/Bitmap;

    iput-object v0, v1, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenBitmapRef:Landroid/graphics/Bitmap;

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v8, 0xc8

    invoke-static {v8, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v8, Landroid/graphics/Canvas;

    iget-object v10, v1, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v8, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v6, v10}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :try_start_0
    iget-object v10, v1, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenManager:Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    invoke-virtual {v10, v9}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->createPreviewPen(Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;)Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object v10

    iget-object v11, v9, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;->className:Ljava/lang/String;

    const-string v12, "com.samsung.android.sdk.pen.pen.preload.MagicPen"

    invoke-virtual {v11, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_4

    const-string/jumbo v4, "snote_popup_pensetting_preview_alpha"

    invoke-direct {v1, v4}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    iget v5, v1, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mDensity:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v9

    const/high16 v9, 0x433e0000    # 190.0f

    const/16 v11, 0xbe

    if-nez v5, :cond_2

    const/16 v5, 0x3c

    add-float/2addr v3, v9

    float-to-int v3, v3

    invoke-virtual {v0, v6, v11, v5, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_2
    const/16 v5, 0x64

    add-float/2addr v3, v9

    float-to-int v3, v3

    invoke-virtual {v0, v6, v11, v5, v3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    iget-object v3, v1, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenPaint:Landroid/graphics/Paint;

    shr-int/lit8 v2, v2, 0x18

    const/16 v5, 0xff

    and-int/2addr v2, v5

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v7, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_3
    iget-object v0, v1, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, v1, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v0}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_6

    :cond_4
    iget-object v0, v1, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v0}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v10, v2}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setColor(I)V

    invoke-virtual {v10, v4}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setFixedWidthEnabled(Z)V

    invoke-virtual {v10, v5}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setParticleSize(F)V

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v2, v3, v0

    if-lez v2, :cond_5

    goto :goto_2

    :cond_5
    move v0, v3

    :goto_2
    iget-object v2, v9, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;->className:Ljava/lang/String;

    const-string v3, "com.samsung.android.sdk.pen.pen.preload.Marker"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v9, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;->className:Ljava/lang/String;

    const-string v3, "com.samsung.android.sdk.pen.pen.preload.BrushPen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v9, Lcom/samsung/android/sdk/pen/pen/SpenPenInfo;->className:Ljava/lang/String;

    const-string v3, "com.samsung.android.sdk.pen.pen.preload.ObliquePen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v10, v0}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setSize(F)V

    invoke-virtual {v10, v0}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setFixedWidth(F)V

    goto :goto_4

    :cond_7
    :goto_3
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    invoke-virtual {v10, v2}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setSize(F)V

    invoke-virtual {v10, v2}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setFixedWidth(F)V

    :goto_4
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v15, 0x0

    iget-object v5, v1, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPoints:[Landroid/graphics/PointF;

    aget-object v8, v5, v6

    iget v8, v8, Landroid/graphics/PointF;->x:F

    aget-object v5, v5, v6

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v9, v1, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPressures:[F

    aget v18, v9, v6

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-wide v11, v3

    move-wide v13, v3

    move/from16 v16, v8

    move/from16 v17, v5

    move/from16 v19, v0

    invoke-static/range {v11 .. v24}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v5

    invoke-virtual {v10, v5, v2}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->draw(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V

    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    const/16 v5, 0xa

    iget-object v8, v1, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPoints:[Landroid/graphics/PointF;

    const/4 v9, 0x2

    aget-object v11, v8, v9

    iget v11, v11, Landroid/graphics/PointF;->x:F

    aget-object v12, v8, v6

    iget v12, v12, Landroid/graphics/PointF;->x:F

    sub-float/2addr v11, v12

    const/16 v12, 0xb

    int-to-float v12, v12

    div-float v25, v11, v12

    aget-object v11, v8, v9

    iget v11, v11, Landroid/graphics/PointF;->y:F

    aget-object v8, v8, v6

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v11, v8

    div-float v8, v11, v12

    iget-object v11, v1, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPressures:[F

    aget v13, v11, v9

    aget v11, v11, v9

    sub-float/2addr v13, v11

    div-float v26, v13, v12

    const-wide/16 v11, 0x64

    add-long/2addr v11, v3

    const/4 v13, 0x1

    move v15, v13

    :goto_5
    if-gt v15, v5, :cond_8

    const-wide/16 v13, 0x5

    add-long v27, v11, v13

    const/16 v16, 0x2

    iget-object v11, v1, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPoints:[Landroid/graphics/PointF;

    aget-object v12, v11, v6

    iget v12, v12, Landroid/graphics/PointF;->x:F

    int-to-float v13, v15

    mul-float v14, v25, v13

    add-float v17, v12, v14

    aget-object v11, v11, v6

    iget v11, v11, Landroid/graphics/PointF;->y:F

    mul-float v12, v8, v13

    add-float v18, v11, v12

    iget-object v11, v1, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPressures:[F

    aget v11, v11, v6

    mul-float v13, v13, v26

    add-float v19, v11, v13

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-wide v11, v3

    move-wide/from16 v13, v27

    move/from16 v29, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v0

    invoke-static/range {v11 .. v24}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v11

    invoke-virtual {v10, v11, v2}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->draw(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V

    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    add-int/lit8 v15, v29, 0x1

    move-wide/from16 v11, v27

    goto :goto_5

    :cond_8
    const-wide/16 v5, 0x2bc

    add-long v13, v3, v5

    const/4 v15, 0x1

    iget-object v5, v1, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPoints:[Landroid/graphics/PointF;

    aget-object v6, v5, v9

    iget v6, v6, Landroid/graphics/PointF;->x:F

    aget-object v5, v5, v9

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v8, v1, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPressures:[F

    aget v18, v8, v9

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-wide v11, v3

    move/from16 v16, v6

    move/from16 v17, v5

    move/from16 v19, v0

    invoke-static/range {v11 .. v24}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v10, v0, v2}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->draw(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :goto_6
    invoke-virtual {v10, v7}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, v1, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenManager:Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    invoke-virtual {v0, v10}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->destroyPreviewPen(Lcom/samsung/android/sdk/pen/pen/SpenPen;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    iget-object v0, v1, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, v1, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    iget-object v4, v1, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, v0, Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;->drawable:Landroid/graphics/drawable/Drawable;

    :cond_9
    iget-object v0, v1, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mPenIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0
.end method

.method public getDrawableRemoverImage()Landroid/graphics/drawable/Drawable;
    .locals 12

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->isDarkMode()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mEraserRemoverIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/EraserRemoverIcon;

    iget-object v2, v1, Lcom/samsung/android/sdk/pen/engine/pointericon/EraserRemoverIcon;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/engine/pointericon/EraserRemoverIcon;->equals(Z)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    const/high16 v1, 0x41c00000    # 24.0f

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mDensity:F

    mul-float/2addr v3, v1

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    const v4, -0x30304

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    const-string v5, "hover_eraser"

    invoke-direct {p0, v5}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_3

    return-object v2

    :cond_3
    const-string v6, "hover_eraser_color"

    invoke-direct {p0, v6}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_4

    return-object v2

    :cond_4
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v8, 0x64

    invoke-static {v8, v8, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v9}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    const/high16 v9, 0x42c80000    # 100.0f

    cmpl-float v11, v3, v9

    if-lez v11, :cond_5

    move v3, v9

    :cond_5
    float-to-int v11, v3

    invoke-virtual {v5, v10, v10, v11, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v6, v10, v10, v11, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sub-float/2addr v9, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v9, v3

    invoke-virtual {v8, v9, v9}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eq v4, v1, :cond_6

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {v5, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :goto_1
    const/16 v1, 0xcc

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mEraserRemoverIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/EraserRemoverIcon;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    invoke-direct {v2, v3, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, v1, Lcom/samsung/android/sdk/pen/engine/pointericon/EraserRemoverIcon;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mEraserRemoverIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/EraserRemoverIcon;

    iput-boolean v0, v1, Lcom/samsung/android/sdk/pen/engine/pointericon/EraserRemoverIcon;->isDarkMode:Z

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mEraserRemoverIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/EraserRemoverIcon;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/pointericon/EraserRemoverIcon;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDrawableSelectionImage(I)Landroid/graphics/drawable/Drawable;
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->isDarkMode()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mSelectionIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/SelectionIcon;

    iget-object v2, v1, Lcom/samsung/android/sdk/pen/engine/pointericon/SelectionIcon;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/sdk/pen/engine/pointericon/SelectionIcon;->equals(ZI)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mSelectionIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/SelectionIcon;

    iput p1, v1, Lcom/samsung/android/sdk/pen/engine/pointericon/SelectionIcon;->type:I

    iput-boolean v0, v1, Lcom/samsung/android/sdk/pen/engine/pointericon/SelectionIcon;->isDarkMode:Z

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    const v2, -0x30304

    :cond_1
    const v0, 0x3f4ccccd    # 0.8f

    const/high16 v3, 0x41c00000    # 24.0f

    if-nez p1, :cond_2

    iget p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mDensity:F

    mul-float/2addr p1, v3

    const-string v3, "hover_selection_lasso"

    :goto_0
    invoke-virtual {p0, v3, p1, v0, v2}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->getDrawableVectorImageWithResize(Ljava/lang/String;FFI)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v1, Lcom/samsung/android/sdk/pen/engine/pointericon/SelectionIcon;->drawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    if-ne p1, v4, :cond_3

    iget p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mDensity:F

    mul-float/2addr p1, v3

    const-string v3, "hover_selection_rectangle"

    goto :goto_0

    :cond_3
    const/4 v4, 0x2

    if-ne p1, v4, :cond_4

    iget p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mDensity:F

    mul-float/2addr p1, v3

    const-string v3, "hover_selection_circle"

    goto :goto_0

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mSelectionIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/SelectionIcon;

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/engine/pointericon/SelectionIcon;->drawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public getDrawableShapeImage()Landroid/graphics/drawable/Drawable;
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->isDarkMode()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mShapeIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/ShapeIcon;

    iget-object v2, v1, Lcom/samsung/android/sdk/pen/engine/pointericon/ShapeIcon;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/engine/pointericon/ShapeIcon;->equals(Z)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, -0x1

    if-eqz v0, :cond_1

    const v1, -0x30304

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mShapeIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/ShapeIcon;

    const/high16 v3, 0x41c00000    # 24.0f

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mDensity:F

    mul-float/2addr v4, v3

    const v3, 0x3f4ccccd    # 0.8f

    const-string v5, "hover_shape"

    invoke-virtual {p0, v5, v4, v3, v1}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->getDrawableVectorImageWithResize(Ljava/lang/String;FFI)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v2, Lcom/samsung/android/sdk/pen/engine/pointericon/ShapeIcon;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mShapeIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/ShapeIcon;

    iput-boolean v0, v1, Lcom/samsung/android/sdk/pen/engine/pointericon/ShapeIcon;->isDarkMode:Z

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mShapeIcon:Lcom/samsung/android/sdk/pen/engine/pointericon/ShapeIcon;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/pointericon/ShapeIcon;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDrawableSpoidImage()Landroid/graphics/drawable/Drawable;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mSpoidIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    const-string v0, "ic_spoid"

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v2, 0x64

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mDensity:F

    const/high16 v6, 0x41c00000    # 24.0f

    mul-float/2addr v4, v6

    float-to-int v4, v4

    if-le v4, v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    invoke-virtual {v0, v5, v5, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mSpoidIcon:Landroid/graphics/drawable/Drawable;

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mSpoidIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDrawableVectorImageWithResize(Ljava/lang/String;FFI)Landroid/graphics/drawable/Drawable;
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v2, 0x64

    invoke-static {v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    const/high16 v3, 0x42c80000    # 100.0f

    cmpl-float v5, p2, v3

    if-lez v5, :cond_2

    move p2, v3

    :cond_2
    float-to-int v5, p2

    invoke-virtual {p1, v4, v4, v5, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sub-float/2addr v3, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v3, p2

    invoke-virtual {v2, v3, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 p2, -0x1

    if-eq p4, p2, :cond_3

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    const/high16 p2, 0x437f0000    # 255.0f

    mul-float/2addr p3, p2

    float-to-int p2, p3

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    invoke-direct {p1, p2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method public getHoveringIconDefaultPoint()Landroid/graphics/Point;
    .locals 2

    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0x32

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getHoveringIconSpoidPoint()Landroid/graphics/Point;
    .locals 3

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mDensity:F

    const/high16 v1, 0x41c00000    # 24.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    move v0, v1

    :cond_0
    const v1, 0x3dfbe76d    # 0.123f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    new-instance v2, Landroid/graphics/Point;

    float-to-int v0, v0

    sub-int/2addr v0, v1

    invoke-direct {v2, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method public getHoveringPenIconPoint(Ljava/lang/String;I)Landroid/graphics/Point;
    .locals 3

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const/16 v1, 0x32

    if-eqz p1, :cond_3

    const-string v2, "com.samsung.android.sdk.pen.pen.preload.Eraser"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x4bb

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/lit8 p2, p1, 0x2a

    div-int/lit16 p2, p2, 0xa0

    mul-int/lit8 p1, p1, 0x4

    div-int/lit16 p1, p1, 0xa0

    mul-int/lit8 p2, p2, 0x2

    mul-int/lit8 v1, p1, 0x4

    sub-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p2, p1

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    goto :goto_1

    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-le p1, p2, :cond_2

    const/16 p1, 0x64

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Point;->set(II)V

    goto :goto_1

    :cond_2
    const/16 p1, 0x1e

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    :goto_1
    return-object v0
.end method

.method public getTintImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p2, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object p2
.end method

.method public isDarkMode()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mIsEnabled:Z

    return v0
.end method

.method public resizeImage(Ljava/lang/String;IIFLandroid/graphics/Point;)Landroid/graphics/drawable/Drawable;
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    if-ltz p2, :cond_3

    if-gez p3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v2, "drawable"

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    int-to-float p2, p2

    const/4 v4, 0x1

    invoke-static {v4, p2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    int-to-float p3, p3

    invoke-static {v4, p3, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    invoke-static {v4, p2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    div-int/lit8 v3, p2, 0x2

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p5, v3, p2}, Landroid/graphics/Point;->set(II)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sget-object p5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, p3, p5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p5

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, p5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v4, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    int-to-float v7, p3

    div-float/2addr v7, v6

    invoke-virtual {v3, p4, v4, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    new-instance p4, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {p4, v4, v4, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v4, v4, v5, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, p1, p4, v0, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mSdkResources:Landroid/content/res/Resources;

    invoke-direct {p1, p2, p5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-object v1

    :cond_3
    :goto_0
    const/4 p1, 0x7

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    return-object v1
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/SpenToolTip;->mIsEnabled:Z

    return-void
.end method
