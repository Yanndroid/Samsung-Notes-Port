.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$InputValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy;

.field public final synthetic val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$InputValues;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$InputValues;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$InputValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$InputValues;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$InputValues;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy;Landroid/content/Context;)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$InputValues;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$InputValues;)Landroid/util/Pair;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$1$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$1$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$1;Landroid/util/Pair;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "err: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy;

    const/4 v1, 0x0

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$ResultValues;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$InputValues;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$InputValues;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopy$ResultValues;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void
.end method
