.class public interface abstract Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/sdk/deepsky/search/Cancelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor$Factory;,
        Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor$Callback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001:\u0002\u000e\u000fJ\u0010\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H&J\u000e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H&J\u0010\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bH&J\u0010\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\rH&\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor;",
        "Lcom/samsung/android/app/sdk/deepsky/search/Cancelable;",
        "dispatcher",
        "Ljava/util/concurrent/Executor;",
        "execute",
        "callback",
        "Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor$Callback;",
        "future",
        "Ljava/util/concurrent/Future;",
        "Lcom/samsung/android/app/sdk/deepsky/search/Response;",
        "logger",
        "Lcom/samsung/android/app/sdk/deepsky/search/Logger;",
        "variable",
        "",
        "Callback",
        "Factory",
        "deepsky-sdk-2.2.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract dispatcher(Ljava/util/concurrent/Executor;)Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor;
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract execute(Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor$Callback;)Lcom/samsung/android/app/sdk/deepsky/search/Cancelable;
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor$Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract future()Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Lcom/samsung/android/app/sdk/deepsky/search/Response;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract logger(Lcom/samsung/android/app/sdk/deepsky/search/Logger;)Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor;
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/search/Logger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract variable(Ljava/lang/String;)Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
