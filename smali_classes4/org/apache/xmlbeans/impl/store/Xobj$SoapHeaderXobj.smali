.class Lorg/apache/xmlbeans/impl/store/Xobj$SoapHeaderXobj;
.super Lorg/apache/xmlbeans/impl/store/Xobj$SoapElementXobj;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/soap/SOAPHeader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Xobj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoapHeaderXobj"
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Xobj$SoapElementXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/poi/javax/xml/namespace/QName;)V

    return-void
.end method


# virtual methods
.method public addHeaderElement(Lorg/apache/xmlbeans/impl/soap/Name;)Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->soapHeader_addHeaderElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/Name;)Lorg/apache/xmlbeans/impl/soap/SOAPHeaderElement;

    move-result-object p1

    return-object p1
.end method

.method public examineAllHeaderElements()Ljava/util/Iterator;
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->soapHeader_examineAllHeaderElements(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public examineHeaderElements(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->soapHeader_examineHeaderElements(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public examineMustUnderstandHeaderElements(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->soapHeader_examineMustUnderstandHeaderElements(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public extractAllHeaderElements()Ljava/util/Iterator;
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->soapHeader_extractAllHeaderElements(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public extractHeaderElements(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->soapHeader_extractHeaderElements(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public newNode(Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Xobj$SoapHeaderXobj;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-direct {v0, p1, v1}, Lorg/apache/xmlbeans/impl/store/Xobj$SoapHeaderXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/poi/javax/xml/namespace/QName;)V

    return-object v0
.end method
