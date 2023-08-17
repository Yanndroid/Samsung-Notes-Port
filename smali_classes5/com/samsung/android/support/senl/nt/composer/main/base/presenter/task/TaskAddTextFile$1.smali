.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;

.field public final synthetic val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "executeTask"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;)V

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;

    const/4 v1, 0x1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ResultValues;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$InputValues;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ResultValues;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddTextFile$ErrorType;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void
.end method
