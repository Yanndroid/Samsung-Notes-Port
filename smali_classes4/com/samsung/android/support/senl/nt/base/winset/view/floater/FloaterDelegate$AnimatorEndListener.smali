.class Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate$AnimatorEndListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimatorEndListener"
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private mNeedUpdated:Z

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate$AnimatorEndListener;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate$AnimatorEndListener;->mNeedUpdated:Z

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate$AnimatorEndListener;->mName:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->a(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;)Lcom/samsung/android/support/senl/nt/base/winset/view/floater/ActionProcessListener;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->a(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;)Lcom/samsung/android/support/senl/nt/base/winset/view/floater/ActionProcessListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/ActionProcessListener;->onActionStart()V

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "start Action with animation : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate$AnimatorEndListener;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FloaterDelegate"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate$AnimatorEndListener;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;Ljava/lang/String;)V

    iput-boolean p3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate$AnimatorEndListener;->mNeedUpdated:Z

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "end Action with animation : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate$AnimatorEndListener;->mName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " needUpdate "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate$AnimatorEndListener;->mNeedUpdated:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "FloaterDelegate"

    invoke-static {p3, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate$AnimatorEndListener;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->a(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;)Lcom/samsung/android/support/senl/nt/base/winset/view/floater/ActionProcessListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate$AnimatorEndListener;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;->a(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate;)Lcom/samsung/android/support/senl/nt/base/winset/view/floater/ActionProcessListener;

    move-result-object p1

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloaterDelegate$AnimatorEndListener;->mNeedUpdated:Z

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/ActionProcessListener;->onActionEnd(Z)V

    :cond_0
    return-void
.end method
