.class Lcom/samsung/android/support/senl/nt/app/lock/LockActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/lock/view/base/ViewStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishCancel()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onFinishCancel"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->d(Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;)V

    return-void
.end method

.method public onFinishSuccess()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onFinishSuccess"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->c(Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;)Lcom/samsung/android/support/senl/nt/app/lock/model/scenario/LockScenario;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->c(Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;)Lcom/samsung/android/support/senl/nt/app/lock/model/scenario/LockScenario;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/lock/model/scenario/LockScenario;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->f(Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->e(Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;)V

    :goto_0
    return-void
.end method

.method public onScenarioChange(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->g(Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;I)V

    return-void
.end method

.method public onViewChange(II)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onViewChange viewType/additionalInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->c(Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;)Lcom/samsung/android/support/senl/nt/app/lock/model/scenario/LockScenario;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/model/scenario/LockScenario;->insertFront(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->f(Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;I)V

    return-void
.end method
