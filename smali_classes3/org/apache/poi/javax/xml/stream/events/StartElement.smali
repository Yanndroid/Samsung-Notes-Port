.class public interface abstract Lorg/apache/poi/javax/xml/stream/events/StartElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/javax/xml/stream/events/XMLEvent;


# virtual methods
.method public abstract getAttributeByName(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/poi/javax/xml/stream/events/Attribute;
.end method

.method public abstract getAttributes()Ljava/util/Iterator;
.end method

.method public abstract getName()Lorg/apache/poi/javax/xml/namespace/QName;
.end method

.method public abstract getNamespaceContext()Lorg/apache/poi/javax/xml/namespace/NamespaceContext;
.end method

.method public abstract getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getNamespaces()Ljava/util/Iterator;
.end method
