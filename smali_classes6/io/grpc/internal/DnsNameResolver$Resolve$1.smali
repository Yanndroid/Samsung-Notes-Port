.class Lio/grpc/internal/DnsNameResolver$Resolve$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/DnsNameResolver$Resolve;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lio/grpc/internal/DnsNameResolver$Resolve;

.field public final synthetic val$succeed:Z


# direct methods
.method public constructor <init>(Lio/grpc/internal/DnsNameResolver$Resolve;Z)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/DnsNameResolver$Resolve$1;->this$1:Lio/grpc/internal/DnsNameResolver$Resolve;

    iput-boolean p2, p0, Lio/grpc/internal/DnsNameResolver$Resolve$1;->val$succeed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-boolean v0, p0, Lio/grpc/internal/DnsNameResolver$Resolve$1;->val$succeed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver$Resolve$1;->this$1:Lio/grpc/internal/DnsNameResolver$Resolve;

    iget-object v0, v0, Lio/grpc/internal/DnsNameResolver$Resolve;->this$0:Lio/grpc/internal/DnsNameResolver;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/grpc/internal/DnsNameResolver;->resolved:Z

    invoke-static {v0}, Lio/grpc/internal/DnsNameResolver;->access$700(Lio/grpc/internal/DnsNameResolver;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver$Resolve$1;->this$1:Lio/grpc/internal/DnsNameResolver$Resolve;

    iget-object v0, v0, Lio/grpc/internal/DnsNameResolver$Resolve;->this$0:Lio/grpc/internal/DnsNameResolver;

    invoke-static {v0}, Lio/grpc/internal/DnsNameResolver;->access$800(Lio/grpc/internal/DnsNameResolver;)Lcom/google/common/base/Stopwatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Stopwatch;->reset()Lcom/google/common/base/Stopwatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Stopwatch;->start()Lcom/google/common/base/Stopwatch;

    :cond_0
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver$Resolve$1;->this$1:Lio/grpc/internal/DnsNameResolver$Resolve;

    iget-object v0, v0, Lio/grpc/internal/DnsNameResolver$Resolve;->this$0:Lio/grpc/internal/DnsNameResolver;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/grpc/internal/DnsNameResolver;->access$902(Lio/grpc/internal/DnsNameResolver;Z)Z

    return-void
.end method
