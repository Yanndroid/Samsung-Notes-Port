.class public Lcom/google/api/client/testing/json/MockJsonParser;
.super Lcom/google/api/client/json/JsonParser;
.source "SourceFile"


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation


# instance fields
.field private final factory:Lcom/google/api/client/json/JsonFactory;

.field private isClosed:Z


# direct methods
.method public constructor <init>(Lcom/google/api/client/json/JsonFactory;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/api/client/json/JsonParser;-><init>()V

    iput-object p1, p0, Lcom/google/api/client/testing/json/MockJsonParser;->factory:Lcom/google/api/client/json/JsonFactory;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/api/client/testing/json/MockJsonParser;->isClosed:Z

    return-void
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getByteValue()B
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentToken()Lcom/google/api/client/json/JsonToken;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFactory()Lcom/google/api/client/json/JsonFactory;
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/testing/json/MockJsonParser;->factory:Lcom/google/api/client/json/JsonFactory;

    return-object v0
.end method

.method public getFloatValue()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIntValue()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLongValue()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getShortValue()S
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/api/client/testing/json/MockJsonParser;->isClosed:Z

    return v0
.end method

.method public nextToken()Lcom/google/api/client/json/JsonToken;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public skipChildren()Lcom/google/api/client/json/JsonParser;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
