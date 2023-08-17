.class Lcom/samsung/android/support/senl/nt/base/winset/view/dynamical/VerticalChangeableView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/winset/view/dynamical/VerticalChangeableView;->update(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/dynamical/VerticalChangeableView;

.field public final synthetic val$params:Landroid/view/ViewGroup$LayoutParams;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/winset/view/dynamical/VerticalChangeableView;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/dynamical/VerticalChangeableView$1;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/dynamical/VerticalChangeableView;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/dynamical/VerticalChangeableView$1;->val$params:Landroid/view/ViewGroup$LayoutParams;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/dynamical/VerticalChangeableView$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/dynamical/VerticalChangeableView$1;->val$params:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/dynamical/VerticalChangeableView$1;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method
