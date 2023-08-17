.class public interface abstract Lio/grpc/internal/ManagedClientTransport;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/ClientTransport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/ManagedClientTransport$Listener;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# virtual methods
.method public abstract shutdown(Lio/grpc/Status;)V
.end method

.method public abstract shutdownNow(Lio/grpc/Status;)V
.end method

.method public abstract start(Lio/grpc/internal/ManagedClientTransport$Listener;)Ljava/lang/Runnable;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
