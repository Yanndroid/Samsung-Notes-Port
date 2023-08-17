.class public interface abstract Lorg/apache/poi/javax/xml/stream/XMLEventWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/javax/xml/stream/util/XMLEventConsumer;


# virtual methods
.method public abstract add(Lorg/apache/poi/javax/xml/stream/XMLEventReader;)V
.end method

.method public abstract add(Lorg/apache/poi/javax/xml/stream/events/XMLEvent;)V
.end method

.method public abstract close()V
.end method

.method public abstract flush()V
.end method

.method public abstract getNamespaceContext()Lorg/apache/poi/javax/xml/namespace/NamespaceContext;
.end method

.method public abstract getPrefix(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract setDefaultNamespace(Ljava/lang/String;)V
.end method

.method public abstract setNamespaceContext(Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)V
.end method

.method public abstract setPrefix(Ljava/lang/String;Ljava/lang/String;)V
.end method
