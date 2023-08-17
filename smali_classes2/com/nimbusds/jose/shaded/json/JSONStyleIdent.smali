.class public Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;
.super Lcom/nimbusds/jose/shaded/json/JSONStyle;
.source "SourceFile"


# instance fields
.field public deep:I

.field public identChar:C

.field public newline:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/json/JSONStyle;-><init>()V

    const/16 v0, 0x20

    iput-char v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->identChar:C

    const-string v0, "\n"

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->newline:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->deep:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nimbusds/jose/shaded/json/JSONStyle;-><init>(I)V

    const/16 p1, 0x20

    iput-char p1, p0, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->identChar:C

    const-string p1, "\n"

    iput-object p1, p0, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->newline:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->deep:I

    return-void
.end method

.method private ident(Ljava/lang/Appendable;)V
    .locals 2

    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->newline:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->deep:I

    if-ge v0, v1, :cond_0

    iget-char v1, p0, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->identChar:C

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public arrayNextElm(Ljava/lang/Appendable;)V
    .locals 1

    const/16 v0, 0x2c

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    invoke-direct {p0, p1}, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->ident(Ljava/lang/Appendable;)V

    return-void
.end method

.method public arrayObjectEnd(Ljava/lang/Appendable;)V
    .locals 0

    return-void
.end method

.method public arrayStart(Ljava/lang/Appendable;)V
    .locals 1

    const/16 v0, 0x5b

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    iget v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->deep:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->deep:I

    invoke-direct {p0, p1}, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->ident(Ljava/lang/Appendable;)V

    return-void
.end method

.method public arrayStop(Ljava/lang/Appendable;)V
    .locals 1

    iget v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->deep:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->deep:I

    invoke-direct {p0, p1}, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->ident(Ljava/lang/Appendable;)V

    const/16 v0, 0x5d

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public arrayfirstObject(Ljava/lang/Appendable;)V
    .locals 0

    return-void
.end method

.method public objectElmStop(Ljava/lang/Appendable;)V
    .locals 0

    return-void
.end method

.method public objectEndOfKey(Ljava/lang/Appendable;)V
    .locals 1

    const/16 v0, 0x3a

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public objectFirstStart(Ljava/lang/Appendable;)V
    .locals 0

    return-void
.end method

.method public objectNext(Ljava/lang/Appendable;)V
    .locals 1

    const/16 v0, 0x2c

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    invoke-direct {p0, p1}, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->ident(Ljava/lang/Appendable;)V

    return-void
.end method

.method public objectStart(Ljava/lang/Appendable;)V
    .locals 1

    const/16 v0, 0x7b

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    iget v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->deep:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->deep:I

    invoke-direct {p0, p1}, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->ident(Ljava/lang/Appendable;)V

    return-void
.end method

.method public objectStop(Ljava/lang/Appendable;)V
    .locals 1

    iget v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->deep:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->deep:I

    invoke-direct {p0, p1}, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->ident(Ljava/lang/Appendable;)V

    const/16 v0, 0x7d

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method
