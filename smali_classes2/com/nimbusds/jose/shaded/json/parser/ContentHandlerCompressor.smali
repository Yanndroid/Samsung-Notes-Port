.class public Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;


# instance fields
.field public compression:Lcom/nimbusds/jose/shaded/json/JSONStyle;

.field public out:Ljava/lang/Appendable;

.field public pos:I

.field public stack:[I


# direct methods
.method public constructor <init>(Ljava/lang/Appendable;Lcom/nimbusds/jose/shaded/json/JSONStyle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->stack:[I

    iput-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->out:Ljava/lang/Appendable;

    iput-object p2, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->compression:Lcom/nimbusds/jose/shaded/json/JSONStyle;

    return-void
.end method

.method private isInArray()Z
    .locals 2

    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->stack:[I

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->pos:I

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isInObject()Z
    .locals 2

    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->stack:[I

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->pos:I

    aget v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private push(I)V
    .locals 4

    iget v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->pos:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->pos:I

    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->stack:[I

    array-length v2, v1

    const/4 v3, 0x0

    if-lt v0, v2, :cond_0

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    array-length v2, v1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->stack:[I

    :cond_0
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->stack:[I

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->pos:I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    aput v3, v0, v1

    return-void
.end method


# virtual methods
.method public endArray()Z
    .locals 2

    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->out:Ljava/lang/Appendable;

    const/16 v1, 0x5d

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    iget v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->pos:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->pos:I

    const/4 v0, 0x0

    return v0
.end method

.method public endJSON()V
    .locals 0

    return-void
.end method

.method public endObject()Z
    .locals 2

    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->out:Ljava/lang/Appendable;

    const/16 v1, 0x7d

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    iget v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->pos:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->pos:I

    const/4 v0, 0x0

    return v0
.end method

.method public endObjectEntry()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public primitive(Ljava/lang/Object;)Z
    .locals 4

    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->isInObject()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->stack:[I

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->pos:I

    add-int/lit8 v1, v1, 0x1

    aget v2, v0, v1

    add-int/lit8 v3, v2, 0x1

    aput v3, v0, v1

    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->out:Ljava/lang/Appendable;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->compression:Lcom/nimbusds/jose/shaded/json/JSONStyle;

    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->out:Ljava/lang/Appendable;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/nimbusds/jose/shaded/json/JSONStyle;->writeString(Ljava/lang/Appendable;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->out:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->compression:Lcom/nimbusds/jose/shaded/json/JSONStyle;

    invoke-static {p1, v0, v1}, Lcom/nimbusds/jose/shaded/json/JSONValue;->writeJSONString(Ljava/lang/Object;Ljava/lang/Appendable;Lcom/nimbusds/jose/shaded/json/JSONStyle;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public startArray()Z
    .locals 5

    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->isInArray()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->stack:[I

    iget v2, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->pos:I

    add-int/2addr v2, v1

    aget v3, v0, v2

    add-int/lit8 v4, v3, 0x1

    aput v4, v0, v2

    if-lez v3, :cond_0

    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->out:Ljava/lang/Appendable;

    const/16 v2, 0x2c

    invoke-interface {v0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_0
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->out:Ljava/lang/Appendable;

    const/16 v2, 0x5b

    invoke-interface {v0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    invoke-direct {p0, v1}, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->push(I)V

    const/4 v0, 0x0

    return v0
.end method

.method public startJSON()V
    .locals 0

    return-void
.end method

.method public startObject()Z
    .locals 4

    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->isInArray()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->stack:[I

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->pos:I

    add-int/lit8 v1, v1, 0x1

    aget v2, v0, v1

    add-int/lit8 v3, v2, 0x1

    aput v3, v0, v1

    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->out:Ljava/lang/Appendable;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_0
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->out:Ljava/lang/Appendable;

    const/16 v1, 0x7b

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->push(I)V

    return v0
.end method

.method public startObjectEntry(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->stack:[I

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->pos:I

    add-int/lit8 v1, v1, 0x1

    aget v2, v0, v1

    add-int/lit8 v3, v2, 0x1

    aput v3, v0, v1

    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->out:Ljava/lang/Appendable;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->out:Ljava/lang/Appendable;

    const-string v0, "null"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->compression:Lcom/nimbusds/jose/shaded/json/JSONStyle;

    invoke-virtual {v0, p1}, Lcom/nimbusds/jose/shaded/json/JSONStyle;->mustProtectKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->out:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->out:Ljava/lang/Appendable;

    const/16 v1, 0x22

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->out:Ljava/lang/Appendable;

    iget-object v2, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->compression:Lcom/nimbusds/jose/shaded/json/JSONStyle;

    invoke-static {p1, v0, v2}, Lcom/nimbusds/jose/shaded/json/JSONValue;->escape(Ljava/lang/String;Ljava/lang/Appendable;Lcom/nimbusds/jose/shaded/json/JSONStyle;)V

    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->out:Ljava/lang/Appendable;

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_0
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->out:Ljava/lang/Appendable;

    const/16 v0, 0x3a

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/4 p1, 0x0

    return p1
.end method
