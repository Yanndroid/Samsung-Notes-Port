.class public final Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl$awaitResponse$observer$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->awaitResponse(Lcom/samsung/android/app/sdk/deepsky/contract/search/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl$awaitResponse$observer$1",
        "Landroid/database/ContentObserver;",
        "onChange",
        "",
        "selfChange",
        "",
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


# instance fields
.field public final synthetic $latch:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic $promise:Lcom/samsung/android/app/sdk/deepsky/contract/search/Promise;

.field public final synthetic this$0:Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CountDownLatch;Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;Lcom/samsung/android/app/sdk/deepsky/contract/search/Promise;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl$awaitResponse$observer$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl$awaitResponse$observer$1;->this$0:Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;

    iput-object p3, p0, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl$awaitResponse$observer$1;->$promise:Lcom/samsung/android/app/sdk/deepsky/contract/search/Promise;

    invoke-direct {p0, p4}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl$awaitResponse$observer$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl$awaitResponse$observer$1;->this$0:Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl$awaitResponse$observer$1;->$promise:Lcom/samsung/android/app/sdk/deepsky/contract/search/Promise;

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/contract/search/Promise;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "awaitResponse, onChange, promiseId: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->access$log(Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;ILjava/lang/String;)V

    return-void
.end method
