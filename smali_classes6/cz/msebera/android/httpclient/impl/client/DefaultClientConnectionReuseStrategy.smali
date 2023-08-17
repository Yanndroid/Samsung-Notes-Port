.class public Lcz/msebera/android/httpclient/impl/client/DefaultClientConnectionReuseStrategy;
.super Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcz/msebera/android/httpclient/impl/client/DefaultClientConnectionReuseStrategy;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/impl/client/DefaultClientConnectionReuseStrategy;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/DefaultClientConnectionReuseStrategy;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/client/DefaultClientConnectionReuseStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/client/DefaultClientConnectionReuseStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public keepAlive(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z
    .locals 4

    const-string v0, "http.request"

    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpRequest;

    if-eqz v0, :cond_1

    const-string v1, "Connection"

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/HttpMessage;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    array-length v1, v0

    if-eqz v1, :cond_1

    new-instance v1, Lcz/msebera/android/httpclient/message/BasicTokenIterator;

    new-instance v2, Lcz/msebera/android/httpclient/message/BasicHeaderIterator;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcz/msebera/android/httpclient/message/BasicHeaderIterator;-><init>([Lcz/msebera/android/httpclient/Header;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;-><init>(Lcz/msebera/android/httpclient/HeaderIterator;)V

    :cond_0
    invoke-interface {v1}, Lcz/msebera/android/httpclient/TokenIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Lcz/msebera/android/httpclient/TokenIterator;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Close"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-super {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;->keepAlive(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z

    move-result p1

    return p1
.end method
