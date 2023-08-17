.class Lorg/apache/xmlbeans/impl/store/Xobj$SoapEnvelopeXobj;
.super Lorg/apache/xmlbeans/impl/store/Xobj$SoapElementXobj;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/soap/SOAPEnvelope;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Xobj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoapEnvelopeXobj"
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Xobj$SoapElementXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/poi/javax/xml/namespace/QName;)V

    return-void
.end method


# virtual methods
.method public addBody()Lorg/apache/xmlbeans/impl/soap/SOAPBody;
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_soapEnvelope_addBody(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPBody;

    move-result-object v0

    return-object v0
.end method

.method public addHeader()Lorg/apache/xmlbeans/impl/soap/SOAPHeader;
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_soapEnvelope_addHeader(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPHeader;

    move-result-object v0

    return-object v0
.end method

.method public createName(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/Name;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_soapEnvelope_createName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/Name;

    move-result-object p1

    return-object p1
.end method

.method public createName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/Name;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_soapEnvelope_createName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/soap/Name;

    move-result-object p1

    return-object p1
.end method

.method public getBody()Lorg/apache/xmlbeans/impl/soap/SOAPBody;
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_soapEnvelope_getBody(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPBody;

    move-result-object v0

    return-object v0
.end method

.method public getHeader()Lorg/apache/xmlbeans/impl/soap/SOAPHeader;
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_soapEnvelope_getHeader(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPHeader;

    move-result-object v0

    return-object v0
.end method

.method public newNode(Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Xobj$SoapEnvelopeXobj;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-direct {v0, p1, v1}, Lorg/apache/xmlbeans/impl/store/Xobj$SoapEnvelopeXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/poi/javax/xml/namespace/QName;)V

    return-object v0
.end method
