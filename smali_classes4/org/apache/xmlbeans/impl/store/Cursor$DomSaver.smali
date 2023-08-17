.class final Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;
.super Lorg/apache/xmlbeans/impl/store/Saver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DomSaver"
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private _isFrag:Z

.field private _nodeCur:Lorg/apache/xmlbeans/impl/store/Cur;

.field private _options:Lorg/apache/xmlbeans/XmlOptions;

.field private _stl:Lorg/apache/xmlbeans/SchemaTypeLoader;

.field private _type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/store/Cursor;->class$org$apache$xmlbeans$impl$store$Cursor:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.store.Cursor"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Cursor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Cursor;->class$org$apache$xmlbeans$impl$store$Cursor:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->$assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Cur;ZLorg/apache/xmlbeans/XmlOptions;)V
    .locals 1

    invoke-direct {p0, p1, p3}, Lorg/apache/xmlbeans/impl/store/Saver;-><init>(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->isUserNode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->getUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;->get_schema_type()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_type:Lorg/apache/xmlbeans/SchemaType;

    :cond_0
    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_schemaTypeLoader:Lorg/apache/xmlbeans/SchemaTypeLoader;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_stl:Lorg/apache/xmlbeans/SchemaTypeLoader;

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_options:Lorg/apache/xmlbeans/XmlOptions;

    iput-boolean p2, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_isFrag:Z

    return-void
.end method

.method private emitTextValue(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
    .locals 4

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->push()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->next()Z

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->isText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_nodeCur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_nodeCur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getChars()Ljava/lang/Object;

    move-result-object v1

    iget v2, p1, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_offSrc:I

    iget v3, p1, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_cchSrc:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xmlbeans/impl/store/Cur;->insertChars(Ljava/lang/Object;II)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_nodeCur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent()Z

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->pop()V

    return-void
.end method

.method private ensureDoc()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_nodeCur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_isFrag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_nodeCur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->createDomDocFragRoot()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_nodeCur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->createDomDocumentRoot()V

    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_nodeCur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    :cond_1
    return-void
.end method

.method private getQualifiedName(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 2

    invoke-virtual {p2}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver;->getUriMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p2}, Lorg/apache/poi/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p2

    :cond_1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_nodeCur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p2}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2, v0}, Lorg/apache/xmlbeans/impl/store/Locale;->makeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public emitComment(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->ensureDoc()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_nodeCur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->createComment()V

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->emitTextValue(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_nodeCur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->skip()Z

    return-void
.end method

.method public emitDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->ensureDoc()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_nodeCur:Lorg/apache/xmlbeans/impl/store/Cur;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->getDocProps(Lorg/apache/xmlbeans/impl/store/Cur;Z)Lorg/apache/xmlbeans/XmlDocumentProperties;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/XmlDocumentProperties;->setDoctypeName(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lorg/apache/xmlbeans/XmlDocumentProperties;->setDoctypePublicId(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lorg/apache/xmlbeans/XmlDocumentProperties;->setDoctypeSystemId(Ljava/lang/String;)V

    return-void
.end method

.method public emitElement(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 4

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->isFragmentQName(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_nodeCur:Lorg/apache/xmlbeans/impl/store/Cur;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    :cond_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->ensureDoc()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_nodeCur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->getQualifiedName(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->createElement(Lorg/apache/poi/javax/xml/namespace/QName;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_nodeCur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->iterateMappings()V

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->hasMapping()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_nodeCur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->mappingPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/impl/store/Locale;->createXmlns(Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->createAttr(Lorg/apache/poi/javax/xml/namespace/QName;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_nodeCur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_nodeCur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->mappingUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->insertString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_nodeCur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent()Z

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_nodeCur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->skipWithAttrs()Z

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->nextMapping()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_nodeCur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-direct {p0, p1, v3}, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->getQualifiedName(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/store/Cur;->createAttr(Lorg/apache/poi/javax/xml/namespace/QName;)V

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_nodeCur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_nodeCur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/impl/store/Cur;->insertString(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_nodeCur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent()Z

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_nodeCur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Cur;->skipWithAttrs()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return v0
.end method

.method public emitEndDoc(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
    .locals 0

    return-void
.end method

.method public emitFinish(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
    .locals 0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/Locale;->isFragmentQName(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-boolean p1, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->$assertionsDisabled:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_nodeCur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->isEnd()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_nodeCur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    :cond_2
    return-void
.end method

.method public emitProcinst(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->ensureDoc()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_nodeCur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->createProcinst(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->emitTextValue(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_nodeCur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->skip()Z

    return-void
.end method

.method public emitStartDoc(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->ensureDoc()V

    return-void
.end method

.method public emitText(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
    .locals 3

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->ensureDoc()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getChars()Ljava/lang/Object;

    move-result-object v0

    iget v1, p1, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_cchSrc:I

    if-lez v1, :cond_0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_nodeCur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget p1, p1, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_offSrc:I

    invoke-virtual {v2, v0, p1, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->insertChars(Ljava/lang/Object;II)V

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_nodeCur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    :cond_0
    return-void
.end method

.method public saveDom()Lorg/w3c/dom/Node;
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_stl:Lorg/apache/xmlbeans/SchemaTypeLoader;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_options:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->getLocale(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->getCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_nodeCur:Lorg/apache/xmlbeans/impl/store/Cur;

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->process()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_nodeCur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur;->isRoot()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_nodeCur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent()Z

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_type:Lorg/apache/xmlbeans/SchemaType;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_nodeCur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v2, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->setType(Lorg/apache/xmlbeans/SchemaType;)V

    :cond_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_nodeCur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_nodeCur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cursor$DomSaver;->_nodeCur:Lorg/apache/xmlbeans/impl/store/Cur;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw v1
.end method
