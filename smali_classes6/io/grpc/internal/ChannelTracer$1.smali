.class Lio/grpc/internal/ChannelTracer$1;
.super Ljava/util/ArrayDeque;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ChannelTracer;-><init>(Lio/grpc/InternalLogId;IJLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayDeque<",
        "Lio/grpc/InternalChannelz$ChannelTrace$Event;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/internal/ChannelTracer;

.field public final synthetic val$maxEvents:I


# direct methods
.method public constructor <init>(Lio/grpc/internal/ChannelTracer;I)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/ChannelTracer$1;->this$0:Lio/grpc/internal/ChannelTracer;

    iput p2, p0, Lio/grpc/internal/ChannelTracer$1;->val$maxEvents:I

    invoke-direct {p0}, Ljava/util/ArrayDeque;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lio/grpc/InternalChannelz$ChannelTrace$Event;)Z
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget v1, p0, Lio/grpc/internal/ChannelTracer$1;->val$maxEvents:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ChannelTracer$1;->this$0:Lio/grpc/internal/ChannelTracer;

    invoke-static {v0}, Lio/grpc/internal/ChannelTracer;->access$008(Lio/grpc/internal/ChannelTracer;)I

    invoke-super {p0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    check-cast p1, Lio/grpc/InternalChannelz$ChannelTrace$Event;

    invoke-virtual {p0, p1}, Lio/grpc/internal/ChannelTracer$1;->add(Lio/grpc/InternalChannelz$ChannelTrace$Event;)Z

    move-result p1

    return p1
.end method
