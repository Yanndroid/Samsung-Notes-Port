.class public Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;
.super Luk/ac/ed/ph/snuggletex/DOMOutputOptions;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/SerializationSpecifier;


# instance fields
.field private final serializationOptions:Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;-><init>()V

    new-instance v0, Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;

    invoke-direct {v0}, Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;-><init>()V

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->serializationOptions:Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;

    return-void
.end method


# virtual methods
.method public getDoctypePublic()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->serializationOptions:Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;->getDoctypePublic()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDoctypeSystem()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->serializationOptions:Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;->getDoctypeSystem()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->serializationOptions:Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;->getEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndent()I
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->serializationOptions:Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;->getIndent()I

    move-result v0

    return v0
.end method

.method public getSerializationMethod()Luk/ac/ed/ph/snuggletex/SerializationMethod;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->serializationOptions:Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;->getSerializationMethod()Luk/ac/ed/ph/snuggletex/SerializationMethod;

    move-result-object v0

    return-object v0
.end method

.method public isIncludingXMLDeclaration()Z
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->serializationOptions:Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;->isIncludingXMLDeclaration()Z

    move-result v0

    return v0
.end method

.method public isIndenting()Z
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->serializationOptions:Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;->isIndenting()Z

    move-result v0

    return v0
.end method

.method public isUsingNamedEntities()Z
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->serializationOptions:Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;->isUsingNamedEntities()Z

    move-result v0

    return v0
.end method

.method public setDoctypePublic(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->serializationOptions:Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;

    invoke-virtual {v0, p1}, Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;->setDoctypePublic(Ljava/lang/String;)V

    return-void
.end method

.method public setDoctypeSystem(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->serializationOptions:Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;

    invoke-virtual {v0, p1}, Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;->setDoctypeSystem(Ljava/lang/String;)V

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->serializationOptions:Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;

    invoke-virtual {v0, p1}, Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;->setEncoding(Ljava/lang/String;)V

    return-void
.end method

.method public setIncludingXMLDeclaration(Z)V
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->serializationOptions:Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;

    invoke-virtual {v0, p1}, Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;->setIncludingXMLDeclaration(Z)V

    return-void
.end method

.method public setIndent(I)V
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->serializationOptions:Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;

    invoke-virtual {v0, p1}, Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;->setIndent(I)V

    return-void
.end method

.method public setIndenting(Z)V
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->serializationOptions:Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;

    invoke-virtual {v0, p1}, Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;->setIndenting(Z)V

    return-void
.end method

.method public setSerializationMethod(Luk/ac/ed/ph/snuggletex/SerializationMethod;)V
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->serializationOptions:Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;

    invoke-virtual {v0, p1}, Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;->setSerializationMethod(Luk/ac/ed/ph/snuggletex/SerializationMethod;)V

    return-void
.end method

.method public setUsingNamedEntities(Z)V
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;->serializationOptions:Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;

    invoke-virtual {v0, p1}, Luk/ac/ed/ph/snuggletex/utilities/SerializationOptions;->setUsingNamedEntities(Z)V

    return-void
.end method
