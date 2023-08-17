.class public final synthetic Lcom/samsung/android/app/sdk/deepsky/search/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;

.field public final synthetic b:Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/search/c;->a:Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;

    iput-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/search/c;->b:Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor$Callback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/search/c;->a:Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/search/c;->b:Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor$Callback;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->c(Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor$Callback;Ljava/lang/String;)V

    return-void
.end method
