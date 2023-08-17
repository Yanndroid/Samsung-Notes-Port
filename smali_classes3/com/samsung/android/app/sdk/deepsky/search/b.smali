.class public final synthetic Lcom/samsung/android/app/sdk/deepsky/search/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor$Callback;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/search/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/search/b;->b:Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/search/b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/search/b;->b:Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor$Callback;

    invoke-static {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutorImpl;->a(Ljava/lang/String;Lcom/samsung/android/app/sdk/deepsky/search/GraphqlQueryExecutor$Callback;)V

    return-void
.end method
