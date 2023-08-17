.class public Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestParserFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcz/msebera/android/httpclient/io/HttpMessageParserFactory;


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Contract;
    threading = .enum Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->IMMUTABLE_CONDITIONAL:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcz/msebera/android/httpclient/io/HttpMessageParserFactory<",
        "Lcz/msebera/android/httpclient/HttpRequest;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestParserFactory;


# instance fields
.field private final lineParser:Lcz/msebera/android/httpclient/message/LineParser;

.field private final requestFactory:Lcz/msebera/android/httpclient/HttpRequestFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestParserFactory;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestParserFactory;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestParserFactory;->INSTANCE:Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestParserFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestParserFactory;-><init>(Lcz/msebera/android/httpclient/message/LineParser;Lcz/msebera/android/httpclient/HttpRequestFactory;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/message/LineParser;Lcz/msebera/android/httpclient/HttpRequestFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcz/msebera/android/httpclient/message/BasicLineParser;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicLineParser;

    :goto_0
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestParserFactory;->lineParser:Lcz/msebera/android/httpclient/message/LineParser;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    sget-object p2, Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;->INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;

    :goto_1
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestParserFactory;->requestFactory:Lcz/msebera/android/httpclient/HttpRequestFactory;

    return-void
.end method


# virtual methods
.method public create(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/config/MessageConstraints;)Lcz/msebera/android/httpclient/io/HttpMessageParser;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/io/SessionInputBuffer;",
            "Lcz/msebera/android/httpclient/config/MessageConstraints;",
            ")",
            "Lcz/msebera/android/httpclient/io/HttpMessageParser<",
            "Lcz/msebera/android/httpclient/HttpRequest;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestParser;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestParserFactory;->lineParser:Lcz/msebera/android/httpclient/message/LineParser;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestParserFactory;->requestFactory:Lcz/msebera/android/httpclient/HttpRequestFactory;

    invoke-direct {v0, p1, v1, v2, p2}, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestParser;-><init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/message/LineParser;Lcz/msebera/android/httpclient/HttpRequestFactory;Lcz/msebera/android/httpclient/config/MessageConstraints;)V

    return-object v0
.end method
