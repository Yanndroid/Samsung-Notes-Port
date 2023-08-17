.class public abstract Lorg/apache/poi/javax/xml/stream/XMLInputFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALLOCATOR:Ljava/lang/String; = "org.apache.poi.javax.xml.stream.allocator"

.field public static final IS_COALESCING:Ljava/lang/String; = "org.apache.poi.javax.xml.stream.isCoalescing"

.field public static final IS_NAMESPACE_AWARE:Ljava/lang/String; = "org.apache.poi.javax.xml.stream.isNamespaceAware"

.field public static final IS_REPLACING_ENTITY_REFERENCES:Ljava/lang/String; = "org.apache.poi.javax.xml.stream.isReplacingEntityReferences"

.field public static final IS_SUPPORTING_EXTERNAL_ENTITIES:Ljava/lang/String; = "org.apache.poi.javax.xml.stream.isSupportingExternalEntities"

.field public static final IS_VALIDATING:Ljava/lang/String; = "org.apache.poi.javax.xml.stream.isValidating"

.field public static final REPORTER:Ljava/lang/String; = "org.apache.poi.javax.xml.stream.reporter"

.field public static final RESOLVER:Ljava/lang/String; = "org.apache.poi.javax.xml.stream.resolver"

.field public static final SUPPORT_DTD:Ljava/lang/String; = "org.apache.poi.javax.xml.stream.supportDTD"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance()Lorg/apache/poi/javax/xml/stream/XMLInputFactory;
    .locals 2

    const-string v0, "org.apache.poi.javax.xml.stream.XMLInputFactory"

    const-string v1, "com.bea.xml.stream.MXParserFactory"

    invoke-static {v0, v1}, Lorg/apache/poi/javax/xml/stream/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/javax/xml/stream/XMLInputFactory;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/poi/javax/xml/stream/XMLInputFactory;
    .locals 1

    const-string v0, "com.bea.xml.stream.MXParserFactory"

    invoke-static {p0, v0, p1}, Lorg/apache/poi/javax/xml/stream/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/javax/xml/stream/XMLInputFactory;

    return-object p0
.end method


# virtual methods
.method public abstract createFilteredReader(Lorg/apache/poi/javax/xml/stream/XMLEventReader;Lorg/apache/poi/javax/xml/stream/EventFilter;)Lorg/apache/poi/javax/xml/stream/XMLEventReader;
.end method

.method public abstract createFilteredReader(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;Lorg/apache/poi/javax/xml/stream/StreamFilter;)Lorg/apache/poi/javax/xml/stream/XMLStreamReader;
.end method

.method public abstract createXMLEventReader(Ljava/io/InputStream;)Lorg/apache/poi/javax/xml/stream/XMLEventReader;
.end method

.method public abstract createXMLEventReader(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/XMLEventReader;
.end method

.method public abstract createXMLEventReader(Ljava/io/Reader;)Lorg/apache/poi/javax/xml/stream/XMLEventReader;
.end method

.method public abstract createXMLEventReader(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/javax/xml/stream/XMLEventReader;
.end method

.method public abstract createXMLEventReader(Ljava/lang/String;Ljava/io/Reader;)Lorg/apache/poi/javax/xml/stream/XMLEventReader;
.end method

.method public abstract createXMLEventReader(Ljavax/xml/transform/Source;)Lorg/apache/poi/javax/xml/stream/XMLEventReader;
.end method

.method public abstract createXMLEventReader(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)Lorg/apache/poi/javax/xml/stream/XMLEventReader;
.end method

.method public abstract createXMLStreamReader(Ljava/io/InputStream;)Lorg/apache/poi/javax/xml/stream/XMLStreamReader;
.end method

.method public abstract createXMLStreamReader(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/XMLStreamReader;
.end method

.method public abstract createXMLStreamReader(Ljava/io/Reader;)Lorg/apache/poi/javax/xml/stream/XMLStreamReader;
.end method

.method public abstract createXMLStreamReader(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/javax/xml/stream/XMLStreamReader;
.end method

.method public abstract createXMLStreamReader(Ljava/lang/String;Ljava/io/Reader;)Lorg/apache/poi/javax/xml/stream/XMLStreamReader;
.end method

.method public abstract createXMLStreamReader(Ljavax/xml/transform/Source;)Lorg/apache/poi/javax/xml/stream/XMLStreamReader;
.end method

.method public abstract getEventAllocator()Lorg/apache/poi/javax/xml/stream/util/XMLEventAllocator;
.end method

.method public abstract getProperty(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getXMLReporter()Lorg/apache/poi/javax/xml/stream/XMLReporter;
.end method

.method public abstract getXMLResolver()Lorg/apache/poi/javax/xml/stream/XMLResolver;
.end method

.method public abstract isPropertySupported(Ljava/lang/String;)Z
.end method

.method public abstract setEventAllocator(Lorg/apache/poi/javax/xml/stream/util/XMLEventAllocator;)V
.end method

.method public abstract setProperty(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract setXMLReporter(Lorg/apache/poi/javax/xml/stream/XMLReporter;)V
.end method

.method public abstract setXMLResolver(Lorg/apache/poi/javax/xml/stream/XMLResolver;)V
.end method
