.class public final Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u001a2\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00042\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00060\u0004\u00a8\u0006\t"
    }
    d2 = {
        "executeBy",
        "Lcom/samsung/android/app/sdk/deepsky/search/Cancelable;",
        "Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor;",
        "onResponse",
        "Lkotlin/Function1;",
        "Lcom/samsung/android/app/sdk/deepsky/search/Response;",
        "",
        "onFailure",
        "",
        "deepsky-sdk-2.2.9_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final executeBy(Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcom/samsung/android/app/sdk/deepsky/search/Cancelable;
    .locals 1
    .param p0    # Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/samsung/android/app/sdk/deepsky/search/Response;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/samsung/android/app/sdk/deepsky/search/Cancelable;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFailure"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorKt$executeBy$1;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorKt$executeBy$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {p0, v0}, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor;->execute(Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor$Callback;)Lcom/samsung/android/app/sdk/deepsky/search/Cancelable;

    move-result-object p0

    return-object p0
.end method
