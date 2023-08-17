.class Lio/netty/util/concurrent/DefaultPromise$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/util/concurrent/DefaultPromise;->notifyListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/util/concurrent/DefaultPromise;


# direct methods
.method public constructor <init>(Lio/netty/util/concurrent/DefaultPromise;)V
    .locals 0

    iput-object p1, p0, Lio/netty/util/concurrent/DefaultPromise$1;->this$0:Lio/netty/util/concurrent/DefaultPromise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise$1;->this$0:Lio/netty/util/concurrent/DefaultPromise;

    invoke-static {v0}, Lio/netty/util/concurrent/DefaultPromise;->access$200(Lio/netty/util/concurrent/DefaultPromise;)V

    return-void
.end method
