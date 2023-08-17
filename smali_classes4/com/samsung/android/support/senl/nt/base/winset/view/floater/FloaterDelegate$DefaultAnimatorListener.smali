.class Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate$DefaultAnimatorListener;
.super Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate$AnimatorEndListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultAnimatorListener"
.end annotation


# instance fields
.field private mCount:I

.field private mWithEndAction:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate$DefaultAnimatorListener;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate$AnimatorEndListener;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;Ljava/lang/String;ZLjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate$DefaultAnimatorListener;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate$AnimatorEndListener;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;Ljava/lang/String;Z)V

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate$DefaultAnimatorListener;->mWithEndAction:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate$DefaultAnimatorListener;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate$DefaultAnimatorListener;->mCount:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate$AnimatorEndListener;->onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate$DefaultAnimatorListener;->mWithEndAction:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate$DefaultAnimatorListener;->mWithEndAction:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method
