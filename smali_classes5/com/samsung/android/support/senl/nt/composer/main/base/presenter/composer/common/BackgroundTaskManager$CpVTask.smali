.class abstract Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager$CpVTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "CpVTask"
.end annotation


# instance fields
.field private mRunningState:Z

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager$CpVTask;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract doInBackground()V
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager$CpVTask;->mRunningState:Z

    return v0
.end method

.method public final run()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Task# start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager$CpVTask;->mRunningState:Z

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager$CpVTask;->doInBackground()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager$CpVTask;->mRunningState:Z

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Task# end"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
