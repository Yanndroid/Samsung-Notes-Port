.class public final synthetic Lcom/samsung/android/app/sdk/deepsky/search/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;

.field public final synthetic b:Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/search/f;->a:Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;

    iput-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/search/f;->b:Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/search/f;->a:Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/search/f;->b:Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;

    invoke-static {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->f(Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;)Lcom/samsung/android/app/sdk/deepsky/contract/search/ResponseData;

    move-result-object v0

    return-object v0
.end method
