.class Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategyAdaptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcz/msebera/android/httpclient/client/RedirectStrategy;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Contract;
    threading = .enum Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->IMMUTABLE:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final handler:Lcz/msebera/android/httpclient/client/RedirectHandler;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/client/RedirectHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategyAdaptor;->handler:Lcz/msebera/android/httpclient/client/RedirectHandler;

    return-void
.end method


# virtual methods
.method public getHandler()Lcz/msebera/android/httpclient/client/RedirectHandler;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategyAdaptor;->handler:Lcz/msebera/android/httpclient/client/RedirectHandler;

    return-object v0
.end method

.method public getRedirect(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategyAdaptor;->handler:Lcz/msebera/android/httpclient/client/RedirectHandler;

    invoke-interface {v0, p2, p3}, Lcz/msebera/android/httpclient/client/RedirectHandler;->getLocationURI(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/net/URI;

    move-result-object p2

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object p1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object p1

    const-string p3, "HEAD"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcz/msebera/android/httpclient/client/methods/HttpHead;

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/client/methods/HttpHead;-><init>(Ljava/net/URI;)V

    return-object p1

    :cond_0
    new-instance p1, Lcz/msebera/android/httpclient/client/methods/HttpGet;

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    return-object p1
.end method

.method public isRedirected(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z
    .locals 0

    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/client/DefaultRedirectStrategyAdaptor;->handler:Lcz/msebera/android/httpclient/client/RedirectHandler;

    invoke-interface {p1, p2, p3}, Lcz/msebera/android/httpclient/client/RedirectHandler;->isRedirectRequested(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result p1

    return p1
.end method
