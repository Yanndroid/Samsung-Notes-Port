.class Lio/netty/util/Recycler$2;
.super Lio/netty/util/concurrent/FastThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/Recycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/util/concurrent/FastThreadLocal<",
        "Lio/netty/util/Recycler$LocalPool<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/util/Recycler;


# direct methods
.method public constructor <init>(Lio/netty/util/Recycler;)V
    .locals 0

    iput-object p1, p0, Lio/netty/util/Recycler$2;->this$0:Lio/netty/util/Recycler;

    invoke-direct {p0}, Lio/netty/util/concurrent/FastThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public initialValue()Lio/netty/util/Recycler$LocalPool;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/Recycler$LocalPool<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/netty/util/Recycler$LocalPool;

    iget-object v1, p0, Lio/netty/util/Recycler$2;->this$0:Lio/netty/util/Recycler;

    invoke-static {v1}, Lio/netty/util/Recycler;->access$000(Lio/netty/util/Recycler;)I

    move-result v1

    iget-object v2, p0, Lio/netty/util/Recycler$2;->this$0:Lio/netty/util/Recycler;

    invoke-static {v2}, Lio/netty/util/Recycler;->access$100(Lio/netty/util/Recycler;)I

    move-result v2

    iget-object v3, p0, Lio/netty/util/Recycler$2;->this$0:Lio/netty/util/Recycler;

    invoke-static {v3}, Lio/netty/util/Recycler;->access$200(Lio/netty/util/Recycler;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lio/netty/util/Recycler$LocalPool;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/netty/util/Recycler$2;->initialValue()Lio/netty/util/Recycler$LocalPool;

    move-result-object v0

    return-object v0
.end method

.method public onRemoval(Lio/netty/util/Recycler$LocalPool;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$LocalPool<",
            "TT;>;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lio/netty/util/concurrent/FastThreadLocal;->onRemoval(Ljava/lang/Object;)V

    invoke-static {p1}, Lio/netty/util/Recycler$LocalPool;->access$300(Lio/netty/util/Recycler$LocalPool;)Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lio/netty/util/Recycler$LocalPool;->access$302(Lio/netty/util/Recycler$LocalPool;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;)Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;

    invoke-interface {v0}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;->clear()V

    return-void
.end method

.method public bridge synthetic onRemoval(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lio/netty/util/Recycler$LocalPool;

    invoke-virtual {p0, p1}, Lio/netty/util/Recycler$2;->onRemoval(Lio/netty/util/Recycler$LocalPool;)V

    return-void
.end method
