.class Lio/grpc/internal/DelayedClientCall$1;
.super Lio/grpc/internal/ContextRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/DelayedClientCall;->setCall(Lio/grpc/ClientCall;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/internal/DelayedClientCall;


# direct methods
.method public constructor <init>(Lio/grpc/internal/DelayedClientCall;Lio/grpc/Context;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/DelayedClientCall$1;->this$0:Lio/grpc/internal/DelayedClientCall;

    invoke-direct {p0, p2}, Lio/grpc/internal/ContextRunnable;-><init>(Lio/grpc/Context;)V

    return-void
.end method


# virtual methods
.method public runInContext()V
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall$1;->this$0:Lio/grpc/internal/DelayedClientCall;

    invoke-static {v0}, Lio/grpc/internal/DelayedClientCall;->access$100(Lio/grpc/internal/DelayedClientCall;)V

    return-void
.end method
