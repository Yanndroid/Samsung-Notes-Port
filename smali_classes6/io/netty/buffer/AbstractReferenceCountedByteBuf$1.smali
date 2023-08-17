.class final Lio/netty/buffer/AbstractReferenceCountedByteBuf$1;
.super Lio/netty/util/internal/ReferenceCountUpdater;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/AbstractReferenceCountedByteBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/util/internal/ReferenceCountUpdater<",
        "Lio/netty/buffer/AbstractReferenceCountedByteBuf;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/netty/util/internal/ReferenceCountUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public unsafeOffset()J
    .locals 2

    invoke-static {}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->access$100()J

    move-result-wide v0

    return-wide v0
.end method

.method public updater()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lio/netty/buffer/AbstractReferenceCountedByteBuf;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->access$000()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    return-object v0
.end method
