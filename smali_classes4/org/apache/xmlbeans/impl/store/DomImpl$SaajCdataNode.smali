.class Lorg/apache/xmlbeans/impl/store/DomImpl$SaajCdataNode;
.super Lorg/apache/xmlbeans/impl/store/DomImpl$CdataNode;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/soap/Text;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/DomImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaajCdataNode"
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Locale;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$CdataNode;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;)V

    return-void
.end method


# virtual methods
.method public detachNode()V
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_soapNode_detachNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    return-void
.end method

.method public getParentElement()Lorg/apache/xmlbeans/impl/soap/SOAPElement;
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_soapNode_getParentElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Lorg/apache/xmlbeans/impl/soap/SOAPElement;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_soapNode_getValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isComment()Z
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_soapText_isComment(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Z

    move-result v0

    return v0
.end method

.method public recycleNode()V
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_soapNode_recycleNode(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    return-void
.end method

.method public setParentElement(Lorg/apache/xmlbeans/impl/soap/SOAPElement;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_soapNode_setParentElement(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Lorg/apache/xmlbeans/impl/soap/SOAPElement;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_soapNode_setValue(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V

    return-void
.end method
