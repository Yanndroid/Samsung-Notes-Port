.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator$TitleEditorAnimatorListener;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator$Contract;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlphaEnd:F

.field private mAlphaStart:F

.field private mAnimatorSetForDataAndTag:Landroid/animation/AnimatorSet;

.field private mAnimatorSetGeneral:Landroid/animation/AnimatorSet;

.field private final mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator$Contract;

.field private mIsExtending:Z

.field private mIsHiding:Z

.field private mSineInOut33:Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut33;

.field private mSineInOut70:Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut70;

.field private mTitleContainerHEnd:I

.field private mTitleContainerHStart:I

.field private mToolbarTitleMaxWidth:I

.field private final mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TitleEditorShowHideAnimator"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator$Contract;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator$Contract;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mAnimatorSetGeneral:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator$Contract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator$Contract;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;FZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->updateAllViewByFraction(FZ)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->updateExtendedState()V

    return-void
.end method

.method public static bridge synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getInfoAlphaAnimator(FFILandroid/view/animation/Interpolator;)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator$5;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator$5;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p4, :cond_0

    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_0
    return-object p1
.end method

.method private getLeftEnd()I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_title_text_side_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v3

    if-eqz v3, :cond_0

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_title_text_end_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr v2, v0

    :cond_0
    return v2
.end method

.method private getSineInOut33()Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut33;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mSineInOut33:Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut33;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut33;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut33;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mSineInOut33:Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut33;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mSineInOut33:Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut33;

    return-object v0
.end method

.method private getSineInOut70()Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut70;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mSineInOut70:Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut70;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut70;

    invoke-direct {v0}, Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut70;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mSineInOut70:Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut70;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mSineInOut70:Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut70;

    return-object v0
.end method

.method private getTitleWidth()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getToolbarView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_title_text_end_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method private getTopEnd()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_title_text_top_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private initAnimationValueAlpha(FF)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mAlphaStart:F

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mAlphaEnd:F

    return-void
.end method

.method private initAnimationValueContainer(II)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mTitleContainerHEnd:I

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mTitleContainerHStart:I

    return-void
.end method

.method private postAnimationAfterLaidOut()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getTitleContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mAnimatorSetGeneral:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getTitleContainer()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator$4;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateAllViewByFraction(FZ)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mTitleContainerHStart:I

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mTitleContainerHEnd:I

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->updateTitleContainerHeight(IIF)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getTitleView()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->updateViewByFraction(FZ)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->updateScreenLockView(FZ)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->updateNaivButton(FZ)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mAlphaStart:F

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mAlphaEnd:F

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->updateToolbarButtons(FFF)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mAlphaEnd:F

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mAlphaStart:F

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->updateToolbarCover(FFF)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->updateFavoriteView(FZ)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->updateCoeditAddMemberView(FZ)V

    return-void
.end method

