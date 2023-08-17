.class public abstract Lorg/apache/poi/javax/xml/stream/XMLOutputFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IS_REPAIRING_NAMESPACES:Ljava/lang/String; = "org.apache.poi.javax.xml.stream.isRepairingNamespaces"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance()Lorg/apache/poi/javax/xml/stream/XMLOutputFactory;
    .locals 2

    const-string v0, "org.apache.poi.javax.xml.stream.XMLOutputFactory"

    const-string v1, "com.bea.xml.stream.XMLOutputFactoryBase"

    invoke-static {v0, v1}, Lorg/apache/poi/javax/xml/stream/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/javax/xml/stream/XMLOutputFactory;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/poi/javax/xml/stream/XMLOutputFactory;
    .locals 1

    const-string v0, "com.bea.xml.stream.XMLOutputFactoryBase"

    invoke-static {p0, v0, p1}, Lorg/apache/poi/javax/xml/stream/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/javax/xml/stream/XMLOutputFactory;

    return-object p0
.end method


# virtual methods
.method public abstract createXMLEventWriter(Ljava/io/OutputStream;)Lorg/apache/poi/javax/xml/stream/XMLEventWriter;
.end method

.method public abstract createXMLEventWriter(Ljava/io/OutputStream;Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/XMLEventWriter;
.end method

.method public abstract createXMLEventWriter(Ljava/io/Writer;)Lorg/apache/poi/javax/xml/stream/XMLEventWriter;
.end method

.method public abstract createXMLEventWriter(Ljavax/xml/transform/Result;)Lorg/apache/poi/javax/xml/stream/XMLEventWriter;
.end method

.method public abstract createXMLStreamWriter(Ljava/io/OutputStream;)Lorg/apache/poi/javax/xml/stream/XMLStreamWriter;
.end method

.method public abstract createXMLStreamWriter(Ljava/io/OutputStream;Ljava/lang/String;)Lorg/apache/poi/javax/xml/stream/XMLStreamWriter;
.end method

.method public abstract createXMLStreamWriter(Ljava/io/Writer;)Lorg/apache/poi/javax/xml/stream/XMLStreamWriter;
.end method

.method public abstract createXMLStreamWriter(Ljavax/xml/transform/Result;)Lorg/apache/poi/javax/xml/stream/XMLStreamWriter;
.end method

.method public abstract getProperty(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract isPropertySupported(Ljava/lang/String;)Z
.end method

.method public abstract setProperty(Ljava/lang/String;Ljava/lang/Object;)V
.end method
