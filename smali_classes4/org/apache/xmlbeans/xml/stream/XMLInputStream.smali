.class public interface abstract Lorg/apache/xmlbeans/xml/stream/XMLInputStream;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract close()V
.end method

.method public abstract getReferenceResolver()Lorg/apache/xmlbeans/xml/stream/ReferenceResolver;
.end method

.method public abstract getSubStream()Lorg/apache/xmlbeans/xml/stream/XMLInputStream;
.end method

.method public abstract hasNext()Z
.end method

.method public abstract next()Lorg/apache/xmlbeans/xml/stream/XMLEvent;
.end method

.method public abstract peek()Lorg/apache/xmlbeans/xml/stream/XMLEvent;
.end method

.method public abstract setReferenceResolver(Lorg/apache/xmlbeans/xml/stream/ReferenceResolver;)V
.end method

.method public abstract skip()V
.end method

.method public abstract skip(I)Z
.end method

.method public abstract skip(Lorg/apache/xmlbeans/xml/stream/XMLName;)Z
.end method

.method public abstract skip(Lorg/apache/xmlbeans/xml/stream/XMLName;I)Z
.end method

.method public abstract skipElement()V
.end method
