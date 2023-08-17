.class public Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayoutInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenPenOpacityLayout"


# instance fields
.field private mAdaptiveBackgroundColor:I

.field private mColor:I

.field private mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayoutInterface$OnDataChangedListener;

.field private mEndThumbColor:I

.field private mSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->initView(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->initView(Landroid/content/Context;IZ)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->getPercentToAlpha(I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->mColor:I

    return p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->setCurrentAlpha(II)I

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->updateColor(I)V

    return-void
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayoutInterface$OnDataChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayoutInterface$OnDataChangedListener;

    return-object p0
.end method

.method private getAlphaToPercent(I)I
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private getPercentToAlpha(I)I
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private initView(Landroid/content/Context;IZ)V
    .locals 9

    if-nez p3, :cond_1

    if-nez p2, :cond_0

    new-instance v7, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x64

    sget v5, Lcom/samsung/android/spen/R$string;->pen_string_opacity_decrease:I

    sget v6, Lcom/samsung/android/spen/R$string;->pen_string_opacity_increase:I

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;-><init>(Landroid/content/Context;ZIIII)V

    goto :goto_0

    :cond_0
    new-instance v8, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x64

    sget v6, Lcom/samsung/android/spen/R$string;->pen_string_opacity_decrease:I

    sget v7, Lcom/samsung/android/spen/R$string;->pen_string_opacity_increase:I

    move-object v0, v8

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;-><init>(Landroid/content/Context;ZIIIII)V

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    new-instance v7, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x64

    sget v5, Lcom/samsung/android/spen/R$string;->pen_string_opacity_decrease:I

    sget v6, Lcom/samsung/android/spen/R$string;->pen_string_opacity_increase:I

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;-><init>(Landroid/content/Context;ZIIII)V

    :goto_0
    iput-object v7, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->mSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    goto :goto_2

    :cond_2
    new-instance v8, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x64

    sget v6, Lcom/samsung/android/spen/R$string;->pen_string_opacity_decrease:I

    sget v7, Lcom/samsung/android/spen/R$string;->pen_string_opacity_increase:I

    move-object v0, v8

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenUserLabelSlider;-><init>(Landroid/content/Context;ZIIIII)V

    :goto_1
    iput-object v8, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->mSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$drawable;->sliider_opacity_bg_drawable:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->mSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    sget v3, Lcom/samsung/android/spen/R$dimen;->setting_slider_opacity_progress_radius:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setProgressBackgroundDrawable(Landroid/graphics/drawable/Drawable;F)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->mSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    sget v2, Lcom/samsung/android/spen/R$dimen;->setting_slider_opacity_progress_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setTrackMinHeight(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->mSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    const-string v2, "%d%%"

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setLabelFormat(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->mSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    sget v2, Lcom/samsung/android/spen/R$string;->pen_string_opacity:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setAccessibilityPostfix(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->mSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->mSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout$2;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setOnChangedListener(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;)V

    sget v0, Lcom/samsung/android/spen/R$color;->setting_preview_adaptive_bg_color:I

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->mAdaptiveBackgroundColor:I

    sget v0, Lcom/samsung/android/spen/R$color;->setting_handwriting_slider_thumb_color:I

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->mEndThumbColor:I

    return-void
.end method

.method private setCurrentAlpha(II)I
    .locals 1

    shl-int/lit8 p2, p2, 0x18

    const/high16 v0, -0x1000000

    and-int/2addr p2, v0

    const v0, 0xffffff

    and-int/2addr p1, v0

    or-int/2addr p1, p2

    return p1
.end method

.method private updateColor(I)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->isAdaptiveColor(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->mAdaptiveBackgroundColor:I

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->mSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/high16 v3, -0x1000000

    or-int/2addr v3, p1

    aput v3, v2, v1

    const/4 v1, 0x1

    const v3, 0xffffff

    and-int/2addr v3, p1

    aput v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setProgressBackgroundColors([I)V

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->mColor:I

    :cond_1
    return-void
.end method

.method private updateValue(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->mSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setValue(IZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayoutInterface$OnDataChangedListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->mSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->mSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    return-void
.end method

.method public getSliderView()Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->mSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hideOpacityAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->mSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout$1;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setHideAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->mSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->startHideAnimation()V

    return-void
.end method

.method public isRunningShowHideAnimation()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->mSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->isRunningShowHideAnimation()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setColor(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setColor() color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPenOpacityLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->getAlphaToPercent(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->updateValue(I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->updateColor(I)V

    return-void
.end method

.method public setDataChangedListener(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayoutInterface$OnDataChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayoutInterface$OnDataChangedListener;

    return-void
.end method

.method public showOpacityAnimation(II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->mSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setValue(IZ)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->mSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->setValue(IZ)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->mSlider:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->mColor:I

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->mEndThumbColor:I

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->startShowAnimation(II)V

    return-void
.end method
