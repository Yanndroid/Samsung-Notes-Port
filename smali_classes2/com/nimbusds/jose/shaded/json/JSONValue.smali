.class public Lcom/nimbusds/jose/shaded/json/JSONValue;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static COMPRESSION:Lcom/nimbusds/jose/shaded/json/JSONStyle;

.field private static final FACTORY_FAKE_COINTAINER:Lcom/nimbusds/jose/shaded/json/parser/FakeContainerFactory;

.field public static defaultWriter:Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->NO_COMPRESS:Lcom/nimbusds/jose/shaded/json/JSONStyle;

    sput-object v0, Lcom/nimbusds/jose/shaded/json/JSONValue;->COMPRESSION:Lcom/nimbusds/jose/shaded/json/JSONStyle;

    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/FakeContainerFactory;

    invoke-direct {v0}, Lcom/nimbusds/jose/shaded/json/parser/FakeContainerFactory;-><init>()V

    sput-object v0, Lcom/nimbusds/jose/shaded/json/JSONValue;->FACTORY_FAKE_COINTAINER:Lcom/nimbusds/jose/shaded/json/parser/FakeContainerFactory;

    new-instance v0, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;

    invoke-direct {v0}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;-><init>()V

    sput-object v0, Lcom/nimbusds/jose/shaded/json/JSONValue;->defaultWriter:Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SAXParse(Ljava/io/InputStream;Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;)V
    .locals 2

    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;

    sget v1, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;-><init>(I)V

    sget-object v1, Lcom/nimbusds/jose/shaded/json/JSONValue;->FACTORY_FAKE_COINTAINER:Lcom/nimbusds/jose/shaded/json/parser/FakeContainerFactory;

    invoke-virtual {v0, p0, v1, p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->parse(Ljava/io/InputStream;Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;)Ljava/lang/Object;

    return-void
.end method

.method public static SAXParse(Ljava/io/Reader;Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;)V
    .locals 2

    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;

    sget v1, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;-><init>(I)V

    sget-object v1, Lcom/nimbusds/jose/shaded/json/JSONValue;->FACTORY_FAKE_COINTAINER:Lcom/nimbusds/jose/shaded/json/parser/FakeContainerFactory;

    invoke-virtual {v0, p0, v1, p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->parse(Ljava/io/Reader;Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;)Ljava/lang/Object;

    return-void
.end method

.method public static SAXParse(Ljava/lang/String;Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;)V
    .locals 2

    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;

    sget v1, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;-><init>(I)V

    sget-object v1, Lcom/nimbusds/jose/shaded/json/JSONValue;->FACTORY_FAKE_COINTAINER:Lcom/nimbusds/jose/shaded/json/parser/FakeContainerFactory;

    invoke-virtual {v0, p0, v1, p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->parse(Ljava/lang/String;Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;)Ljava/lang/Object;

    return-void
.end method

.method public static compress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->MAX_COMPRESS:Lcom/nimbusds/jose/shaded/json/JSONStyle;

    invoke-static {p0, v0}, Lcom/nimbusds/jose/shaded/json/JSONValue;->compress(Ljava/lang/String;Lcom/nimbusds/jose/shaded/json/JSONStyle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static compress(Ljava/lang/String;Lcom/nimbusds/jose/shaded/json/JSONStyle;)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;

    invoke-direct {v1, v0, p1}, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;-><init>(Ljava/lang/Appendable;Lcom/nimbusds/jose/shaded/json/JSONStyle;)V

    new-instance p1, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;

    sget v2, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {p1, v2}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;-><init>(I)V

    sget-object v2, Lcom/nimbusds/jose/shaded/json/JSONValue;->FACTORY_FAKE_COINTAINER:Lcom/nimbusds/jose/shaded/json/parser/FakeContainerFactory;

    invoke-virtual {p1, p0, v2, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->parse(Ljava/lang/String;Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nimbusds/jose/shaded/json/JSONValue;->COMPRESSION:Lcom/nimbusds/jose/shaded/json/JSONStyle;

    invoke-static {p0, v0}, Lcom/nimbusds/jose/shaded/json/JSONValue;->escape(Ljava/lang/String;Lcom/nimbusds/jose/shaded/json/JSONStyle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static escape(Ljava/lang/String;Lcom/nimbusds/jose/shaded/json/JSONStyle;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0, v0}, Lcom/nimbusds/jose/shaded/json/JSONStyle;->escape(Ljava/lang/String;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static escape(Ljava/lang/String;Ljava/lang/Appendable;)V
    .locals 1

    sget-object v0, Lcom/nimbusds/jose/shaded/json/JSONValue;->COMPRESSION:Lcom/nimbusds/jose/shaded/json/JSONStyle;

    invoke-static {p0, p1, v0}, Lcom/nimbusds/jose/shaded/json/JSONValue;->escape(Ljava/lang/String;Ljava/lang/Appendable;Lcom/nimbusds/jose/shaded/json/JSONStyle;)V

    return-void
.end method

.method public static escape(Ljava/lang/String;Ljava/lang/Appendable;Lcom/nimbusds/jose/shaded/json/JSONStyle;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, p0, p1}, Lcom/nimbusds/jose/shaded/json/JSONStyle;->escape(Ljava/lang/String;Ljava/lang/Appendable;)V

    return-void
.end method

.method public static isValidJson(Ljava/io/Reader;)Z
    .locals 2

    :try_start_0
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;

    sget v1, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;-><init>(I)V

    sget-object v1, Lcom/nimbusds/jose/shaded/json/JSONValue;->FACTORY_FAKE_COINTAINER:Lcom/nimbusds/jose/shaded/json/parser/FakeContainerFactory;

    invoke-virtual {v0, p0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->parse(Ljava/io/Reader;Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/nimbusds/jose/shaded/json/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidJson(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;

    sget v1, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;-><init>(I)V

    sget-object v1, Lcom/nimbusds/jose/shaded/json/JSONValue;->FACTORY_FAKE_COINTAINER:Lcom/nimbusds/jose/shaded/json/parser/FakeContainerFactory;

    invoke-virtual {v0, p0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->parse(Ljava/lang/String;Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/nimbusds/jose/shaded/json/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidJsonStrict(Ljava/io/Reader;)Z
    .locals 2

    :try_start_0
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;-><init>(I)V

    sget-object v1, Lcom/nimbusds/jose/shaded/json/JSONValue;->FACTORY_FAKE_COINTAINER:Lcom/nimbusds/jose/shaded/json/parser/FakeContainerFactory;

    invoke-virtual {v0, p0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->parse(Ljava/io/Reader;Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/nimbusds/jose/shaded/json/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidJsonStrict(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;-><init>(I)V

    sget-object v1, Lcom/nimbusds/jose/shaded/json/JSONValue;->FACTORY_FAKE_COINTAINER:Lcom/nimbusds/jose/shaded/json/parser/FakeContainerFactory;

    invoke-virtual {v0, p0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->parse(Ljava/lang/String;Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/nimbusds/jose/shaded/json/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static parse(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;

    sget v1, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->parse(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parse(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;

    sget v1, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->parse(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;

    sget v1, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parse([B)Ljava/lang/Object;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;

    sget v1, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->parse([B)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parse([BII)Ljava/lang/Object;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;

    sget v1, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;-><init>(I)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->parse([BII)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseKeepingOrder(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;

    sget v1, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;-><init>(I)V

    sget-object v1, Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;->FACTORY_ORDERED:Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;

    invoke-virtual {v0, p0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->parse(Ljava/io/InputStream;Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseKeepingOrder(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;

    sget v1, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;-><init>(I)V

    sget-object v1, Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;->FACTORY_ORDERED:Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;

    invoke-virtual {v0, p0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->parse(Ljava/io/Reader;Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseKeepingOrder(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;

    sget v1, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;-><init>(I)V

    sget-object v1, Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;->FACTORY_ORDERED:Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;

    invoke-virtual {v0, p0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->parse(Ljava/lang/String;Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseKeepingOrder([B)Ljava/lang/Object;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;

    sget v1, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;-><init>(I)V

    sget-object v1, Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;->FACTORY_ORDERED:Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;

    invoke-virtual {v0, p0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->parse([BLcom/nimbusds/jose/shaded/json/parser/ContainerFactory;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseKeepingOrder([BII)Ljava/lang/Object;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;

    sget v1, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;-><init>(I)V

    sget-object v1, Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;->FACTORY_ORDERED:Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->parse([BIILcom/nimbusds/jose/shaded/json/parser/ContainerFactory;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseStrict(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;-><init>(I)V

    sget-object v1, Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;->FACTORY_SIMPLE:Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;

    invoke-virtual {v0, p0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->parse(Ljava/io/InputStream;Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parseStrict(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;-><init>(I)V

    sget-object v1, Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;->FACTORY_SIMPLE:Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;

    invoke-virtual {v0, p0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->parse(Ljava/io/Reader;Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parseStrict(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;-><init>(I)V

    sget-object v1, Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;->FACTORY_SIMPLE:Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;

    invoke-virtual {v0, p0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->parse(Ljava/lang/String;Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parseStrict([B)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;-><init>(I)V

    sget-object v1, Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;->FACTORY_SIMPLE:Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;

    invoke-virtual {v0, p0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->parse([BLcom/nimbusds/jose/shaded/json/parser/ContainerFactory;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parseStrict([BII)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;-><init>(I)V

    sget-object v1, Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;->FACTORY_SIMPLE:Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->parse([BIILcom/nimbusds/jose/shaded/json/parser/ContainerFactory;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parseWithException(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;

    sget v1, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;-><init>(I)V

    sget-object v1, Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;->FACTORY_SIMPLE:Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;

    invoke-virtual {v0, p0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->parse(Ljava/io/InputStream;Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parseWithException(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;

    sget v1, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;-><init>(I)V

    sget-object v1, Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;->FACTORY_SIMPLE:Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;

    invoke-virtual {v0, p0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->parse(Ljava/io/Reader;Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parseWithException(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;

    sget v1, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;-><init>(I)V

    sget-object v1, Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;->FACTORY_SIMPLE:Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;

    invoke-virtual {v0, p0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->parse(Ljava/lang/String;Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parseWithException([B)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;

    sget v1, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;-><init>(I)V

    sget-object v1, Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;->FACTORY_SIMPLE:Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;

    invoke-virtual {v0, p0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->parse([BLcom/nimbusds/jose/shaded/json/parser/ContainerFactory;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parseWithException([BII)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;

    sget v1, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->DEFAULT_PERMISSIVE_MODE:I

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;-><init>(I)V

    sget-object v1, Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;->FACTORY_SIMPLE:Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParser;->parse([BIILcom/nimbusds/jose/shaded/json/parser/ContainerFactory;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nimbusds/jose/shaded/json/JSONValue;->COMPRESSION:Lcom/nimbusds/jose/shaded/json/JSONStyle;

    invoke-static {p0, v0}, Lcom/nimbusds/jose/shaded/json/JSONValue;->toJSONString(Ljava/lang/Object;Lcom/nimbusds/jose/shaded/json/JSONStyle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toJSONString(Ljava/lang/Object;Lcom/nimbusds/jose/shaded/json/JSONStyle;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    invoke-static {p0, v0, p1}, Lcom/nimbusds/jose/shaded/json/JSONValue;->writeJSONString(Ljava/lang/Object;Ljava/lang/Appendable;Lcom/nimbusds/jose/shaded/json/JSONStyle;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static uncompress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nimbusds/jose/shaded/json/JSONStyle;->NO_COMPRESS:Lcom/nimbusds/jose/shaded/json/JSONStyle;

    invoke-static {p0, v0}, Lcom/nimbusds/jose/shaded/json/JSONValue;->compress(Ljava/lang/String;Lcom/nimbusds/jose/shaded/json/JSONStyle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static writeJSONString(Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 1

    sget-object v0, Lcom/nimbusds/jose/shaded/json/JSONValue;->COMPRESSION:Lcom/nimbusds/jose/shaded/json/JSONStyle;

    invoke-static {p0, p1, v0}, Lcom/nimbusds/jose/shaded/json/JSONValue;->writeJSONString(Ljava/lang/Object;Ljava/lang/Appendable;Lcom/nimbusds/jose/shaded/json/JSONStyle;)V

    return-void
.end method

.method public static writeJSONString(Ljava/lang/Object;Ljava/lang/Appendable;Lcom/nimbusds/jose/shaded/json/JSONStyle;)V
    .locals 5

    if-nez p0, :cond_0

    const-string p0, "null"

    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/nimbusds/jose/shaded/json/JSONValue;->defaultWriter:Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;

    invoke-virtual {v1, v0}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->getWrite(Ljava/lang/Class;)Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->arrayWriter:Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/nimbusds/jose/shaded/json/JSONValue;->defaultWriter:Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->getWriterByInterface(Ljava/lang/Class;)Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->beansWriter:Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;

    :cond_2
    :goto_0
    sget-object v2, Lcom/nimbusds/jose/shaded/json/JSONValue;->defaultWriter:Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v1, v3}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriter;->registerWriter(Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;[Ljava/lang/Class;)V

    :cond_3
    invoke-interface {v1, p0, p1, p2}, Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;->writeJSONString(Ljava/lang/Object;Ljava/lang/Appendable;Lcom/nimbusds/jose/shaded/json/JSONStyle;)V

    return-void
.end method
