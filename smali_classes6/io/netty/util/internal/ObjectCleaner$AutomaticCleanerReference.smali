.class final Lio/netty/util/internal/ObjectCleaner$AutomaticCleanerReference;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/internal/ObjectCleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AutomaticCleanerReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final cleanupTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lio/netty/util/internal/ObjectCleaner;->access$200()Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p2, p0, Lio/netty/util/internal/ObjectCleaner$AutomaticCleanerReference;->cleanupTask:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    iget-object v0, p0, Lio/netty/util/internal/ObjectCleaner$AutomaticCleanerReference;->cleanupTask:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public clear()V
    .locals 1

    invoke-static {}, Lio/netty/util/internal/ObjectCleaner;->access$000()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-super {p0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/netty/util/internal/ObjectCleaner$AutomaticCleanerReference;->get()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/Thread;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
