.class Lio/grpc/netty/ForcefulCloseCommand;
.super Lio/grpc/netty/WriteQueue$AbstractQueuedCommand;
.source "SourceFile"


# instance fields
.field private final status:Lio/grpc/Status;


# direct methods
.method public constructor <init>(Lio/grpc/Status;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/netty/WriteQueue$AbstractQueuedCommand;-><init>()V

    iput-object p1, p0, Lio/grpc/netty/ForcefulCloseCommand;->status:Lio/grpc/Status;

    return-void
.end method


# virtual methods
.method public getStatus()Lio/grpc/Status;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/ForcefulCloseCommand;->status:Lio/grpc/Status;

    return-object v0
.end method
