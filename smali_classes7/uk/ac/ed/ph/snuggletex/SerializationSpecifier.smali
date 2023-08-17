.class public interface abstract Luk/ac/ed/ph/snuggletex/SerializationSpecifier;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"

.field public static final DEFAULT_INDENT:I = 0x2


# virtual methods
.method public abstract getDoctypePublic()Ljava/lang/String;
.end method

.method public abstract getDoctypeSystem()Ljava/lang/String;
.end method

.method public abstract getEncoding()Ljava/lang/String;
.end method

.method public abstract getIndent()I
.end method

.method public abstract getSerializationMethod()Luk/ac/ed/ph/snuggletex/SerializationMethod;
.end method

.method public abstract isIncludingXMLDeclaration()Z
.end method

.method public abstract isIndenting()Z
.end method

.method public abstract isUsingNamedEntities()Z
.end method

.method public abstract setDoctypePublic(Ljava/lang/String;)V
.end method

.method public abstract setDoctypeSystem(Ljava/lang/String;)V
.end method

.method public abstract setEncoding(Ljava/lang/String;)V
.end method

.method public abstract setIncludingXMLDeclaration(Z)V
.end method

.method public abstract setIndent(I)V
.end method

.method public abstract setIndenting(Z)V
.end method

.method public abstract setSerializationMethod(Luk/ac/ed/ph/snuggletex/SerializationMethod;)V
.end method

.method public abstract setUsingNamedEntities(Z)V
.end method
