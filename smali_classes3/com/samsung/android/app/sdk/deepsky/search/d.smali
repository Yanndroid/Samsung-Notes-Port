.class public final synthetic Lcom/samsung/android/app/sdk/deepsky/search/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;

.field public final synthetic b:Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/search/d;->a:Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;

    iput-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/search/d;->b:Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/search/d;->a:Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/search/d;->b:Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;

    check-cast p1, Lcom/samsung/android/app/sdk/deepsky/contract/search/ResponseData;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->b(Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;Lcom/samsung/android/app/sdk/deepsky/contract/search/RequestData;Lcom/samsung/android/app/sdk/deepsky/contract/search/ResponseData;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
