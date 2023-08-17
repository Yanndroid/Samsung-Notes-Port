.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->notify(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

.field public final synthetic val$callback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

.field public final synthetic val$isSuccess:Z

.field public final synthetic val$result:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$1;->val$callback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    iput-boolean p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$1;->val$isSuccess:Z

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$1;->val$result:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "notify# post"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;->hideProgress(IZ)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$1;->val$callback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$1;->val$isSuccess:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$1;->val$result:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$1;->val$result:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;->onError(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$PendingJob;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->g()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notify#post# call pending job "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$PendingJob;->mType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$PendingJob;->mJob:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;Ljava/lang/Runnable;)V

    return-void
.end method
