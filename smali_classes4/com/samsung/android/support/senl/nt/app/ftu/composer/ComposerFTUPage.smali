.class public Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPage;
.super Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPage$Contract;
    }
.end annotation


# instance fields
.field private mContract:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPage$Contract;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getDefaultLottieHeight()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->mDefaultLottieHeight:F

    return v0
.end method

.method public getDefaultLottieWidth()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->mDefaultLottieWidth:F

    return v0
.end method

.method public getLottieHeightRatio()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->mLottieHeightRatio:F

    return v0
.end method

.method public getLottieWidthRatio()F
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->mLottieWidthRatio:F

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public initialize()V
    .locals 3

    const/high16 v0, 0x3f200000    # 0.625f

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->mLottieWidthRatio:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->mLottieHeightRatio:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$dimen;->ftu_composer_lottie_default_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->mDefaultLottieWidth:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$dimen;->ftu_composer_lottie_default_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->mDefaultLottieHeight:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$dimen;->ftu_composer_msg_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->mMessageTextSize:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$color;->ftu_msg_text_color:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->mMessageTextColor:I

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->mLottieContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPage;->mContract:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPage$Contract;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getY()F

    move-result p1

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/lottie/LottieWithMessageLayout;->mLottieContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p1, p3

    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPage$Contract;->updateBottomLayout(F)V

    :cond_0
    return-void
.end method

.method public setContract(Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPage$Contract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPage;->mContract:Lcom/samsung/android/support/senl/nt/app/ftu/composer/ComposerFTUPage$Contract;

    return-void
.end method
