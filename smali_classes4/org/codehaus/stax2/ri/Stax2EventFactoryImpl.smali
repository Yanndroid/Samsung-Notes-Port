.class public abstract Lorg/codehaus/stax2/ri/Stax2EventFactoryImpl;
.super Lorg/codehaus/stax2/evt/XMLEventFactory2;
.source "SourceFile"


# instance fields
.field public mLocation:Lorg/apache/poi/javax/xml/stream/Location;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/codehaus/stax2/evt/XMLEventFactory2;-><init>()V

    return-void
.end method


# virtual methods
.method public createAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/events/Attribute;
    .locals 8

    new-instance v7, Lorg/codehaus/stax2/ri/evt/AttributeEventImpl;

    iget-object v1, p0, Lorg/codehaus/stax2/ri/Stax2EventFactoryImpl;->mLocation:Lorg/apache/poi/javax/xml/stream/Location;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v0, v7

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lorg/codehaus/stax2/ri/evt/AttributeEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v7
.end method

.method public createAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/events/Attribute;
    .locals 8

    new-instance v7, Lorg/codehaus/stax2/ri/evt/AttributeEventImpl;

    iget-object v1, p0, Lorg/codehaus/stax2/ri/Stax2EventFactoryImpl;->mLocation:Lorg/apache/poi/javax/xml/stream/Location;

    const/4 v6, 0x1

    move-object v0, v7

    move-object v2, p3

    move-object v3, p2

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/codehaus/stax2/ri/evt/AttributeEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v7
.end method

.method public createAttribute(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/events/Attribute;
    .locals 3

    new-instance v0, Lorg/codehaus/stax2/ri/evt/AttributeEventImpl;

    iget-object v1, p0, Lorg/codehaus/stax2/ri/Stax2EventFactoryImpl;->mLocation:Lorg/apache/poi/javax/xml/stream/Location;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, p2, v2}, Lorg/codehaus/stax2/ri/evt/AttributeEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public createCData(Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/events/Characters;
    .locals 3

    new-instance v0, Lorg/codehaus/stax2/ri/evt/CharactersEventImpl;

    iget-object v1, p0, Lorg/codehaus/stax2/ri/Stax2EventFactoryImpl;->mLocation:Lorg/apache/poi/javax/xml/stream/Location;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lorg/codehaus/stax2/ri/evt/CharactersEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public createCharacters(Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/events/Characters;
    .locals 3

    new-instance v0, Lorg/codehaus/stax2/ri/evt/CharactersEventImpl;

    iget-object v1, p0, Lorg/codehaus/stax2/ri/Stax2EventFactoryImpl;->mLocation:Lorg/apache/poi/javax/xml/stream/Location;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lorg/codehaus/stax2/ri/evt/CharactersEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public createComment(Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/events/Comment;
    .locals 2

    new-instance v0, Lorg/codehaus/stax2/ri/evt/CommentEventImpl;

    iget-object v1, p0, Lorg/codehaus/stax2/ri/Stax2EventFactoryImpl;->mLocation:Lorg/apache/poi/javax/xml/stream/Location;

    invoke-direct {v0, v1, p1}, Lorg/codehaus/stax2/ri/evt/CommentEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;)V

    return-object v0
.end method

.method public createDTD(Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/events/DTD;
    .locals 2

    new-instance v0, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;

    iget-object v1, p0, Lorg/codehaus/stax2/ri/Stax2EventFactoryImpl;->mLocation:Lorg/apache/poi/javax/xml/stream/Location;

    invoke-direct {v0, v1, p1}, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;)V

    return-object v0
.end method

.method public createDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/stax2/evt/DTD2;
    .locals 8

    new-instance v7, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;

    iget-object v1, p0, Lorg/codehaus/stax2/ri/Stax2EventFactoryImpl;->mLocation:Lorg/apache/poi/javax/xml/stream/Location;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v7
.end method

.method public createDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/codehaus/stax2/evt/DTD2;
    .locals 8

    new-instance v7, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;

    iget-object v1, p0, Lorg/codehaus/stax2/ri/Stax2EventFactoryImpl;->mLocation:Lorg/apache/poi/javax/xml/stream/Location;

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/codehaus/stax2/ri/evt/DTDEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v7
.end method

.method public createEndDocument()Lorg/apache/poi/javax/xml/stream/events/EndDocument;
    .locals 2

    new-instance v0, Lorg/codehaus/stax2/ri/evt/EndDocumentEventImpl;

    iget-object v1, p0, Lorg/codehaus/stax2/ri/Stax2EventFactoryImpl;->mLocation:Lorg/apache/poi/javax/xml/stream/Location;

    invoke-direct {v0, v1}, Lorg/codehaus/stax2/ri/evt/EndDocumentEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;)V

    return-object v0
.end method

.method public createEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/events/EndElement;
    .locals 0

    invoke-virtual {p0, p2, p3, p1}, Lorg/codehaus/stax2/ri/Stax2EventFactoryImpl;->createQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/codehaus/stax2/ri/Stax2EventFactoryImpl;->createEndElement(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/util/Iterator;)Lorg/apache/poi/javax/xml/stream/events/EndElement;

    move-result-object p1

    return-object p1
.end method

.method public createEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)Lorg/apache/poi/javax/xml/stream/events/EndElement;
    .locals 0

    invoke-virtual {p0, p2, p3, p1}, Lorg/codehaus/stax2/ri/Stax2EventFactoryImpl;->createQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    invoke-virtual {p0, p1, p4}, Lorg/codehaus/stax2/ri/Stax2EventFactoryImpl;->createEndElement(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/util/Iterator;)Lorg/apache/poi/javax/xml/stream/events/EndElement;

    move-result-object p1

    return-object p1
