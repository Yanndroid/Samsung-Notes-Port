.class public abstract Lcom/samsung/android/sdk/scs/base/tasks/Task;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 1
    .param p1    # Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener<",
            "-TTResult;>;)",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "addOnCompleteListener is not implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener<",
            "-TTResult;>;)",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "addOnCompleteListener is not implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract getException()Ljava/lang/Exception;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getResult()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation
.end method

.method public abstract isCanceled()Z
.end method

.method public abstract isComplete()Z
.end method

.method public abstract isSuccessful()Z
.end method
