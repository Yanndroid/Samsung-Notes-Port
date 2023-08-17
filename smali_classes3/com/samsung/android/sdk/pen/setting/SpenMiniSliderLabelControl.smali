.class Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$OnSliderListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation


# static fields
.field private static final HIDE_LABEL_DURATION:I = 0x64

.field private static final SHOW_LABEL_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "SpenMiniSliderLabelControl"


# instance fields
.field private mDisallowLabel:Z

.field private final mHideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mIsAnimating:Z

.field private mIsFixPositionLabel:Z

.field private mIsRTL:Z

.field private mLabelGravity:I

.field private mLabelMargin:I

.field private mLabelView:Landroid/widget/TextView;

.field private mParent:Landroid/widget/FrameLayout;

.field private mParentOrientation:I

.field private final mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mSlider:Landroid/view/View;

.field private mSliderOffset:I

.field private mSliderWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl$1;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl$2;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mHideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mParent:Landroid/widget/FrameLayout;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mDisallowLabel:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mLabelGravity:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->mini_pen_setting_slider_big_label_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mLabelMargin:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mIsAnimating:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mIsFixPositionLabel:Z

    iput p3, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mParentOrientation:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mIsRTL:Z

    return-void
.end method

.method public static synthetic access$002(Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mIsAnimating:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mLabelView:Landroid/widget/TextView;

    return-object p0
.end method

.method private adjustLabelGravity(I)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mLabelView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mParent:Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mLabelMargin:I

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    const/4 v3, 0x5

    if-ne p1, v3, :cond_2

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mLabelMargin:I

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    const/16 v4, 0x30

    if-ne p1, v4, :cond_3

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mLabelMargin:I

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    const/16 v5, 0x50

    if-ne p1, v5, :cond_4

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mLabelMargin:I

    :cond_4
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1, v4, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    :goto_3
    return-void
.end method

.method private cancelLabelAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mLabelView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mIsAnimating:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    :cond_1
    :goto_0
    return-void
.end method

.method private decideFixedPositionLabel()Z
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->isHorizontalSlider()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mLabelGravity:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    :cond_2
    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mLabelGravity:I

    const/16 v3, 0x30

    if-eq v0, v3, :cond_3

    const/16 v3, 0x50

    if-ne v0, v3, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method private destroyLabelView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mLabelView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mParent:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mLabelView:Landroid/widget/TextView;

    return-void
.end method

.method private getAddPositionValue(Landroid/view/View;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mLabelGravity:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    :goto_1
    return p1
.end method

.method private getLabelPositionOffset()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mLabelGravity:I

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    const/16 v1, 0x50

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, -0x1

    :goto_1
    return v0
.end method

.method private getPositionValue(I)F
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mIsFixPositionLabel:Z

    if-eqz v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->isHorizontalSlider()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mIsRTL:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    rsub-int/lit8 p1, p1, 0x64

    :goto_0
    int-to-float p1, p1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mSliderWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mSliderOffset:I

    int-to-float p1, p1

    add-float/2addr v0, p1

    return v0
.end method

.method private initLabelPosition(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mLabelView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget v0, Lcom/samsung/android/spen/R$id;->seek_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mSlider:Landroid/view/View;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mSlider:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mSlider:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mSlider:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mSliderWidth:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mSlider:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mSliderOffset:I

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mParent:Landroid/widget/FrameLayout;

    if-eq p1, v0, :cond_2

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mSliderOffset:I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->getAddPositionValue(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mSliderOffset:I

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mSliderOffset:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->getLabelPositionOffset()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mSliderOffset:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->decideFixedPositionLabel()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mIsFixPositionLabel:Z

    :cond_3
    :goto_1
    return-void
.end method

.method private initLabelView()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mLabelView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mParent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/samsung/android/spen/R$layout;->setting_mini_slider_big_label:I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mParent:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mLabelView:Landroid/widget/TextView;

    sget-object v2, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;->REGULAR:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/widget/TextView;

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->setTypeFace(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;[Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mParent:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private isHorizontalSlider()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mSlider:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mSlider:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mSlider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v0

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x5a

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setLabelAnimation(Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLabelAnimation() isShow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenMiniSliderLabelControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mIsAnimating:Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mLabelView:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mIsAnimating:Z

    const/16 v1, 0xf

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mLabelView:Landroid/widget/TextView;

    const-wide/16 v2, 0xc8

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-static {p1, v1, v2, v3, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->alphaVisibleAnimation(Landroid/view/View;IJLandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mLabelView:Landroid/widget/TextView;

    const-wide/16 v2, 0x64

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mHideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-static {p1, v1, v2, v3, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->alphaGoneAnimation(Landroid/view/View;IJLandroid/view/animation/Animation$AnimationListener;)V

    :goto_0
    return-void
.end method

.method private setLabelPosition(Ljava/lang/String;)V
    .locals 2

    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->getPositionValue(I)F

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->getLabelGravity()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->getLabelGravity()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setX(F)V

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setY(F)V

    return-void
.end method

.method private updateLabel(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mLabelView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->setLabelPosition(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->cancelLabelAnimation()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mIsAnimating:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mParent:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mLabelView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mSlider:Landroid/view/View;

    return-void
.end method

.method public getLabelGravity()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mLabelGravity:I

    return v0
.end method

.method public isDisallowLabel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mDisallowLabel:Z

    return v0
.end method

.method public onLabelChanged(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mDisallowLabel:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mLabelView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->updateLabel(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onLabelStateChanged(Landroid/view/View;Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnSliderListener$LabelState;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mDisallowLabel:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mLabelView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLabelStateChanged() state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenMiniSliderLabelControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnSliderListener$LabelState;->SHOW:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnSliderListener$LabelState;

    invoke-virtual {p2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mLabelGravity:I

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->adjustLabelGravity(I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->initLabelPosition(Landroid/view/View;)V

    invoke-direct {p0, p3}, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->updateLabel(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->setLabelAnimation(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setDisallowLabel(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDisallowLabel() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenMiniSliderLabelControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mDisallowLabel:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->initLabelView()V

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mLabelGravity:I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->adjustLabelGravity(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->destroyLabelView()V

    :goto_0
    return-void
.end method

.method public setLabelGravity(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLabelGravity() ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mLabelGravity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenMiniSliderLabelControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mLabelGravity:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x30

    if-eq p1, v0, :cond_1

    const/16 v0, 0x50

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not support gravity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mLabelGravity:I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->adjustLabelGravity(I)V

    return-void
.end method

.method public setParentOrientation(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setParentOrientation() ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mParentOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenMiniSliderLabelControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mParentOrientation:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mParentOrientation:I

    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mDisallowLabel:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->cancelLabelAnimation()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->destroyLabelView()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->initLabelView()V

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->mLabelGravity:I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->adjustLabelGravity(I)V

    return-void
.end method
