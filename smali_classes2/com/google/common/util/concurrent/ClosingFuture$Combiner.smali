.class public Lcom/google/common/util/concurrent/ClosingFuture$Combiner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/DoNotMock;
    value = "Use ClosingFuture.whenAllSucceed() or .whenAllComplete() instead."
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ClosingFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Combiner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/ClosingFuture$Combiner$AsyncCombiningCallable;,
        Lcom/google/common/util/concurrent/ClosingFuture$Combiner$CombiningCallable;
    }
.end annotation


# static fields
.field private static final INNER_FUTURE:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function<",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "*>;",
            "Lcom/google/common/util/concurrent/FluentFuture<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final allMustSucceed:Z

.field private final closeables:Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;

.field public final inputs:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner$3;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/ClosingFuture$Combiner$3;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner;->INNER_FUTURE:Lcom/google/common/base/Function;

    return-void
.end method

.method private constructor <init>(ZLjava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;-><init>(Lcom/google/common/util/concurrent/ClosingFuture$1;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner;->closeables:Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;

    iput-boolean p1, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner;->allMustSucceed:Z

    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner;->inputs:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/common/util/concurrent/ClosingFuture;

    iget-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner;->closeables:Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;

    invoke-static {p2, v0}, Lcom/google/common/util/concurrent/ClosingFuture;->access$1000(Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/Iterable;Lcom/google/common/util/concurrent/ClosingFuture$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/ClosingFuture$Combiner;-><init>(ZLjava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/google/common/util/concurrent/ClosingFuture$Combiner;)Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner;->closeables:Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;

    return-object p0
.end method

.method private futureCombiner()Lcom/google/common/util/concurrent/Futures$FutureCombiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/Futures$FutureCombiner<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner;->allMustSucceed:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/ClosingFuture$Combiner;->inputFutures()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->whenAllSucceed(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/Futures$FutureCombiner;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/common/util/concurrent/ClosingFuture$Combiner;->inputFutures()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->whenAllComplete(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/Futures$FutureCombiner;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private inputFutures()Lcom/google/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/util/concurrent/FluentFuture<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner;->inputs:Lcom/google/common/collect/ImmutableList;

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/ClosingFuture$Combiner;->INNER_FUTURE:Lcom/google/common/base/Function;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/FluentIterable;->transform(Lcom/google/common/base/Function;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/FluentIterable;->toList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public call(Lcom/google/common/util/concurrent/ClosingFuture$Combiner$CombiningCallable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ClosingFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ClosingFuture$Combiner$CombiningCallable<",
            "TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/ClosingFuture$Combiner$1;-><init>(Lcom/google/common/util/concurrent/ClosingFuture$Combiner;Lcom/google/common/util/concurrent/ClosingFuture$Combiner$CombiningCallable;)V

    new-instance p1, Lcom/google/common/util/concurrent/ClosingFuture;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/ClosingFuture$Combiner;->futureCombiner()Lcom/google/common/util/concurrent/Futures$FutureCombiner;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/google/common/util/concurrent/Futures$FutureCombiner;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/google/common/util/concurrent/ClosingFuture;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ClosingFuture$1;)V

    invoke-static {p1}, Lcom/google/common/util/concurrent/ClosingFuture;->access$200(Lcom/google/common/util/concurrent/ClosingFuture;)Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;

    move-result-object p2

    iget-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner;->closeables:Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->add(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method

.method public callAsync(Lcom/google/common/util/concurrent/ClosingFuture$Combiner$AsyncCombiningCallable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ClosingFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ClosingFuture$Combiner$AsyncCombiningCallable<",
            "TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner$2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/ClosingFuture$Combiner$2;-><init>(Lcom/google/common/util/concurrent/ClosingFuture$Combiner;Lcom/google/common/util/concurrent/ClosingFuture$Combiner$AsyncCombiningCallable;)V

    new-instance p1, Lcom/google/common/util/concurrent/ClosingFuture;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/ClosingFuture$Combiner;->futureCombiner()Lcom/google/common/util/concurrent/Futures$FutureCombiner;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/google/common/util/concurrent/Futures$FutureCombiner;->callAsync(Lcom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/google/common/util/concurrent/ClosingFuture;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ClosingFuture$1;)V

    invoke-static {p1}, Lcom/google/common/util/concurrent/ClosingFuture;->access$200(Lcom/google/common/util/concurrent/ClosingFuture;)Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;

    move-result-object p2

    iget-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner;->closeables:Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->add(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method
