.class Lio/grpc/internal/DelayedStream$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/DelayedStream;->setFullStreamDecompression(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/internal/DelayedStream;

.field public final synthetic val$fullStreamDecompression:Z


# direct methods
.method public constructor <init>(Lio/grpc/internal/DelayedStream;Z)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/DelayedStream$13;->this$0:Lio/grpc/internal/DelayedStream;

    iput-boolean p2, p0, Lio/grpc/internal/DelayedStream$13;->val$fullStreamDecompression:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/DelayedStream$13;->this$0:Lio/grpc/internal/DelayedStream;

    invoke-static {v0}, Lio/grpc/internal/DelayedStream;->access$000(Lio/grpc/internal/DelayedStream;)Lio/grpc/internal/ClientStream;

    move-result-object v0

    iget-boolean v1, p0, Lio/grpc/internal/DelayedStream$13;->val$fullStreamDecompression:Z

    invoke-interface {v0, v1}, Lio/grpc/internal/ClientStream;->setFullStreamDecompression(Z)V

    return-void
.end method
