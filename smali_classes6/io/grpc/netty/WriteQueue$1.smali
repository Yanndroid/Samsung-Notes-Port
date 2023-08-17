.class Lio/grpc/netty/WriteQueue$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/WriteQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/netty/WriteQueue;


# direct methods
.method public constructor <init>(Lio/grpc/netty/WriteQueue;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/WriteQueue$1;->this$0:Lio/grpc/netty/WriteQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/WriteQueue$1;->this$0:Lio/grpc/netty/WriteQueue;

    invoke-static {v0}, Lio/grpc/netty/WriteQueue;->access$000(Lio/grpc/netty/WriteQueue;)V

    return-void
.end method
