.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;->createAccessibilityFocus([Ljava/lang/String;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;

.field public final synthetic val$anim:Landroid/animation/Animator;

.field public final synthetic val$endValues:Landroid/transition/TransitionValues;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;Landroid/animation/Animator;Landroid/transition/TransitionValues;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$7;->val$anim:Landroid/animation/Animator;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$7;->val$endValues:Landroid/transition/TransitionValues;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$7;->val$anim:Landroid/animation/Animator;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$7;->val$endValues:Landroid/transition/TransitionValues;

    iget-object v0, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->requestAccessibilityFocus(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/TagTransition$7;->val$endValues:Landroid/transition/TransitionValues;

    iget-object p2, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->requestAccessibilityFocus(Landroid/view/View;)V

    return-void
.end method
