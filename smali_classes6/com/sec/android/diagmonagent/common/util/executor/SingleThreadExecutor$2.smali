.class Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;->execute(Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;

.field public final synthetic val$api:Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;


# direct methods
.method public constructor <init>(Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor$2;->this$0:Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;

    iput-object p2, p0, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor$2;->val$api:Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor$2;->val$api:Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;

    invoke-interface {v0}, Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;->run()V

    iget-object v0, p0, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor$2;->val$api:Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;

    invoke-interface {v0}, Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;->onFinish()I

    return-void
.end method
