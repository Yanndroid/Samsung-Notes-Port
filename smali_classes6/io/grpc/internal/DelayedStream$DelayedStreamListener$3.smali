.class Lio/grpc/internal/DelayedStream$DelayedStreamListener$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/DelayedStream$DelayedStreamListener;->headersRead(Lio/grpc/Metadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/internal/DelayedStream$DelayedStreamListener;

.field public final synthetic val$headers:Lio/grpc/Metadata;


# direct methods
.method public constructor <init>(Lio/grpc/internal/DelayedStream$DelayedStreamListener;Lio/grpc/Metadata;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/DelayedStream$DelayedStreamListener$3;->this$0:Lio/grpc/internal/DelayedStream$DelayedStreamListener;

    iput-object p2, p0, Lio/grpc/internal/DelayedStream$DelayedStreamListener$3;->val$headers:Lio/grpc/Metadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/DelayedStream$DelayedStreamListener$3;->this$0:Lio/grpc/internal/DelayedStream$DelayedStreamListener;

    invoke-static {v0}, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->access$200(Lio/grpc/internal/DelayedStream$DelayedStreamListener;)Lio/grpc/internal/ClientStreamListener;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/DelayedStream$DelayedStreamListener$3;->val$headers:Lio/grpc/Metadata;

    invoke-interface {v0, v1}, Lio/grpc/internal/ClientStreamListener;->headersRead(Lio/grpc/Metadata;)V

    return-void
.end method
