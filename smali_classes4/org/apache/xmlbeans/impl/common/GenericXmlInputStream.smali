.class public Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/xml/stream/XMLInputStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;
    }
.end annotation


# instance fields
.field private _elementCount:I

.field private _initialized:Z

.field private _master:Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;

.field private _nextEvent:Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->_master:Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->_elementCount:I

    return-void
.end method

.method private constructor <init>(Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->_master:Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;

    invoke-direct {p1}, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->ensureInit()V

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->_nextEvent:Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->_nextEvent:Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;

    return-void
.end method

.method private ensureInit()V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->_master:Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;

    iget-boolean v1, v0, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->_initialized:Z

    if-nez v1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->getNextEvent()Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->_nextEvent:Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;
    :try_end_0
    .catch Lorg/apache/xmlbeans/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->_master:Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->_initialized:Z

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method private getNextEvent()Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->nextEvent()Lorg/apache/xmlbeans/xml/stream/XMLEvent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;

    invoke-direct {v1, p0, v0}, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;-><init>(Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;Lorg/apache/xmlbeans/xml/stream/XMLEvent;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public getReferenceResolver()Lorg/apache/xmlbeans/xml/stream/ReferenceResolver;
    .locals 2

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->ensureInit()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not impl"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSubStream()Lorg/apache/xmlbeans/xml/stream/XMLInputStream;
    .locals 2

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->ensureInit()V

    new-instance v0, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;-><init>(Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->skip(I)Z

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->ensureInit()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->_nextEvent:Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Lorg/apache/xmlbeans/xml/stream/XMLEvent;
    .locals 4

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->ensureInit()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->_nextEvent:Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;->_next:Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->_master:Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->getNextEvent()Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;->_next:Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;

    :cond_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->_nextEvent:Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;->_next:Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->_nextEvent:Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;

    :cond_1
    const/4 v1, 0x0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;->getType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->_elementCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->_elementCount:I

    if-gtz v2, :cond_4

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->_nextEvent:Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    iget v1, p0, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->_elementCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->_elementCount:I

    :cond_4
    :goto_0
    iget-object v0, v0, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;->_event:Lorg/apache/xmlbeans/xml/stream/XMLEvent;

    return-object v0
.end method

.method public nextEvent()Lorg/apache/xmlbeans/xml/stream/XMLEvent;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "nextEvent not overridden"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public peek()Lorg/apache/xmlbeans/xml/stream/XMLEvent;
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->ensureInit()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->_nextEvent:Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;->_event:Lorg/apache/xmlbeans/xml/stream/XMLEvent;

    return-object v0
.end method

.method public setReferenceResolver(Lorg/apache/xmlbeans/xml/stream/ReferenceResolver;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->ensureInit()V

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not impl"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public skip()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->next()Lorg/apache/xmlbeans/xml/stream/XMLEvent;

    return-void
.end method

.method public skip(I)Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->ensureInit()V

    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->_nextEvent:Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;->getType()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->next()Lorg/apache/xmlbeans/xml/stream/XMLEvent;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public skip(Lorg/apache/xmlbeans/xml/stream/XMLName;)Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->ensureInit()V

    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->_nextEvent:Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->_nextEvent:Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;->getName()Lorg/apache/xmlbeans/xml/stream/XMLName;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->next()Lorg/apache/xmlbeans/xml/stream/XMLEvent;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public skip(Lorg/apache/xmlbeans/xml/stream/XMLName;I)Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->ensureInit()V

    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->_nextEvent:Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;->getType()I

    move-result v0

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->_nextEvent:Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->_nextEvent:Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;->getName()Lorg/apache/xmlbeans/xml/stream/XMLName;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->next()Lorg/apache/xmlbeans/xml/stream/XMLEvent;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public skipElement()V
    .locals 4

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->ensureInit()V

    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->_nextEvent:Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->next()Lorg/apache/xmlbeans/xml/stream/XMLEvent;

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->_nextEvent:Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream$EventItem;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->next()Lorg/apache/xmlbeans/xml/stream/XMLEvent;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/xmlbeans/xml/stream/XMLEvent;->getType()I

    move-result v2

    if-ne v2, v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_3

    goto :goto_4

    :cond_3
    :goto_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/common/GenericXmlInputStream;->next()Lorg/apache/xmlbeans/xml/stream/XMLEvent;

    goto :goto_2

    :cond_4
    :goto_4
    return-void
.end method
