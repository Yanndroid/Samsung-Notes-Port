.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/SystemUiControlView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ANIMATION_DURATION:J = 0x190L

.field private static final ANIMATION_EACH_VIEW_SHOW_DELAY:J = 0x32L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroidx/appcompat/app/AppCompatActivity;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private final mInAppCollaborationBtn:Landroid/widget/LinearLayout;

.field private final mInAppCollaborationBtnContainer:Landroid/widget/LinearLayout;

.field private final mInAppCollaborationSpecificBtn:Landroid/widget/LinearLayout;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "InAppCollaborationButtonView"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/widget/LinearLayout;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/SystemUiControlView;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->mInAppCollaborationBtnContainer:Landroid/widget/LinearLayout;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_in_app_collaboration_btn:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->mInAppCollaborationBtn:Landroid/widget/LinearLayout;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_in_app_collaboration_specific_btn:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->mInAppCollaborationSpecificBtn:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->mInAppCollaborationBtnContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->showInAppCollaborationBtn(Z)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;Landroid/app/Activity;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->showToolbar(Landroid/app/Activity;Z)V

    return-void
.end method

.method private getButtonViews(Ljava/util/List;Landroid/view/ViewGroup;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v3, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private hideInAppCollaborationBtn(Landroid/app/Activity;ZLandroid/animation/AnimatorListenerAdapter;)V
    .locals 4

    sget-object p3, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->TAG:Ljava/lang/String;

    const-string v0, "hideInAppCollaborationBtn# "

    invoke-static {p3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->mInAppCollaborationBtnContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->mInAppCollaborationBtn:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->in_app_buttons_animation_translation_y:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    mul-int/lit8 p3, p3, -0x1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->mInAppCollaborationBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float p3, p3

    invoke-virtual {v0, p3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x190

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p3, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f666666    # 0.9f

    const/4 v2, 0x0

    const v3, 0x3f547ae1    # 0.83f

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p3, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView$6;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;Landroid/app/Activity;Z)V

    invoke-virtual {p3, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/SystemUiControlView;->updateToShowHideStatusBar(Landroid/app/Activity;Z)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->mInAppCollaborationBtnContainer:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->showToolbar(Landroid/app/Activity;Z)V

    :goto_1
    return-void
.end method

.method private hideToolbar(Landroid/app/Activity;Z)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/SystemUiControlView;->getCustomAppToolbar(Landroid/app/Activity;)Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;Landroid/app/Activity;Z)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar;->setAnimationListener(Landroid/animation/AnimatorListenerAdapter;)V

    :cond_1
    invoke-interface {v0, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar;->hideToolbar(Z)V

    if-nez p2, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/SystemUiControlView;->updateToShowHideStatusBar(Landroid/app/Activity;Z)V

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->showInAppCollaborationBtn(Z)V

    :cond_2
    return-void
.end method

.method private initCloseBtn()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->mInAppCollaborationBtn:Landroid/widget/LinearLayout;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_in_app_collaboration_close_btn:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initMoreBtn()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->mInAppCollaborationBtn:Landroid/widget/LinearLayout;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_in_app_collaboration_more_btn:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showInAppCollaborationBtn(Z)V
    .locals 12

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->TAG:Ljava/lang/String;

    const-string v1, "showInAppCollaborationBtn# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->mInAppCollaborationBtnContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->mInAppCollaborationSpecificBtn:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->getButtonViews(Ljava/util/List;Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->mInAppCollaborationBtn:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->getButtonViews(Ljava/util/List;Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->mInAppCollaborationBtnContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->mInAppCollaborationBtn:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->mInAppCollaborationBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->in_app_buttons_animation_translation_y:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    move v5, v2

    :goto_0
    if-ge v5, v1, :cond_2

    sub-int v6, v1, v5

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    const/4 v8, 0x2

    new-array v8, v8, [F

    aput v4, v8, v2

    aput v3, v8, v7

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    if-eqz p1, :cond_1

    const-wide/16 v8, 0x190

    goto :goto_1

    :cond_1
    const-wide/16 v8, 0x0

    :goto_1
    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v9, 0x3e6147ae    # 0.22f

    const/high16 v10, 0x3e800000    # 0.25f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v3, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v8, 0x32

    int-to-long v10, v5

    mul-long/2addr v10, v8

    invoke-virtual {v7, v10, v11}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v8, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView$4;

    invoke-direct {v8, p0, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView$4;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;Landroid/view/View;)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v8, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView$5;

    invoke-direct {v8, p0, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView$5;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;Landroid/view/View;)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private showToolbar(Landroid/app/Activity;Z)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/SystemUiControlView;->getCustomAppToolbar(Landroid/app/Activity;)Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar;->setAnimationListener(Landroid/animation/AnimatorListenerAdapter;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/SystemUiControlView;->updateToShowHideStatusBar(Landroid/app/Activity;Z)V

    :goto_0
    invoke-interface {v0, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar;->showToolbar(Z)V

    return-void
.end method

.method private updateViewByInAppCollaborationMode(Landroid/app/Activity;ZZ)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->hideToolbar(Landroid/app/Activity;Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;Landroid/app/Activity;Z)V

    invoke-direct {p0, p1, p3, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->hideInAppCollaborationBtn(Landroid/app/Activity;ZLandroid/animation/AnimatorListenerAdapter;)V

    :goto_0
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateViewByInAppCollaborationMode isInAppCollaborationMode# "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public init(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->initMoreBtn()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->initCloseBtn()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->mClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_in_app_collaboration_close_btn:I

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->TAG:Ljava/lang/String;

    const-string v1, "onClick# onCloseBtnClicked"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const-string p1, "672"

    const-string v0, "6678"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v1, "Composer"

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbarFragment;->getSupportedToolbar()Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_in_app_collaboration_more_btn:I

    if-ne v0, v2, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;->showOverflowMenu()Z

    return-void

    :cond_4
    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_5

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->TAG:Ljava/lang/String;

    const-string v0, "InAppCollaborationButtonView# unexpected view clicked "

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    :goto_0
    return-void
.end method

.method public onInAppCollaborationModeChanged(Landroid/app/Activity;Z)V
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->updateViewByInAppCollaborationMode(Landroid/app/Activity;ZZ)V

    return-void
.end method

.method public onOptionsMenuPrepared()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->mInAppCollaborationSpecificBtn:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->toolbar:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/CustomToolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onOptionsMenuPrepared# \n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-interface {v0, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v4}, Landroid/view/MenuItem;->isVisible()Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-interface {v4}, Landroid/view/MenuItem;->getGroupId()I

    move-result v5

    sget v6, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_more:I

    const/16 v7, 0x5b

    if-ne v5, v6, :cond_2

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v4, "] is more menu\n"

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sget v6, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_tablet_sort_pages:I

    if-eq v5, v6, :cond_3

    sget v6, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_add:I

    if-eq v5, v6, :cond_3

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v4, "] is not used on in app mode\n"

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v5, "] is used\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/samsung/android/support/senl/nt/composer/R$layout;->comp_view_in_app_collaboration_btn:I

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->mInAppCollaborationSpecificBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setId(I)V

    invoke-interface {v4}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/android/support/senl/nt/composer/R$color;->composer_menu_icon_color:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v6, v7}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-interface {v4}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v5}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v5, v4}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->mInAppCollaborationSpecificBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateInAppCollaborationMode(Landroid/app/Activity;Z)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/SystemUiControlView;->getCustomAppToolbar(Landroid/app/Activity;)Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    if-nez p2, :cond_3

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->updateViewByInAppCollaborationMode(Landroid/app/Activity;ZZ)V

    :cond_3
    return-void
.end method
