.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->getAnimator(Landroid/transition/TransitionValues;II)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;

.field public final synthetic val$endValues:Landroid/transition/TransitionValues;

.field public final synthetic val$endVisibility:I

.field public final synthetic val$goneAnim:Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;Landroid/animation/Animator;Landroid/transition/TransitionValues;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$6;->val$goneAnim:Landroid/animation/Animator;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$6;->val$endValues:Landroid/transition/TransitionValues;

    iput p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$6;->val$endVisibility:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$6;->val$goneAnim:Landroid/animation/Animator;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$6;->val$endValues:Landroid/transition/TransitionValues;

    iget-object p1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$6;->val$endVisibility:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
