.class public final Luk/ac/ed/ph/snuggletex/SnuggleInput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;
    }
.end annotation


# instance fields
.field private encoding:Ljava/lang/String;

.field private final file:Ljava/io/File;

.field private identifier:Ljava/lang/String;

.field private final inputStream:Ljava/io/InputStream;

.field private final reader:Ljava/io/Reader;

.field private final string:Ljava/lang/String;

.field private stringRepresentation:Ljava/lang/String;

.field private final type:Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;

.field private uri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Luk/ac/ed/ph/snuggletex/SnuggleInput;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 8

    sget-object v1, Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;->FILE:Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Luk/ac/ed/ph/snuggletex/SnuggleInput;-><init>(Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;Ljava/lang/String;Ljava/io/File;Ljava/io/InputStream;Ljava/io/Reader;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    sget-object v1, Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;->FILE:Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Luk/ac/ed/ph/snuggletex/SnuggleInput;-><init>(Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;Ljava/lang/String;Ljava/io/File;Ljava/io/InputStream;Ljava/io/Reader;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Stream input @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Luk/ac/ed/ph/snuggletex/SnuggleInput;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 8

    sget-object v1, Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;->INPUT_STREAM:Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Luk/ac/ed/ph/snuggletex/SnuggleInput;-><init>(Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;Ljava/lang/String;Ljava/io/File;Ljava/io/InputStream;Ljava/io/Reader;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    sget-object v1, Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;->INPUT_STREAM:Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Luk/ac/ed/ph/snuggletex/SnuggleInput;-><init>(Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;Ljava/lang/String;Ljava/io/File;Ljava/io/InputStream;Ljava/io/Reader;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Reader input @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Luk/ac/ed/ph/snuggletex/SnuggleInput;-><init>(Ljava/io/Reader;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/lang/String;)V
    .locals 8

    sget-object v1, Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;->READER:Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Luk/ac/ed/ph/snuggletex/SnuggleInput;-><init>(Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;Ljava/lang/String;Ljava/io/File;Ljava/io/InputStream;Ljava/io/Reader;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Luk/ac/ed/ph/snuggletex/SnuggleInput;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    sget-object v1, Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;->STRING:Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Luk/ac/ed/ph/snuggletex/SnuggleInput;-><init>(Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;Ljava/lang/String;Ljava/io/File;Ljava/io/InputStream;Ljava/io/Reader;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;Ljava/lang/String;Ljava/io/File;Ljava/io/InputStream;Ljava/io/Reader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "identifier"

    invoke-static {p6, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Luk/ac/ed/ph/snuggletex/SnuggleInput$1;->$SwitchMap$uk$ac$ed$ph$snuggletex$SnuggleInput$InputType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v0, "reader"

    invoke-static {p5, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p2, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected switch case "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const-string v0, "inputStream"

    invoke-static {p4, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "file"

    invoke-static {p3, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "string"

    invoke-static {p2, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/SnuggleInput;->type:Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;

    iput-object p2, p0, Luk/ac/ed/ph/snuggletex/SnuggleInput;->string:Ljava/lang/String;

    iput-object p3, p0, Luk/ac/ed/ph/snuggletex/SnuggleInput;->file:Ljava/io/File;

    iput-object p4, p0, Luk/ac/ed/ph/snuggletex/SnuggleInput;->inputStream:Ljava/io/InputStream;

    iput-object p5, p0, Luk/ac/ed/ph/snuggletex/SnuggleInput;->reader:Ljava/io/Reader;

    iput-object p6, p0, Luk/ac/ed/ph/snuggletex/SnuggleInput;->identifier:Ljava/lang/String;

    iput-object p7, p0, Luk/ac/ed/ph/snuggletex/SnuggleInput;->encoding:Ljava/lang/String;

    return-void
.end method

.method private buildStringRepresentation()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Luk/ac/ed/ph/snuggletex/SnuggleInput;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/SnuggleInput;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleInput;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleInput;->file:Ljava/io/File;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleInput;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleInput;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getReader()Ljava/io/Reader;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleInput;->reader:Ljava/io/Reader;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleInput;->string:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleInput;->type:Luk/ac/ed/ph/snuggletex/SnuggleInput$InputType;

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleInput;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/SnuggleInput;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/SnuggleInput;->identifier:Ljava/lang/String;

    return-void
.end method

.method public setURI(Ljava/net/URI;)V
    .locals 0

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/SnuggleInput;->uri:Ljava/net/URI;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleInput;->stringRepresentation:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/SnuggleInput;->buildStringRepresentation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleInput;->stringRepresentation:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleInput;->stringRepresentation:Ljava/lang/String;

    return-object v0
.end method
