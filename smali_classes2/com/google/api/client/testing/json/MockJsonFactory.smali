.class public Lcom/google/api/client/testing/json/MockJsonFactory;
.super Lcom/google/api/client/json/JsonFactory;
.source "SourceFile"


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/api/client/json/JsonFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createJsonGenerator(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/JsonGenerator;
    .locals 0

    new-instance p1, Lcom/google/api/client/testing/json/MockJsonGenerator;

    invoke-direct {p1, p0}, Lcom/google/api/client/testing/json/MockJsonGenerator;-><init>(Lcom/google/api/client/json/JsonFactory;)V

    return-object p1
.end method

.method public createJsonGenerator(Ljava/io/Writer;)Lcom/google/api/client/json/JsonGenerator;
    .locals 0

    new-instance p1, Lcom/google/api/client/testing/json/MockJsonGenerator;

    invoke-direct {p1, p0}, Lcom/google/api/client/testing/json/MockJsonGenerator;-><init>(Lcom/google/api/client/json/JsonFactory;)V

    return-object p1
.end method

.method public createJsonParser(Ljava/io/InputStream;)Lcom/google/api/client/json/JsonParser;
    .locals 0

    new-instance p1, Lcom/google/api/client/testing/json/MockJsonParser;

    invoke-direct {p1, p0}, Lcom/google/api/client/testing/json/MockJsonParser;-><init>(Lcom/google/api/client/json/JsonFactory;)V

    return-object p1
.end method

.method public createJsonParser(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/JsonParser;
    .locals 0

    new-instance p1, Lcom/google/api/client/testing/json/MockJsonParser;

    invoke-direct {p1, p0}, Lcom/google/api/client/testing/json/MockJsonParser;-><init>(Lcom/google/api/client/json/JsonFactory;)V

    return-object p1
.end method

.method public createJsonParser(Ljava/io/Reader;)Lcom/google/api/client/json/JsonParser;
    .locals 0

    new-instance p1, Lcom/google/api/client/testing/json/MockJsonParser;

    invoke-direct {p1, p0}, Lcom/google/api/client/testing/json/MockJsonParser;-><init>(Lcom/google/api/client/json/JsonFactory;)V

    return-object p1
.end method

.method public createJsonParser(Ljava/lang/String;)Lcom/google/api/client/json/JsonParser;
    .locals 0

    new-instance p1, Lcom/google/api/client/testing/json/MockJsonParser;

    invoke-direct {p1, p0}, Lcom/google/api/client/testing/json/MockJsonParser;-><init>(Lcom/google/api/client/json/JsonFactory;)V

    return-object p1
.end method
