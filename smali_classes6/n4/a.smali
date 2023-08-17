.class public final synthetic Ln4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/model/collector/ReadyStateCollectExecutor;

.field public final synthetic b:Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/INoteJob$INoteJobFinishCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/model/collector/ReadyStateCollectExecutor;Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/INoteJob$INoteJobFinishCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln4/a;->a:Lcom/samsung/android/support/senl/nt/model/collector/ReadyStateCollectExecutor;

    iput-object p2, p0, Ln4/a;->b:Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/INoteJob$INoteJobFinishCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ln4/a;->a:Lcom/samsung/android/support/senl/nt/model/collector/ReadyStateCollectExecutor;

    iget-object v1, p0, Ln4/a;->b:Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/INoteJob$INoteJobFinishCallback;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/ReadyStateCollectExecutor;->a(Lcom/samsung/android/support/senl/nt/model/collector/ReadyStateCollectExecutor;Lcom/samsung/android/support/senl/nt/base/common/jobscheduler/INoteJob$INoteJobFinishCallback;)V

    return-void
.end method
