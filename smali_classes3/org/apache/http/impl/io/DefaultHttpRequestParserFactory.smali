.class public Lorg/apache/http/impl/io/DefaultHttpRequestParserFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/io/HttpMessageParserFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/io/HttpMessageParserFactory<",
        "Lorg/apache/http/HttpRequest;",
        ">;"
    }
.end annotation

.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/http/impl/io/DefaultHttpRequestParserFactory;


# instance fields
.field private final lineParser:Lorg/apache/http/message/LineParser;

.field private final requestFactory:Lorg/apache/http/HttpRequestFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/http/impl/io/DefaultHttpRequestParserFactory;

    invoke-direct {v0}, Lorg/apache/http/impl/io/DefaultHttpRequestParserFactory;-><init>()V

    sput-object v0, Lorg/apache/http/impl/io/DefaultHttpRequestParserFactory;->INSTANCE:Lorg/apache/http/impl/io/DefaultHttpRequestParserFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/apache/http/impl/io/DefaultHttpRequestParserFactory;-><init>(Lorg/apache/http/message/LineParser;Lorg/apache/http/HttpRequestFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/message/LineParser;Lorg/apache/http/HttpRequestFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/http/message/BasicLineParserHC4;->INSTANCE:Lorg/apache/http/message/BasicLineParserHC4;

    :goto_0
    iput-object p1, p0, Lorg/apache/http/impl/io/DefaultHttpRequestParserFactory;->lineParser:Lorg/apache/http/message/LineParser;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    sget-object p2, Lorg/apache/http/impl/DefaultHttpRequestFactoryHC4;->INSTANCE:Lorg/apache/http/impl/DefaultHttpRequestFactoryHC4;

    :goto_1
    iput-object p2, p0, Lorg/apache/http/impl/io/DefaultHttpRequestParserFactory;->requestFactory:Lorg/apache/http/HttpRequestFactory;

    return-void
.end method


# virtual methods
.method public create(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/config/MessageConstraints;)Lorg/apache/http/io/HttpMessageParser;
    .locals 3

    new-instance v0, Lorg/apache/http/impl/io/DefaultHttpRequestParser;

    iget-object v1, p0, Lorg/apache/http/impl/io/DefaultHttpRequestParserFactory;->lineParser:Lorg/apache/http/message/LineParser;

    iget-object v2, p0, Lorg/apache/http/impl/io/DefaultHttpRequestParserFactory;->requestFactory:Lorg/apache/http/HttpRequestFactory;

    invoke-direct {v0, p1, v1, v2, p2}, Lorg/apache/http/impl/io/DefaultHttpRequestParser;-><init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/HttpRequestFactory;Lorg/apache/http/config/MessageConstraints;)V

    return-object v0
.end method
