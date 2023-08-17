.class public interface abstract Lorg/apache/poi/javax/xml/stream/XMLEventReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# virtual methods
.method public abstract close()V
.end method

.method public abstract getElementText()Ljava/lang/String;
.end method

.method public abstract getProperty(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract hasNext()Z
.end method

.method public abstract nextEvent()Lorg/apache/poi/javax/xml/stream/events/XMLEvent;
.end method

.method public abstract nextTag()Lorg/apache/poi/javax/xml/stream/events/XMLEvent;
.end method

.method public abstract peek()Lorg/apache/poi/javax/xml/stream/events/XMLEvent;
.end method
