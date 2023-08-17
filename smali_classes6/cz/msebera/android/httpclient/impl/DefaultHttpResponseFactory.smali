.class public Lcz/msebera/android/httpclient/impl/DefaultHttpResponseFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpResponseFactory;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Contract;
    threading = .enum Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->IMMUTABLE_CONDITIONAL:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultHttpResponseFactory;


# instance fields
.field public final reasonCatalog:Lcz/msebera/android/httpclient/ReasonPhraseCatalog;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/impl/DefaultHttpResponseFactory;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/DefaultHttpResponseFactory;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/DefaultHttpResponseFactory;->INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultHttpResponseFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;->INSTANCE:Lcz/msebera/android/httpclient/impl/EnglishReasonPhraseCatalog;

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/DefaultHttpResponseFactory;-><init>(Lcz/msebera/android/httpclient/ReasonPhraseCatalog;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/ReasonPhraseCatalog;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Reason phrase catalog"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcz/msebera/android/httpclient/ReasonPhraseCatalog;

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/DefaultHttpResponseFactory;->reasonCatalog:Lcz/msebera/android/httpclient/ReasonPhraseCatalog;

    return-void
.end method


# virtual methods
.method public determineLocale(Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/util/Locale;
    .locals 0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    return-object p1
.end method

.method public newHttpResponse(Lcz/msebera/android/httpclient/ProtocolVersion;ILcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;
    .locals 2

    const-string v0, "HTTP version"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p3}, Lcz/msebera/android/httpclient/impl/DefaultHttpResponseFactory;->determineLocale(Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/util/Locale;

    move-result-object p3

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/DefaultHttpResponseFactory;->reasonCatalog:Lcz/msebera/android/httpclient/ReasonPhraseCatalog;

    invoke-interface {v0, p2, p3}, Lcz/msebera/android/httpclient/ReasonPhraseCatalog;->getReason(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcz/msebera/android/httpclient/message/BasicStatusLine;

    invoke-direct {v1, p1, p2, v0}, Lcz/msebera/android/httpclient/message/BasicStatusLine;-><init>(Lcz/msebera/android/httpclient/ProtocolVersion;ILjava/lang/String;)V

    new-instance p1, Lcz/msebera/android/httpclient/message/BasicHttpResponse;

    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/DefaultHttpResponseFactory;->reasonCatalog:Lcz/msebera/android/httpclient/ReasonPhraseCatalog;

    invoke-direct {p1, v1, p2, p3}, Lcz/msebera/android/httpclient/message/BasicHttpResponse;-><init>(Lcz/msebera/android/httpclient/StatusLine;Lcz/msebera/android/httpclient/ReasonPhraseCatalog;Ljava/util/Locale;)V

    return-object p1
.end method

.method public newHttpResponse(Lcz/msebera/android/httpclient/StatusLine;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;
    .locals 2

    const-string v0, "Status line"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHttpResponse;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/DefaultHttpResponseFactory;->reasonCatalog:Lcz/msebera/android/httpclient/ReasonPhraseCatalog;

    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/impl/DefaultHttpResponseFactory;->determineLocale(Lcz/msebera/android/httpclient/protocol/HttpContext;)Ljava/util/Locale;

    move-result-object p2

    invoke-direct {v0, p1, v1, p2}, Lcz/msebera/android/httpclient/message/BasicHttpResponse;-><init>(Lcz/msebera/android/httpclient/StatusLine;Lcz/msebera/android/httpclient/ReasonPhraseCatalog;Ljava/util/Locale;)V

    return-object v0
.end method
