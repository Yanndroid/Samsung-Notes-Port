.class public Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenPenImageView"

.field private static final colorMatrix:[F


# instance fields
.field private mPenName:Ljava/lang/String;

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;->colorMatrix:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getShadowBitmap(I)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;->getBitmapFromVectorDrawable(III)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;->getBitmapFromVectorDrawable(III)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;->getShadowBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;->overlayBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v1
.end method

.method private getShadowBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    invoke-static {v0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v1

    invoke-static {v0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->create(Landroid/renderscript/RenderScript;)Landroid/renderscript/ScriptIntrinsicColorMatrix;

    move-result-object v2

    invoke-static {v0, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v0

    new-instance v4, Landroid/renderscript/Matrix4f;

    sget-object v5, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;->colorMatrix:[F

    invoke-direct {v4, v5}, Landroid/renderscript/Matrix4f;-><init>([F)V

    invoke-virtual {v2, v4}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setColorMatrix(Landroid/renderscript/Matrix4f;)V

    invoke-virtual {v2, v3, v0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;->mShadowRadius:F

    invoke-virtual {v1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-virtual {v1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    invoke-virtual {v1, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    invoke-virtual {v3, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3}, Landroid/renderscript/Allocation;->destroy()V

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    return-object p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->mini_pen_setting_pen_item_elevation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v2, Lcom/samsung/android/spen/R$styleable;->SpenPenImageView:[I

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/samsung/android/spen/R$styleable;->SpenPenImageView_shadowRadius:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;->mShadowRadius:F

    sget p2, Lcom/samsung/android/spen/R$styleable;->SpenPenImageView_shadowDx:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;->mShadowDx:F

    sget p2, Lcom/samsung/android/spen/R$styleable;->SpenPenImageView_shadowDy:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;->mShadowDy:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;->mShadowRadius:F

    int-to-float p1, v0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;->mShadowDx:F

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;->mShadowDy:F

    :goto_0
    return-void
.end method

.method private overlayBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;->mShadowDx:F

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;->mShadowDy:F

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 p1, 0x0

    invoke-virtual {v1, p2, p1, p1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method


# virtual methods
.method public getBitmapFromVectorDrawable(III)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {v1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result p2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result p3

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;->mShadowRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    return-void
.end method

.method public setPenName(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenResource;->getPenResourceID(Ljava/lang/String;)I

    move-result v0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;->mPenName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;->mShadowRadius:F

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;->getShadowBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setShadowDx(F)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;->mShadowDx:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;->mShadowDx:F

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;->mPenName:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;->setPenName(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setShadowDy(F)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;->mShadowDy:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;->mShadowDy:F

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;->mPenName:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;->setPenName(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setShadowRadius(F)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;->mShadowRadius:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;->mShadowRadius:F

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;->mPenName:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;->setPenName(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
