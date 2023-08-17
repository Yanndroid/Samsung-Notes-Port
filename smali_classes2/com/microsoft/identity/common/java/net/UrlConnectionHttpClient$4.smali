.class Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->method(Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;Ljava/net/URL;Ljava/util/Map;[B)Lcom/microsoft/identity/common/java/net/HttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/microsoft/identity/common/java/net/HttpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;

.field public final synthetic val$request:Lcom/microsoft/identity/common/java/net/HttpRequest;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;Lcom/microsoft/identity/common/java/net/HttpRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$4;->this$0:Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;

    iput-object p2, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$4;->val$request:Lcom/microsoft/identity/common/java/net/HttpRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/microsoft/identity/common/java/net/HttpResponse;
    .locals 3

    iget-object v0, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$4;->this$0:Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$4;->val$request:Lcom/microsoft/identity/common/java/net/HttpRequest;

    new-instance v2, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$4$1;

    invoke-direct {v2, p0}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$4$1;-><init>(Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$4;)V

    invoke-static {v0, v1, v2}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->access$100(Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;Lcom/microsoft/identity/common/java/net/HttpRequest;Lcom/microsoft/identity/common/java/util/ported/Consumer;)Lcom/microsoft/identity/common/java/net/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$4;->call()Lcom/microsoft/identity/common/java/net/HttpResponse;

    move-result-object v0

    return-object v0
.end method
