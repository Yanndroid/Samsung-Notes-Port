.class Lcom/nimbusds/jose/shaded/json/parser/JSONParserReader;
.super Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;
.source "SourceFile"


# instance fields
.field private in:Ljava/io/Reader;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public parse(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;->FACTORY_SIMPLE:Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;

    sget-object v1, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerDumy;->HANDLER:Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerDumy;

    invoke-virtual {p0, p1, v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserReader;->parse(Ljava/io/Reader;Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/io/Reader;Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerDumy;->HANDLER:Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerDumy;

    invoke-virtual {p0, p1, p2, v0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserReader;->parse(Ljava/io/Reader;Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/io/Reader;Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserReader;->in:Ljava/io/Reader;

    const/4 p1, -0x1

    iput p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->pos:I

    invoke-super {p0, p2, p3}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->parse(Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read()V
    .locals 2

    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1a

    goto :goto_0

    :cond_0
    int-to-char v0, v0

    :goto_0
    iput-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->c:C

    iget v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->pos:I

    return-void
.end method

.method public readNoEnd()V
    .locals 4

    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->c:C

    return-void

    :cond_0
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->pos:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x3

    const-string v3, "EOF"

    invoke-direct {v0, v1, v2, v3}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0
.end method

.method public readS()V
    .locals 2

    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->sb:Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;

    iget-char v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->c:C

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;->append(C)V

    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1a

    iput-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->c:C

    goto :goto_0

    :cond_0
    int-to-char v0, v0

    iput-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->c:C

    iget v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;->pos:I

    :goto_0
    return-void
.end method
