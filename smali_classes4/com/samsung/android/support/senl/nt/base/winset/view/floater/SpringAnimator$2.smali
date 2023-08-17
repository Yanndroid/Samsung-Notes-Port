.class Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator;->runScaleAnimation(Landroid/view/View;FFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator;

.field public final synthetic val$targetScale:F


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator;F)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator$2;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator$2;->val$targetScale:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator$2;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator;->a(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator;)Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator$Contract;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator$2;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator;->b(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator$2;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator;->a(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator;)Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator$Contract;

    move-result-object p1

    iget p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator$2;->val$targetScale:F

    const/high16 p3, 0x3f800000    # 1.0f

    cmpg-float p2, p2, p3

    if-gez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/SpringAnimator$Contract;->onAnimationEnd(Z)V

    :cond_1
    return-void
.end method
