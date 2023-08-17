.class Lio/grpc/internal/DelayedClientCall$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/DelayedClientCall;->setMessageCompression(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/internal/DelayedClientCall;

.field public final synthetic val$enable:Z


# direct methods
.method public constructor <init>(Lio/grpc/internal/DelayedClientCall;Z)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/DelayedClientCall$5;->this$0:Lio/grpc/internal/DelayedClientCall;

    iput-boolean p2, p0, Lio/grpc/internal/DelayedClientCall$5;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall$5;->this$0:Lio/grpc/internal/DelayedClientCall;

    invoke-static {v0}, Lio/grpc/internal/DelayedClientCall;->access$200(Lio/grpc/internal/DelayedClientCall;)Lio/grpc/ClientCall;

    move-result-object v0

    iget-boolean v1, p0, Lio/grpc/internal/DelayedClientCall$5;->val$enable:Z

    invoke-virtual {v0, v1}, Lio/grpc/ClientCall;->setMessageCompression(Z)V

    return-void
.end method
