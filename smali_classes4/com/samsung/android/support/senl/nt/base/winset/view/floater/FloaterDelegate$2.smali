.class Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->runTranslationAnimation(Landroid/graphics/Point;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

.field public final synthetic val$endAction:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate$2;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate$2;->val$endAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate$2;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->b(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate$2;->val$endAction:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
