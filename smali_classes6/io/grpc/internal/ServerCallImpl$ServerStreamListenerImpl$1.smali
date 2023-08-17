.class Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/Context$CancellationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;-><init>(Lio/grpc/internal/ServerCallImpl;Lio/grpc/ServerCall$Listener;Lio/grpc/Context$CancellableContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;


# direct methods
.method public constructor <init>(Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl$1;->this$0:Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelled(Lio/grpc/Context;)V
    .locals 1

    invoke-virtual {p1}, Lio/grpc/Context;->cancellationCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl$1;->this$0:Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;

    invoke-static {p1}, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->access$000(Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;)Lio/grpc/internal/ServerCallImpl;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lio/grpc/internal/ServerCallImpl;->access$102(Lio/grpc/internal/ServerCallImpl;Z)Z

    :cond_0
    return-void
.end method
