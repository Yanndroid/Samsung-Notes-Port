.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock;

.field public final synthetic val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;->isSavingState()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "isSavingState is true "

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->isLocked()Z

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->getLockAccountGuid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getAccountGuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;

    invoke-static {v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;

    invoke-static {v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;)Z

    move-result v7

    invoke-static {v4, v5, v6, v7, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;ZLjava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->getUuid()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;)Z

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/DocumentLockResolver;->execute(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$ResultValues;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->getUuid()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->getDocPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$ResultValues;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock;->c()Ljava/lang/String;

    move-result-object v4

    const-string v5, "fail lock "

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;

    invoke-static {v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    move-result-object v6

    invoke-static {v4, v5, v6, v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskLock;

    :goto_0
    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void
.end method
