.class Lorg/apache/xmlbeans/impl/store/Xobj$SoapFaultXobj;
.super Lorg/apache/xmlbeans/impl/store/Xobj$SoapBodyElementXobj;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/soap/SOAPFault;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Xobj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoapFaultXobj"
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Xobj$SoapBodyElementXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/poi/javax/xml/namespace/QName;)V

    return-void
.end method


# virtual methods
.method public addDetail()Lorg/apache/xmlbeans/impl/soap/Detail;
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->soapFault_addDetail(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/Detail;

    move-result-object v0

    return-object v0
.end method

.method public getDetail()Lorg/apache/xmlbeans/impl/soap/Detail;
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->soapFault_getDetail(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/Detail;

    move-result-object v0

    return-object v0
.end method

.method public getFaultActor()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->soapFault_getFaultActor(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFaultCode()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->soapFault_getFaultCode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFaultCodeAsName()Lorg/apache/xmlbeans/impl/soap/Name;
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->soapFault_getFaultCodeAsName(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/Name;

    move-result-object v0

    return-object v0
.end method

.method public getFaultString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->soapFault_getFaultString(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFaultStringLocale()Ljava/util/Locale;
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->soapFault_getFaultStringLocale(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public newNode(Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Xobj$SoapFaultXobj;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-direct {v0, p1, v1}, Lorg/apache/xmlbeans/impl/store/Xobj$SoapFaultXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/poi/javax/xml/namespace/QName;)V

    return-object v0
.end method

.method public setFaultActor(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->soapFault_setFaultActor(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V

    return-void
.end method

.method public setFaultCode(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->soapFault_setFaultCode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V

    return-void
.end method

.method public setFaultCode(Lorg/apache/xmlbeans/impl/soap/Name;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->soapFault_setFaultCode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/Name;)V

    return-void
.end method

.method public setFaultString(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->soapFault_setFaultString(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V

    return-void
.end method

.method public setFaultString(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/DomImpl;->soapFault_setFaultString(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method
