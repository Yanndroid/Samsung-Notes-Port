.class Lorg/apache/xmlbeans/impl/store/Xobj$ProcInstXobj;
.super Lorg/apache/xmlbeans/impl/store/Xobj$NodeXobj;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/ProcessingInstruction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Xobj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcInstXobj"
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Locale;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x7

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/xmlbeans/impl/store/Xobj$NodeXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;II)V

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->makeQName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_processingInstruction_getData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLength()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_processingInstruction_getTarget(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public newNode(Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Xobj$ProcInstXobj;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v1}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/xmlbeans/impl/store/Xobj$ProcInstXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Ljava/lang/String;)V

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl;->_processingInstruction_setData(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/String;)V

    return-void
.end method
