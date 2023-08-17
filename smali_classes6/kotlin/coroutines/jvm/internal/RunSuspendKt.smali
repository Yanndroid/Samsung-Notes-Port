.class public final Lkotlin/coroutines/jvm/internal/RunSuspendKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final runSuspend(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p0    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/coroutines/jvm/internal/RunSuspend;

    invoke-direct {v0}, Lkotlin/coroutines/jvm/internal/RunSuspend;-><init>()V

    invoke-static {p0, v0}, Lkotlin/coroutines/ContinuationKt;->startCoroutine(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0}, Lkotlin/coroutines/jvm/internal/RunSuspend;->await()V

    return-void
.end method