.end method

.method public createEndElement(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/util/Iterator;)Lorg/apache/poi/javax/xml/stream/events/EndElement;
    .locals 2

    new-instance v0, Lorg/codehaus/stax2/ri/evt/EndElementEventImpl;

    iget-object v1, p0, Lorg/codehaus/stax2/ri/Stax2EventFactoryImpl;->mLocation:Lorg/apache/poi/javax/xml/stream/Location;

    invoke-direct {v0, v1, p1, p2}, Lorg/codehaus/stax2/ri/evt/EndElementEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;Lorg/apache/poi/javax/xml/namespace/QName;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public createEntityReference(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/events/EntityDeclaration;)Lorg/apache/poi/javax/xml/stream/events/EntityReference;
    .locals 1

    new-instance p1, Lorg/codehaus/stax2/ri/evt/EntityReferenceEventImpl;

    iget-object v0, p0, Lorg/codehaus/stax2/ri/Stax2EventFactoryImpl;->mLocation:Lorg/apache/poi/javax/xml/stream/Location;

    invoke-direct {p1, v0, p2}, Lorg/codehaus/stax2/ri/evt/EntityReferenceEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;Lorg/apache/poi/javax/xml/stream/events/EntityDeclaration;)V

    return-object p1
.end method

.method public createIgnorableSpace(Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/events/Characters;
    .locals 1

    iget-object v0, p0, Lorg/codehaus/stax2/ri/Stax2EventFactoryImpl;->mLocation:Lorg/apache/poi/javax/xml/stream/Location;

    invoke-static {v0, p1}, Lorg/codehaus/stax2/ri/evt/CharactersEventImpl;->createIgnorableWS(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;)Lorg/codehaus/stax2/ri/evt/CharactersEventImpl;

    move-result-object p1

    return-object p1
.end method

.method public createNamespace(Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/events/Namespace;
    .locals 1

    iget-object v0, p0, Lorg/codehaus/stax2/ri/Stax2EventFactoryImpl;->mLocation:Lorg/apache/poi/javax/xml/stream/Location;

    invoke-static {v0, p1}, Lorg/codehaus/stax2/ri/evt/NamespaceEventImpl;->constructDefaultNamespace(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;)Lorg/codehaus/stax2/ri/evt/NamespaceEventImpl;

    move-result-object p1

    return-object p1
.end method

.method public createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/events/Namespace;
    .locals 1

    iget-object v0, p0, Lorg/codehaus/stax2/ri/Stax2EventFactoryImpl;->mLocation:Lorg/apache/poi/javax/xml/stream/Location;

    invoke-static {v0, p1, p2}, Lorg/codehaus/stax2/ri/evt/NamespaceEventImpl;->constructNamespace(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/stax2/ri/evt/NamespaceEventImpl;

    move-result-object p1

    return-object p1
.end method

.method public createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/events/ProcessingInstruction;
    .locals 2

    new-instance v0, Lorg/codehaus/stax2/ri/evt/ProcInstrEventImpl;

    iget-object v1, p0, Lorg/codehaus/stax2/ri/Stax2EventFactoryImpl;->mLocation:Lorg/apache/poi/javax/xml/stream/Location;

    invoke-direct {v0, v1, p1, p2}, Lorg/codehaus/stax2/ri/evt/ProcInstrEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public abstract createQName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;
.end method

.method public abstract createQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;
.end method

.method public createSpace(Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/events/Characters;
    .locals 1

    iget-object v0, p0, Lorg/codehaus/stax2/ri/Stax2EventFactoryImpl;->mLocation:Lorg/apache/poi/javax/xml/stream/Location;

    invoke-static {v0, p1}, Lorg/codehaus/stax2/ri/evt/CharactersEventImpl;->createNonIgnorableWS(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;)Lorg/codehaus/stax2/ri/evt/CharactersEventImpl;

    move-result-object p1

    return-object p1
.end method

.method public createStartDocument()Lorg/apache/poi/javax/xml/stream/events/StartDocument;
    .locals 2

    new-instance v0, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;

    iget-object v1, p0, Lorg/codehaus/stax2/ri/Stax2EventFactoryImpl;->mLocation:Lorg/apache/poi/javax/xml/stream/Location;

    invoke-direct {v0, v1}, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;)V

    return-object v0
.end method

.method public createStartDocument(Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/events/StartDocument;
    .locals 2

    new-instance v0, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;

    iget-object v1, p0, Lorg/codehaus/stax2/ri/Stax2EventFactoryImpl;->mLocation:Lorg/apache/poi/javax/xml/stream/Location;

    invoke-direct {v0, v1, p1}, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;)V

    return-object v0
.end method

.method public createStartDocument(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/events/StartDocument;
    .locals 2

    new-instance v0, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;

    iget-object v1, p0, Lorg/codehaus/stax2/ri/Stax2EventFactoryImpl;->mLocation:Lorg/apache/poi/javax/xml/stream/Location;

    invoke-direct {v0, v1, p1, p2}, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createStartDocument(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/poi/javax/xml/stream/events/StartDocument;
    .locals 7

    new-instance v6, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;

    iget-object v1, p0, Lorg/codehaus/stax2/ri/Stax2EventFactoryImpl;->mLocation:Lorg/apache/poi/javax/xml/stream/Location;

    const/4 v4, 0x1

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/stax2/ri/evt/StartDocumentEventImpl;-><init>(Lorg/apache/poi/javax/xml/stream/Location;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v6
.end method

.method public createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/events/StartElement;
    .locals 0

    invoke-virtual {p0, p2, p3, p1}, Lorg/codehaus/stax2/ri/Stax2EventFactoryImpl;->createQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2, p2}, Lorg/codehaus/stax2/ri/Stax2EventFactoryImpl;->createStartElement(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Lorg/apache/poi/javax/xml/stream/events/StartElement;

    move-result-object p1

    return-object p1
.end method

.method public createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;Ljava/util/Iterator;)Lorg/apache/poi/javax/xml/stream/events/StartElement;
    .locals 0

    invoke-virtual {p0, p2, p3, p1}, Lorg/codehaus/stax2/ri/Stax2EventFactoryImpl;->createQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p4, p5, p2}, Lorg/codehaus/stax2/ri/Stax2EventFactoryImpl;->createStartElement(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Lorg/apache/poi/javax/xml/stream/events/StartElement;

    move-result-object p1

    return-object p1
.end method

.method public createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;Ljava/util/Iterator;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Lorg/apache/poi/javax/xml/stream/events/StartElement;
    .locals 0

    invoke-virtual {p0, p2, p3, p1}, Lorg/codehaus/stax2/ri/Stax2EventFactoryImpl;->createQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    invoke-virtual {p0, p1, p4, p5, p6}, Lorg/codehaus/stax2/ri/Stax2EventFactoryImpl;->createStartElement(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Lorg/apache/poi/javax/xml/stream/events/StartElement;

    move-result-object p1

    return-object p1
.end method

.method public createStartElement(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;)Lorg/apache/poi/javax/xml/stream/events/StartElement;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/codehaus/stax2/ri/Stax2EventFactoryImpl;->createStartElement(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Lorg/apache/poi/javax/xml/stream/events/StartElement;

    move-result-object p1

    return-object p1
.end method

.method public createStartElement(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Lorg/apache/poi/javax/xml/stream/events/StartElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/javax/xml/namespace/QName;",
            "Ljava/util/Iterator<",
            "*>;",
            "Ljava/util/Iterator<",
            "*>;",
            "Lorg/apache/poi/javax/xml/namespace/NamespaceContext;",
            ")",
            "Lorg/apache/poi/javax/xml/stream/events/StartElement;"
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/stax2/ri/Stax2EventFactoryImpl;->mLocation:Lorg/apache/poi/javax/xml/stream/Location;

    invoke-static {v0, p1, p2, p3, p4}, Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;->construct(Lorg/apache/poi/javax/xml/stream/Location;Lorg/apache/poi/javax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Lorg/codehaus/stax2/ri/evt/StartElementEventImpl;

    move-result-object p1

    return-object p1
.end method

.method public setLocation(Lorg/apache/poi/javax/xml/stream/Location;)V
    .locals 0

    iput-object p1, p0, Lorg/codehaus/stax2/ri/Stax2EventFactoryImpl;->mLocation:Lorg/apache/poi/javax/xml/stream/Location;

    return-void
.end method
