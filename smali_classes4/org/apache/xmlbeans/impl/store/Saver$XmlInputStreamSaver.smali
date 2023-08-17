.class final Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver;
.super Lorg/apache/xmlbeans/impl/store/Saver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Saver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "XmlInputStreamSaver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$XmlEventImpl;,
        Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartDocumentImpl;,
        Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartElementImpl;,
        Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartPrefixMappingImpl;,
        Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$ChangePrefixMappingImpl;,
        Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$EndPrefixMappingImpl;,
        Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$EndElementImpl;,
        Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$EndDocumentImpl;,
        Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$TripletEventImpl;,
        Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$CharacterDataImpl;,
        Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$CommentImpl;,
        Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$ProcessingInstructionImpl;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private _in:Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$XmlEventImpl;

.field private _out:Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$XmlEventImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Saver;-><init>(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)V

    return-void
.end method

.method private static computeName(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/impl/store/Saver;Z)Lorg/apache/xmlbeans/xml/stream/XMLName;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/store/Saver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/impl/store/Saver;->getUriMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    move-object v2, p0

    if-eqz p2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/impl/store/Saver;->getNonDefaultUriMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    new-instance p0, Lorg/apache/xmlbeans/impl/common/XmlNameImpl;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/xmlbeans/impl/common/XmlNameImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private enqueue(Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$XmlEventImpl;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver;->_in:Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$XmlEventImpl;

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver;->_in:Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$XmlEventImpl;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver;->_out:Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$XmlEventImpl;

    goto :goto_0

    :cond_0
    iput-object p1, v0, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$XmlEventImpl;->_next:Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$XmlEventImpl;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver;->_in:Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$XmlEventImpl;

    :goto_0
    return-void
.end method


# virtual methods
.method public dequeue()Lorg/apache/xmlbeans/xml/stream/XMLEvent;
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver;->_out:Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$XmlEventImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->enterLocale()V

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->process()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->exitLocale()V

    if-nez v0, :cond_0

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->exitLocale()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver;->_out:Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$XmlEventImpl;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v2, v0, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$XmlEventImpl;->_next:Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$XmlEventImpl;

    iput-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver;->_out:Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$XmlEventImpl;

    if-nez v2, :cond_2

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver;->_in:Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$XmlEventImpl;

    :cond_2
    return-object v0
.end method

.method public emitComment(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$CommentImpl;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getChars()Ljava/lang/Object;

    move-result-object v1

    iget v2, p1, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_cchSrc:I

    iget p1, p1, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_offSrc:I

    invoke-direct {v0, v1, v2, p1}, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$CommentImpl;-><init>(Ljava/lang/Object;II)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver;->enqueue(Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$XmlEventImpl;)V

    return-void
.end method

.method public emitDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance p1, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartDocumentImpl;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-direct {p1, p3, p2, v0, p2}, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartDocumentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver;->enqueue(Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$XmlEventImpl;)V

    return-void
.end method

.method public emitElement(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 8

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->iterateMappings()V

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->hasMapping()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartPrefixMappingImpl;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->mappingPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->mappingUri()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartPrefixMappingImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver;->enqueue(Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$XmlEventImpl;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->nextMapping()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move-object v3, v1

    move-object v4, v3

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/javax/xml/namespace/QName;

    const/4 v6, 0x1

    invoke-static {v5, p0, v6}, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver;->computeName(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/impl/store/Saver;Z)Lorg/apache/xmlbeans/xml/stream/XMLName;

    move-result-object v5

    new-instance v6, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartElementImpl$NormalAttributeImpl;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v5, v7}, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartElementImpl$NormalAttributeImpl;-><init>(Lorg/apache/xmlbeans/xml/stream/XMLName;Ljava/lang/String;)V

    if-nez v3, :cond_1

    move-object v3, v6

    goto :goto_2

    :cond_1
    iput-object v6, v4, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartElementImpl$AttributeImpl;->_next:Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartElementImpl$AttributeImpl;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move-object v4, v6

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->iterateMappings()V

    move-object p2, v1

    :goto_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->hasMapping()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->mappingPrefix()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->mappingUri()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartElementImpl$XmlnsAttributeImpl;

    invoke-direct {v4, p3, v2}, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartElementImpl$XmlnsAttributeImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_3

    move-object v1, v4

    goto :goto_4

    :cond_3
    iput-object v4, p2, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartElementImpl$AttributeImpl;->_next:Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartElementImpl$AttributeImpl;

    :goto_4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->nextMapping()V

    move-object p2, v4

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    new-instance p2, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartElementImpl;

    invoke-static {p1, p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver;->computeName(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/impl/store/Saver;Z)Lorg/apache/xmlbeans/xml/stream/XMLName;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->getPrefixMap()Ljava/util/Map;

    move-result-object p3

    invoke-direct {p2, p1, v3, v1, p3}, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartElementImpl;-><init>(Lorg/apache/xmlbeans/xml/stream/XMLName;Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartElementImpl$AttributeImpl;Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$StartElementImpl$AttributeImpl;Ljava/util/Map;)V

    invoke-direct {p0, p2}, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver;->enqueue(Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$XmlEventImpl;)V

    return v0
.end method

.method public emitEndDoc(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
    .locals 0

    new-instance p1, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$EndDocumentImpl;

    invoke-direct {p1}, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$EndDocumentImpl;-><init>()V

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver;->enqueue(Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$XmlEventImpl;)V

    return-void
.end method

.method public emitEndPrefixMappings()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->iterateMappings()V

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->hasMapping()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->mappingPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->mappingUri()Ljava/lang/String;

    new-instance v1, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$EndPrefixMappingImpl;

    invoke-direct {v1, v0}, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$EndPrefixMappingImpl;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver;->enqueue(Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$XmlEventImpl;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->nextMapping()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public emitFinish(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$EndDocumentImpl;

    invoke-direct {p1}, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$EndDocumentImpl;-><init>()V

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver;->enqueue(Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$XmlEventImpl;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver;->computeName(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/impl/store/Saver;Z)Lorg/apache/xmlbeans/xml/stream/XMLName;

    move-result-object p1

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$EndElementImpl;

    invoke-direct {v0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$EndElementImpl;-><init>(Lorg/apache/xmlbeans/xml/stream/XMLName;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver;->enqueue(Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$XmlEventImpl;)V

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver;->emitEndPrefixMappings()V

    return-void
.end method

.method public emitProcinst(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
    .locals 4

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$ProcessingInstructionImpl;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getChars()Ljava/lang/Object;

    move-result-object v2

    iget v3, p1, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_cchSrc:I

    iget p1, p1, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_offSrc:I

    invoke-direct {v1, v0, v2, v3, p1}, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$ProcessingInstructionImpl;-><init>(Ljava/lang/String;Ljava/lang/Object;II)V

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver;->enqueue(Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$XmlEventImpl;)V

    return-void
.end method

.method public emitStartDoc(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1}, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver;->emitDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public emitText(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getChars()Ljava/lang/Object;

    move-result-object v0

    iget v1, p1, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_cchSrc:I

    iget p1, p1, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_offSrc:I

    new-instance v2, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$CharacterDataImpl;

    invoke-direct {v2, v0, v1, p1}, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$CharacterDataImpl;-><init>(Ljava/lang/Object;II)V

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver;->enqueue(Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$XmlEventImpl;)V

    return-void
.end method
