.class public final Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/SerializationSpecifier;
.implements Ljava/lang/Cloneable;


# instance fields
.field private doctypePublic:Ljava/lang/String;

.field private doctypeSystem:Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private includingXMLDeclaration:Z

.field private indent:I

.field private indenting:Z

.field private serializationMethod:Luk/ac/ed/ph/snuggletex/SerializationMethod;

.field private usingNamedEntities:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Luk/ac/ed/ph/snuggletex/SerializationMethod;->XML:Luk/ac/ed/ph/snuggletex/SerializationMethod;

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;->serializationMethod:Luk/ac/ed/ph/snuggletex/SerializationMethod;

    const-string v0, "UTF-8"

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;->encoding:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;->indent:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    invoke-direct {v1, v0}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDoctypePublic()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;->doctypePublic:Ljava/lang/String;

    return-object v0
.end method

.method public getDoctypeSystem()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;->doctypeSystem:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getIndent()I
    .locals 1

    iget v0, p0, Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;->indent:I

    return v0
.end method

.method public getSerializationMethod()Luk/ac/ed/ph/snuggletex/SerializationMethod;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;->serializationMethod:Luk/ac/ed/ph/snuggletex/SerializationMethod;

    return-object v0
.end method

.method public isIncludingXMLDeclaration()Z
    .locals 1

    iget-boolean v0, p0, Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;->includingXMLDeclaration:Z

    return v0
.end method

.method public isIndenting()Z
    .locals 1

    iget-boolean v0, p0, Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;->indenting:Z

    return v0
.end method

.method public isUsingNamedEntities()Z
    .locals 1

    iget-boolean v0, p0, Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;->usingNamedEntities:Z

    return v0
.end method

.method public setDoctypePublic(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;->doctypePublic:Ljava/lang/String;

    return-void
.end method

.method public setDoctypeSystem(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;->doctypeSystem:Ljava/lang/String;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1

    const-string v0, "encoding"

    invoke-static {p1, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setIncludingXMLDeclaration(Z)V
    .locals 0

    iput-boolean p1, p0, Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;->includingXMLDeclaration:Z

    return-void
.end method

.method public setIndent(I)V
    .locals 1

    if-ltz p1, :cond_0

    iput p1, p0, Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;->indent:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "indent must be non-negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIndenting(Z)V
    .locals 0

    iput-boolean p1, p0, Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;->indenting:Z

    return-void
.end method

.method public setSerializationMethod(Luk/ac/ed/ph/snuggletex/SerializationMethod;)V
    .locals 1

    const-string v0, "serializationMethod"

    invoke-static {p1, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;->serializationMethod:Luk/ac/ed/ph/snuggletex/SerializationMethod;

    return-void
.end method

.method public setUsingNamedEntities(Z)V
    .locals 0

    iput-boolean p1, p0, Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;->usingNamedEntities:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Luk/ac/ed/ph/snuggletex/internal/util/ObjectUtilities;->beanToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
