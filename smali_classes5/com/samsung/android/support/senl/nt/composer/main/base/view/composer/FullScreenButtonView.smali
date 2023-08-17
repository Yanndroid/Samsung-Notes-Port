.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/SystemUiControlView;
.source "SourceFile"


# static fields
.field private static final DURATION:I = 0x14d

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private final mFullScreenBtn:Landroid/view/View;

.field private mIsHiding:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "FullScreenButtonView"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/SystemUiControlView;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->mFullScreenBtn:Landroid/view/View;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->mClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private announceFullScreenMode(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->mFullScreenBtn:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_opt_full_screen:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->mFullScreenBtn:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_tts_on:I

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->mFullScreenBtn:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_tts_off:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->mFullScreenBtn:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->mFullScreenBtn:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->mIsHiding:Z

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

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView$4;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;Landroid/app/Activity;Z)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar;->setAnimationListener(Landroid/animation/AnimatorListenerAdapter;)V

    :cond_1
    invoke-interface {v0, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar;->hideToolbar(Z)V

    if-nez p2, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/SystemUiControlView;->updateToShowHideStatusBar(Landroid/app/Activity;Z)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->showFullScreenBtn(Z)V

    :cond_2
    return-void
.end method

.method private runHideAnimation(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->mFullScreenBtn:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x14d

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private runShowAnimation(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->mFullScreenBtn:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x14d

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

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

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;Landroid/app/Activity;Z)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar;->setAnimationListener(Landroid/animation/AnimatorListenerAdapter;)V

    :cond_1
    invoke-interface {v0, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar;->showToolbar(Z)V

    if-nez p2, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/SystemUiControlView;->updateToShowHideStatusBar(Landroid/app/Activity;Z)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->hideFullScreenBtn(Landroid/app/Activity;Z)V

    :cond_2
    return-void
.end method

.method private updateStatusBarAndButton(Landroid/app/Activity;Z)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/SystemUiControlView;->updateToShowHideStatusBar(Landroid/app/Activity;Z)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->showFullScreenBtn(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->hideFullScreenBtn(Landroid/app/Activity;Z)V

    :goto_0
    return-void
.end method

.method private updateViewByFullScreenMode(Landroid/app/Activity;ZZ)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->hideToolbar(Landroid/app/Activity;Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->showToolbar(Landroid/app/Activity;Z)V

    :goto_0
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateFullScreenMode IsFullScreenMode# "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public changeFullScreenMode(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;)V
    .locals 2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->isFullScreenMode()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->updateViewByFullScreenMode(Landroid/app/Activity;ZZ)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->setIsFullScreenMode(Z)V

    return-void
.end method

.method public hideFullScreenBtn(Landroid/app/Activity;Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->mFullScreenBtn:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->mIsHiding:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->announceFullScreenMode(Z)V

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->runHideAnimation(Z)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->controlIndicatorBar(Landroid/app/Activity;)Z

    return-void
.end method

.method public init(Landroid/view/View$OnClickListener;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->mFullScreenBtn:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->mFullScreenBtn:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showFullScreenBtn(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->mFullScreenBtn:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->mFullScreenBtn:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->announceFullScreenMode(Z)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->runShowAnimation(Z)V

    :cond_0
    return-void
.end method

.method public updateFullScreen(Landroid/app/Activity;Z)V
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

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->updateViewByFullScreenMode(Landroid/app/Activity;ZZ)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->updateStatusBarAndButton(Landroid/app/Activity;Z)V

    :cond_3
    return-void
.end method
