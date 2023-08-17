.class public final synthetic Ln4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/model/collector/ReadyStateCollectExecutor;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/model/collector/ReadyStateCollectExecutor;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln4/b;->a:Lcom/samsung/android/support/senl/nt/model/collector/ReadyStateCollectExecutor;

    iput-boolean p2, p0, Ln4/b;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ln4/b;->a:Lcom/samsung/android/support/senl/nt/model/collector/ReadyStateCollectExecutor;

    iget-boolean v1, p0, Ln4/b;->b:Z

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/model/collector/ReadyStateCollectExecutor;->b(Lcom/samsung/android/support/senl/nt/model/collector/ReadyStateCollectExecutor;Z)V

    return-void
.end method
