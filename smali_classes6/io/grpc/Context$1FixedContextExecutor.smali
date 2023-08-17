.class final Lio/grpc/Context$1FixedContextExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/Context;->fixedContextExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FixedContextExecutor"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/Context;

.field public final synthetic val$e:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lio/grpc/Context;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/grpc/Context$1FixedContextExecutor;->this$0:Lio/grpc/Context;

    iput-object p2, p0, Lio/grpc/Context$1FixedContextExecutor;->val$e:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/Context$1FixedContextExecutor;->val$e:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lio/grpc/Context$1FixedContextExecutor;->this$0:Lio/grpc/Context;

    invoke-virtual {v1, p1}, Lio/grpc/Context;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
