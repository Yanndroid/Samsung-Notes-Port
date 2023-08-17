.class Lio/netty/buffer/PooledByteBufAllocator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/PooledByteBufAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/buffer/PooledByteBufAllocator;


# direct methods
.method public constructor <init>(Lio/netty/buffer/PooledByteBufAllocator;)V
    .locals 0

    iput-object p1, p0, Lio/netty/buffer/PooledByteBufAllocator$1;->this$0:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator$1;->this$0:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-virtual {v0}, Lio/netty/buffer/PooledByteBufAllocator;->trimCurrentThreadCache()Z

    return-void
.end method
