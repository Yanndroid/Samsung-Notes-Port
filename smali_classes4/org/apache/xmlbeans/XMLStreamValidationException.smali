.class public Lorg/apache/xmlbeans/XMLStreamValidationException;
.super Lorg/apache/xmlbeans/xml/stream/XMLStreamException;
.source "SourceFile"


# instance fields
.field private _xmlError:Lorg/apache/xmlbeans/XmlError;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/XmlError;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/xmlbeans/XMLStreamValidationException;->_xmlError:Lorg/apache/xmlbeans/XmlError;

    return-void
.end method


# virtual methods
.method public getXmlError()Lorg/apache/xmlbeans/XmlError;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/XMLStreamValidationException;->_xmlError:Lorg/apache/xmlbeans/XmlError;

    return-object v0
.end method
