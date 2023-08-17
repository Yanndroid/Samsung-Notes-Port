.class Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView$ToolbarIntroAnimation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView$ToolbarIntroAnimation;->playAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView$ToolbarIntroAnimation;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView$ToolbarIntroAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView$ToolbarIntroAnimation$1;->this$1:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView$ToolbarIntroAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView$ToolbarIntroAnimation$1;->this$1:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView$ToolbarIntroAnimation;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView$ToolbarIntroAnimation;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView;->c(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView$ToolbarIntroAnimation$1;->this$1:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView$ToolbarIntroAnimation;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView$ToolbarIntroAnimation;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView;->c(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/view/ToolbarListView;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
