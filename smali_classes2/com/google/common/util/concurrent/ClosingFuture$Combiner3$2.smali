.class Lcom/google/common/util/concurrent/ClosingFuture$Combiner3$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/ClosingFuture$Combiner$AsyncCombiningCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/ClosingFuture$Combiner3;->callAsync(Lcom/google/common/util/concurrent/ClosingFuture$Combiner3$AsyncClosingFunction3;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ClosingFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/ClosingFuture$Combiner$AsyncCombiningCallable<",
        "TU;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/common/util/concurrent/ClosingFuture$Combiner3;

.field public final synthetic val$function:Lcom/google/common/util/concurrent/ClosingFuture$Combiner3$AsyncClosingFunction3;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/ClosingFuture$Combiner3;Lcom/google/common/util/concurrent/ClosingFuture$Combiner3$AsyncClosingFunction3;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner3$2;->this$0:Lcom/google/common/util/concurrent/ClosingFuture$Combiner3;

    iput-object p2, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner3$2;->val$function:Lcom/google/common/util/concurrent/ClosingFuture$Combiner3$AsyncClosingFunction3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;Lcom/google/common/util/concurrent/ClosingFuture$Peeker;)Lcom/google/common/util/concurrent/ClosingFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;",
            "Lcom/google/common/util/concurrent/ClosingFuture$Peeker;",
            ")",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "TU;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner3$2;->val$function:Lcom/google/common/util/concurrent/ClosingFuture$Combiner3$AsyncClosingFunction3;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner3$2;->this$0:Lcom/google/common/util/concurrent/ClosingFuture$Combiner3;

    invoke-static {v1}, Lcom/google/common/util/concurrent/ClosingFuture$Combiner3;->access$2000(Lcom/google/common/util/concurrent/ClosingFuture$Combiner3;)Lcom/google/common/util/concurrent/ClosingFuture;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/common/util/concurrent/ClosingFuture$Peeker;->getDone(Lcom/google/common/util/concurrent/ClosingFuture;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner3$2;->this$0:Lcom/google/common/util/concurrent/ClosingFuture$Combiner3;

    invoke-static {v2}, Lcom/google/common/util/concurrent/ClosingFuture$Combiner3;->access$2100(Lcom/google/common/util/concurrent/ClosingFuture$Combiner3;)Lcom/google/common/util/concurrent/ClosingFuture;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/google/common/util/concurrent/ClosingFuture$Peeker;->getDone(Lcom/google/common/util/concurrent/ClosingFuture;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner3$2;->this$0:Lcom/google/common/util/concurrent/ClosingFuture$Combiner3;

    invoke-static {v3}, Lcom/google/common/util/concurrent/ClosingFuture$Combiner3;->access$2200(Lcom/google/common/util/concurrent/ClosingFuture$Combiner3;)Lcom/google/common/util/concurrent/ClosingFuture;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/google/common/util/concurrent/ClosingFuture$Peeker;->getDone(Lcom/google/common/util/concurrent/ClosingFuture;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, v1, v2, p2}, Lcom/google/common/util/concurrent/ClosingFuture$Combiner3$AsyncClosingFunction3;->apply(Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ClosingFuture;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner3$2;->val$function:Lcom/google/common/util/concurrent/ClosingFuture$Combiner3$AsyncClosingFunction3;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
