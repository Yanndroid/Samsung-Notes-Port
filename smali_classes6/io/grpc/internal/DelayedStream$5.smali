.class Lio/grpc/internal/DelayedStream$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/DelayedStream;->setAuthority(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/internal/DelayedStream;

.field public final synthetic val$authority:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/grpc/internal/DelayedStream;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/DelayedStream$5;->this$0:Lio/grpc/internal/DelayedStream;

    iput-object p2, p0, Lio/grpc/internal/DelayedStream$5;->val$authority:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/DelayedStream$5;->this$0:Lio/grpc/internal/DelayedStream;

    invoke-static {v0}, Lio/grpc/internal/DelayedStream;->access$000(Lio/grpc/internal/DelayedStream;)Lio/grpc/internal/ClientStream;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/DelayedStream$5;->val$authority:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/grpc/internal/ClientStream;->setAuthority(Ljava/lang/String;)V

    return-void
.end method
