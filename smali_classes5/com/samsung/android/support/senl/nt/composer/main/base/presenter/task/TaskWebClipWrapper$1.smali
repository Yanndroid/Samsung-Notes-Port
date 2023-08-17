.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$InputValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper;

.field public final synthetic val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$InputValues;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$InputValues;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$InputValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "executeTask# start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;-><init>()V

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$1$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->setTaskCallback(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$InputValues;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->setInputValue(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->mStorageChecker:Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->setStorageChecker(Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->setTimeStart(J)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper$InputValues;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClipWrapper;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "executeTask# end"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
