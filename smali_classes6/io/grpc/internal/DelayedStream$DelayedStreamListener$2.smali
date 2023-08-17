.class Lio/grpc/internal/DelayedStream$DelayedStreamListener$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/DelayedStream$DelayedStreamListener;->onReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/internal/DelayedStream$DelayedStreamListener;


# direct methods
.method public constructor <init>(Lio/grpc/internal/DelayedStream$DelayedStreamListener;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/DelayedStream$DelayedStreamListener$2;->this$0:Lio/grpc/internal/DelayedStream$DelayedStreamListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/DelayedStream$DelayedStreamListener$2;->this$0:Lio/grpc/internal/DelayedStream$DelayedStreamListener;

    invoke-static {v0}, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->access$200(Lio/grpc/internal/DelayedStream$DelayedStreamListener;)Lio/grpc/internal/ClientStreamListener;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/StreamListener;->onReady()V

    return-void
.end method
