.class public Lorg/apache/poi/javax/xml/stream/util/EventReaderDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/javax/xml/stream/XMLEventReader;


# instance fields
.field private reader:Lorg/apache/poi/javax/xml/stream/XMLEventReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/javax/xml/stream/XMLEventReader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/javax/xml/stream/util/EventReaderDelegate;->reader:Lorg/apache/poi/javax/xml/stream/XMLEventReader;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/xml/stream/util/EventReaderDelegate;->reader:Lorg/apache/poi/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLEventReader;->close()V

    return-void
.end method

.method public getElementText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/xml/stream/util/EventReaderDelegate;->reader:Lorg/apache/poi/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLEventReader;->getElementText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/apache/poi/javax/xml/stream/XMLEventReader;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/xml/stream/util/EventReaderDelegate;->reader:Lorg/apache/poi/javax/xml/stream/XMLEventReader;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/xml/stream/util/EventReaderDelegate;->reader:Lorg/apache/poi/javax/xml/stream/XMLEventReader;

    invoke-interface {v0, p1}, Lorg/apache/poi/javax/xml/stream/XMLEventReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/xml/stream/util/EventReaderDelegate;->reader:Lorg/apache/poi/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLEventReader;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/xml/stream/util/EventReaderDelegate;->reader:Lorg/apache/poi/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextEvent()Lorg/apache/poi/javax/xml/stream/events/XMLEvent;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/xml/stream/util/EventReaderDelegate;->reader:Lorg/apache/poi/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLEventReader;->nextEvent()Lorg/apache/poi/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    return-object v0
.end method

.method public nextTag()Lorg/apache/poi/javax/xml/stream/events/XMLEvent;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/xml/stream/util/EventReaderDelegate;->reader:Lorg/apache/poi/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLEventReader;->nextTag()Lorg/apache/poi/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    return-object v0
.end method

.method public peek()Lorg/apache/poi/javax/xml/stream/events/XMLEvent;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/xml/stream/util/EventReaderDelegate;->reader:Lorg/apache/poi/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Lorg/apache/poi/javax/xml/stream/XMLEventReader;->peek()Lorg/apache/poi/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/xml/stream/util/EventReaderDelegate;->reader:Lorg/apache/poi/javax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method

.method public setParent(Lorg/apache/poi/javax/xml/stream/XMLEventReader;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/javax/xml/stream/util/EventReaderDelegate;->reader:Lorg/apache/poi/javax/xml/stream/XMLEventReader;

    return-void
.end method
