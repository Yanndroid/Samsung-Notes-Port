.class public Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# static fields
.field private static final KEY_BUTTON_VISIBILITY:Ljava/lang/String; = "key_button_visibility"

.field private static final KEY_TABLET_LAYOUT:Ljava/lang/String; = "key_tablet_layout"


# instance fields
.field private mButtonViewGroup:Landroid/widget/LinearLayout;

.field private mButtonVisibility:I

.field private mIsTabletLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;->mButtonVisibility:I

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;->mButtonViewGroup:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;->mButtonVisibility:I

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;->finish(Z)V

    return-void
.end method

.method private finish(Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    const-string v1, "extra_try_co_edit"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private initLayout()V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->isMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->co_edit_ftu_buttons:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;->mButtonViewGroup:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;->mButtonVisibility:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;->mButtonViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->co_edit_ftu_later:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity$1;-><init>(Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->co_edit_ftu_try:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity$2;-><init>(Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ContextUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->lottie:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method private needViewChange()Z
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;->mIsTabletLayout:Z

    const v1, 0x1020002

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isTabletModel(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "EXTRA_DATA_IGNORE_ACTIVITY_RESULT"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v3

    :cond_0
    return v2
.end method

.method private showButtonAnimation()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;->mButtonViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$dimen;->co_edit_ftu_animation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    int-to-float v0, v0

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x0

    const/4 v4, 0x1

    aput v0, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v5, 0x190

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ecccccd    # 0.4f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3e2e147b    # 0.17f

    invoke-direct {v2, v7, v7, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity$3;-><init>(Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v5, 0xc8

    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity$4;-><init>(Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity$5;

    invoke-direct {v5, p0}, Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity$5;-><init>(Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v0, v1, v3

    aput-object v2, v1, v4

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x1388

    invoke-virtual {v5, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private showFTUAnimation()V
    .locals 3

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->ftu_texts:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->lottie:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;->showButtonAnimation()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$layout;->coedit_ftu_activity:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    if-eqz p1, :cond_1

    const-string v0, "key_tablet_layout"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;->mIsTabletLayout:Z

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;->needViewChange()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    const-string v1, "key_button_visibility"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;->mButtonVisibility:I

    goto :goto_0

    :cond_1
    const p1, 0x1020002

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isTabletModel(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;->mIsTabletLayout:Z

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;->initLayout()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;->showFTUAnimation()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;->mIsTabletLayout:Z

    const-string v1, "key_tablet_layout"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/coedit/CoeditFTUActivity;->mButtonVisibility:I

    const-string v1, "key_button_visibility"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
