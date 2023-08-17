.class Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView$CandidateIntroAnimation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CandidateIntroAnimation"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView$CandidateIntroAnimation;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView$CandidateIntroAnimation;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;)V

    return-void
.end method


# virtual methods
.method public playAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView$CandidateIntroAnimation;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;->c(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView$CandidateIntroAnimation;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;->c(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView$CandidateIntroAnimation$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView$CandidateIntroAnimation$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView$CandidateIntroAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
