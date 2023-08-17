.class Lio/grpc/Context$CancellableContext$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/Context$CancellationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/Context$CancellableContext;->addListenerInternal(Lio/grpc/Context$ExecutableListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/Context$CancellableContext;


# direct methods
.method public constructor <init>(Lio/grpc/Context$CancellableContext;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/Context$CancellableContext$1;->this$0:Lio/grpc/Context$CancellableContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelled(Lio/grpc/Context;)V
    .locals 1

    iget-object v0, p0, Lio/grpc/Context$CancellableContext$1;->this$0:Lio/grpc/Context$CancellableContext;

    invoke-virtual {p1}, Lio/grpc/Context;->cancellationCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/grpc/Context$CancellableContext;->cancel(Ljava/lang/Throwable;)Z

    return-void
.end method