.method private updateExtendedState()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator$Contract;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;->onShow()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getOtherContainer()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->updateOtherContainer()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getTitleView()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->updateCuePosition(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mAnimatorSetForDataAndTag:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0xc8

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->getSineInOut33()Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut33;

    move-result-object v4

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->getInfoAlphaAnimator(FFILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getTagListView()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;->getShowAnimator()Landroid/animation/Animator;

    move-result-object v2

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v0, v4, v1

    const/4 v0, 0x1

    aput-object v2, v4, v0

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    iput-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mAnimatorSetForDataAndTag:Landroid/animation/AnimatorSet;

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mIsExtending:Z

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getTitleView()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->getView()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator$Contract;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getTitleView()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->getView()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator$Contract;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getTitleView()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->getView()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;->showSoftInput(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private updateNaivButton(FZ)V
    .locals 1

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float p1, p2, p1

    :cond_0
    const/16 p2, 0x5a

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p2, -0x5a

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getNaviUpView()Landroid/view/View;

    move-result-object v0

    int-to-float p2, p2

    mul-float/2addr p2, p1

    invoke-virtual {v0, p2}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method private updateOtherContainer()V
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getTitleView()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->getView()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getOtherContainer()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getTitleView()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->getBottom()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getOtherContainer()Landroid/view/View;

    move-result-object v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setY(F)V

    :goto_0
    return-void
.end method

.method private updateTitleContainerHeight(IIF)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getTitleContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    int-to-float v1, p1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    mul-float/2addr p1, p3

    add-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getTitleContainer()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateToolbarButtons(FFF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getToolbarActionBtns()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getToolbarActionBtns()Landroid/view/View;

    move-result-object v0

    sub-float/2addr p2, p1

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method private updateToolbarCover(FFF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getToolbarCoverView()Landroid/view/View;

    move-result-object v0

    sub-float/2addr p2, p1

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public animate(FZ)V
    .locals 5

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mAnimatorSetGeneral:Landroid/animation/AnimatorSet;

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v4, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator$1;

    invoke-direct {v4, p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;Z)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sub-float/2addr v3, p1

    const p1, 0x43a68000    # 333.0f

    mul-float/2addr v3, p1

    float-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mAnimatorSetGeneral:Landroid/animation/AnimatorSet;

    new-array p2, v2, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getTitleView()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->getShowAlphaAnimator()Landroid/animation/AnimatorSet;

    move-result-object v3

    aput-object v3, p2, v1

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mAnimatorSetGeneral:Landroid/animation/AnimatorSet;

    new-array p2, v2, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getTitleView()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->getHideAlphaAnimator()Landroid/animation/AnimatorSet;

    move-result-object v3

    aput-object v3, p2, v1

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mAnimatorSetGeneral:Landroid/animation/AnimatorSet;

    new-array p2, v2, [Landroid/animation/Animator;

    aput-object v0, p2, v1

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mAnimatorSetGeneral:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->getSineInOut70()Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut70;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->postAnimationAfterLaidOut()V

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mAnimatorSetGeneral:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mAnimatorSetGeneral:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method public initHideState()V
    .locals 8

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mIsHiding:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getToolbarTitle()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->findViewOnToolbar()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getToolbarTitle()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->TAG:Ljava/lang/String;

    const-string v1, "not found title"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->TAG:Ljava/lang/String;

    const-string v1, "initHideState#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->calculateTitleMaxWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mToolbarTitleMaxWidth:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mIsHiding:Z

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->attachNaviUpButton()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator$Contract;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator$Contract;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getTitleView()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->getTitleText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;->setTitle(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator$Contract;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator$Contract;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;->setFocusToComposer()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getTitleContainer()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getTitleContainer()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getToolbarView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->initAnimationValueContainer(II)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getTitleView()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getToolbarTitle()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->setToolbarTitle(Landroidx/appcompat/widget/AppCompatTextView;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getToolbarTitle()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLeft()I

    move-result v3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->getLeftEnd()I

    move-result v4

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->getTopEnd()I

    move-result v5

    invoke-virtual {v1, v3, v4, v2, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->initAnimationValueTitleView(IIII)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->getTitleWidth()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mToolbarTitleMaxWidth:I

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->initHideState(II)V

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->initAnimationValueAlpha(FF)V

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->updateAllViewByFraction(FZ)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mAnimatorSetForDataAndTag:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_3
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/Animator;

    const/16 v6, 0x96

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->getSineInOut33()Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut33;

    move-result-object v7

    invoke-direct {p0, v3, v1, v6, v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->getInfoAlphaAnimator(FFILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    aput-object v1, v5, v2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getTagListView()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;->getHideAnimator()Landroid/animation/Animator;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->getSineInOut33()Lcom/samsung/android/spr/drawable/animation/interpolator/SineInOut33;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    iput-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mAnimatorSetForDataAndTag:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getToolbarView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getMainLayoutContainerParent()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method public initShowState()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getTitleContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getToolbarTitle()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->findViewOnToolbar()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getToolbarTitle()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->TAG:Ljava/lang/String;

    const-string v1, "not found title"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->TAG:Ljava/lang/String;

    const-string v1, "initShowState#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->calculateTitleMaxWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mToolbarTitleMaxWidth:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mIsExtending:Z

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->attachNaviUpButton()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getNaviUpView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getTitleContainer()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getParentLockView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getFolderViewManager()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;->updateFolderInfo()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getNoteInfoViewManager()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/NoteInfoViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/NoteInfoViewManager;->updateInfoContainer()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getTitleCoeditMemberListView()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListView;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListView;->setAlpha(F)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getTitleCoeditMemberListView()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListView;->updateCoeditMemberListView()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->updateBottomDockerLockedState(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->updateAccessibilityTraversal()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getToolbarView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v5, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getTitleHeight(Landroid/content/res/Resources;)I

    move-result v0

    invoke-direct {p0, v4, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->initAnimationValueContainer(II)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getToolbarTitle()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getTitleView()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->setToolbarTitle(Landroidx/appcompat/widget/AppCompatTextView;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I

    move-result v0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->getLeftEnd()I

    move-result v5

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->getTopEnd()I

    move-result v6

    invoke-virtual {v4, v0, v5, v2, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->initAnimationValueTitleView(IIII)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->getTitleWidth()I

    move-result v0

    iget v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mToolbarTitleMaxWidth:I

    invoke-virtual {v4, v0, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->initShowState(II)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->initAnimationValueAlpha(FF)V

    invoke-direct {p0, v3, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->updateAllViewByFraction(FZ)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getToolbarNaviUp()Landroidx/appcompat/widget/AppCompatImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getTagListView()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator$Contract;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator$Contract;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;->isEditMode()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;->setEditable(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getTagListView()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/tag/TagListView;->updateTagListView()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getNaviUpView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getMainLayoutContainerParent()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method public isAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mIsExtending:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mIsHiding:Z

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

.method public isHiding()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mIsHiding:Z

    return v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mAnimatorSetGeneral:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method public updateCoeditAddMemberView(FZ)V
    .locals 0

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float p1, p2, p1

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getCoeditAddMember()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditAddMember;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditAddMember;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public updateFavoriteView(FZ)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getFavorite()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/Favorite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/Favorite;->updateState()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getFavorite()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/Favorite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/Favorite;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float p1, p2, p1

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getFavorite()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/Favorite;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/Favorite;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public updateHideState()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getToolbarNaviUp()Landroidx/appcompat/widget/AppCompatImageButton;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getToolbarTitle()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getTitleContainer()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getParentLockView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getOtherContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getNaviUpView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->updateBottomDockerLockedState(Z)V

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mIsHiding:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator$Contract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator$Contract;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getTitleView()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->getView()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;->onHide(Landroid/view/View;)V

    return-void
.end method
