.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field private static final DURATION:I = 0x14d

.field private static final SHOW_TIME:J = 0x7d0L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBlock:Z

.field private mHideRunnable:Ljava/lang/Runnable;

.field private mIsFadingEnabled:Z

.field private mShowAnimator:Landroid/view/ViewPropertyAnimator;

.field private mZoomStartingValue:F

.field private mZoomTextScaleImage:Landroid/view/View;

.field private mZoomValue:F

.field private mZoomValueView:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ZoomView"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->mIsFadingEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->mIsFadingEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->mIsFadingEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->mIsFadingEnabled:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->mHideRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->runHideAnimation()V

    return-void
.end method

.method private runHideAnimation()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x14d

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->mZoomStartingValue:F

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->mZoomValue:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/sa/ComposerSAConstants;->SCREEN_NONE:Ljava/lang/String;

    const-string v1, "4288"

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/sa/ComposerSAConstants;->SCREEN_NONE:Ljava/lang/String;

    const-string v1, "4289"

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private runShowAnimation()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->mShowAnimator:Landroid/view/ViewPropertyAnimator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x14d

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private show(FZZ)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->mZoomValueView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->mZoomValue:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->mBlock:Z

    if-eqz p2, :cond_1

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->TAG:Ljava/lang/String;

    const-string v0, "show# blocked"

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->mZoomValue:F

    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->updateTextScaleImage(Z)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->mZoomValueView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_zoom_percent:I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    const/16 v2, 0x25

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, p1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->mZoomValueView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->mZoomValue:F

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->mZoomStartingValue:F

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->mIsFadingEnabled:Z

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->runShowAnimation()V

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->mIsFadingEnabled:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->mHideRunnable:Ljava/lang/Runnable;

    const-wide/16 p2, 0x7d0

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private updateTextScaleImage(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->mZoomTextScaleImage:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->mZoomTextScaleImage:Landroid/view/View;

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->mZoomTextScaleImage:Landroid/view/View;

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public forceShow()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->mZoomValue:F

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->show(FZZ)V

    return-void
.end method

.method public getZoomValue()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->mZoomValue:F

    return v0
.end method

.method public hideTextScaleImage()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->mZoomTextScaleImage:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->mZoomTextScaleImage:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public init(F)V
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_zoom_value_view:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->mZoomValueView:Landroid/widget/TextView;

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->mZoomValue:F

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->mZoomStartingValue:F

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->mHideRunnable:Ljava/lang/Runnable;

    sget p1, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_text_scale_image:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->mZoomTextScaleImage:Landroid/view/View;

    return-void
.end method

.method public setBlock(Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBlock# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->mShowAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->mShowAnimator:Landroid/view/ViewPropertyAnimator;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->mBlock:Z

    return-void
.end method

.method public setFadingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->mIsFadingEnabled:Z

    return-void
.end method

.method public show(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->show(FZZ)V

    return-void
.end method

.method public showTextScale(F)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->show(FZZ)V

    return-void
.end method
