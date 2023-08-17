.class public abstract Lorg/apache/poi/javax/xml/stream/XMLEventFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance()Lorg/apache/poi/javax/xml/stream/XMLEventFactory;
    .locals 2

    const-string v0, "org.apache.poi.javax.xml.stream.XMLEventFactory"

    const-string v1, "com.bea.xml.stream.EventFactory"

    invoke-static {v0, v1}, Lorg/apache/poi/javax/xml/stream/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/javax/xml/stream/XMLEventFactory;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/poi/javax/xml/stream/XMLEventFactory;
    .locals 1

    const-string v0, "com.bea.xml.stream.EventFactory"

    invoke-static {p0, v0, p1}, Lorg/apache/poi/javax/xml/stream/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/javax/xml/stream/XMLEventFactory;

    return-object p0
.end method


# virtual methods
.method public abstract createAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/events/Attribute;
.end method

.method public abstract createAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/events/Attribute;
.end method

.method public abstract createAttribute(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/events/Attribute;
.end method

.method public abstract createCData(Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/events/Characters;
.end method

.method public abstract createCharacters(Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/events/Characters;
.end method

.method public abstract createComment(Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/events/Comment;
.end method

.method public abstract createDTD(Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/events/DTD;
.end method

.method public abstract createEndDocument()Lorg/apache/poi/javax/xml/stream/events/EndDocument;
.end method

.method public abstract createEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/events/EndElement;
.end method

.method public abstract createEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)Lorg/apache/poi/javax/xml/stream/events/EndElement;
.end method

.method public abstract createEndElement(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/util/Iterator;)Lorg/apache/poi/javax/xml/stream/events/EndElement;
.end method

.method public abstract createEntityReference(Ljava/lang/String;Lorg/apache/poi/javax/xml/stream/events/EntityDeclaration;)Lorg/apache/poi/javax/xml/stream/events/EntityReference;
.end method

.method public abstract createIgnorableSpace(Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/events/Characters;
.end method

.method public abstract createNamespace(Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/events/Namespace;
.end method

.method public abstract createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/events/Namespace;
.end method

.method public abstract createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/events/ProcessingInstruction;
.end method

.method public abstract createSpace(Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/events/Characters;
.end method

.method public abstract createStartDocument()Lorg/apache/poi/javax/xml/stream/events/StartDocument;
.end method

.method public abstract createStartDocument(Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/events/StartDocument;
.end method

.method public abstract createStartDocument(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/events/StartDocument;
.end method

.method public abstract createStartDocument(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/poi/javax/xml/stream/events/StartDocument;
.end method

.method public abstract createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/events/StartElement;
.end method

.method public abstract createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;Ljava/util/Iterator;)Lorg/apache/poi/javax/xml/stream/events/StartElement;
.end method

.method public abstract createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;Ljava/util/Iterator;Lorg/apache/poi/javax/xml/namespace/NamespaceContext;)Lorg/apache/poi/javax/xml/stream/events/StartElement;
.end method

.method public abstract createStartElement(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;)Lorg/apache/poi/javax/xml/stream/events/StartElement;
.end method

.method public abstract setLocation(Lorg/apache/poi/javax/xml/stream/Location;)V
.end method
