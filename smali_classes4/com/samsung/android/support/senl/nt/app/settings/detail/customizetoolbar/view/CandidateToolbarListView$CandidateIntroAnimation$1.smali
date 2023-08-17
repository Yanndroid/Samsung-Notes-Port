.class Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView$CandidateIntroAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView$CandidateIntroAnimation;->playAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView$CandidateIntroAnimation;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView$CandidateIntroAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView$CandidateIntroAnimation$1;->this$1:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView$CandidateIntroAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView$CandidateIntroAnimation$1;->this$1:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView$CandidateIntroAnimation;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView$CandidateIntroAnimation;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;->c(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/CandidateToolbarListView;)Landroid/widget/TextView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method
