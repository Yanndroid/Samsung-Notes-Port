.class abstract Lorg/apache/xmlbeans/impl/store/Xobj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/values/TypeStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;,
        Lorg/apache/xmlbeans/impl/store/Xobj$DetailEntryXobj;,
        Lorg/apache/xmlbeans/impl/store/Xobj$DetailXobj;,
        Lorg/apache/xmlbeans/impl/store/Xobj$SoapFaultElementXobj;,
        Lorg/apache/xmlbeans/impl/store/Xobj$SoapFaultXobj;,
        Lorg/apache/xmlbeans/impl/store/Xobj$SoapHeaderElementXobj;,
        Lorg/apache/xmlbeans/impl/store/Xobj$SoapHeaderXobj;,
        Lorg/apache/xmlbeans/impl/store/Xobj$SoapEnvelopeXobj;,
        Lorg/apache/xmlbeans/impl/store/Xobj$SoapBodyElementXobj;,
        Lorg/apache/xmlbeans/impl/store/Xobj$SoapBodyXobj;,
        Lorg/apache/xmlbeans/impl/store/Xobj$SoapElementXobj;,
        Lorg/apache/xmlbeans/impl/store/Xobj$SoapPartDom;,
        Lorg/apache/xmlbeans/impl/store/Xobj$SoapPartDocXobj;,
        Lorg/apache/xmlbeans/impl/store/Xobj$ProcInstXobj;,
        Lorg/apache/xmlbeans/impl/store/Xobj$CommentXobj;,
        Lorg/apache/xmlbeans/impl/store/Xobj$AttrIdXobj;,
        Lorg/apache/xmlbeans/impl/store/Xobj$AttrXobj;,
        Lorg/apache/xmlbeans/impl/store/Xobj$ElementXobj;,
        Lorg/apache/xmlbeans/impl/store/Xobj$NamedNodeXobj;,
        Lorg/apache/xmlbeans/impl/store/Xobj$ElementAttributes;,
        Lorg/apache/xmlbeans/impl/store/Xobj$DocumentFragXobj;,
        Lorg/apache/xmlbeans/impl/store/Xobj$DocumentXobj;,
        Lorg/apache/xmlbeans/impl/store/Xobj$NodeXobj;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field public static final ATTR:I = 0x3

.field public static final COMMENT:I = 0x4

.field public static final ELEM:I = 0x2

.field public static final END_POS:I = -0x1

.field public static final INHIBIT_DISCONNECT:I = 0x400

.field public static final NO_POS:I = -0x2

.field public static final PROCINST:I = 0x5

.field public static final ROOT:I = 0x1

.field public static final STABLE_USER:I = 0x200

.field public static final TEXT:I = 0x0

.field public static final VACANT:I = 0x100

.field public static synthetic class$org$apache$xmlbeans$impl$store$Xobj:Ljava/lang/Class;


# instance fields
.field public _bits:I

.field public _bookmarks:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

.field public _cchAfter:I

.field public _cchValue:I

.field public _charNodesAfter:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

.field public _charNodesValue:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

.field public _embedded:Lorg/apache/xmlbeans/impl/store/Cur;

.field public _firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

.field public _lastChild:Lorg/apache/xmlbeans/impl/store/Xobj;

.field public _locale:Lorg/apache/xmlbeans/impl/store/Locale;

.field public _name:Lorg/apache/poi/javax/xml/namespace/QName;

.field public _nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

.field public _offAfter:I

.field public _offValue:I

.field public _parent:Lorg/apache/xmlbeans/impl/store/Xobj;

.field public _prevSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

.field public _srcAfter:Ljava/lang/Object;

.field public _srcValue:Ljava/lang/Object;

.field public _user:Lorg/apache/xmlbeans/impl/values/TypeStoreUser;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/store/Xobj;->class$org$apache$xmlbeans$impl$store$Xobj:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.store.Xobj"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Xobj;->class$org$apache$xmlbeans$impl$store$Xobj:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Locale;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    const/4 v1, 0x4

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    if-eq p2, v1, :cond_1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    shl-int/lit8 p1, p3, 0x4

    add-int/2addr p1, p2

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_bits:I

    return-void
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method public static final disbandXobjs(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/Xobj;)V
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v1, :cond_2

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_prevSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_7
    :goto_3
    if-nez v0, :cond_9

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isRoot()Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_9
    :goto_4
    if-eqz p0, :cond_a

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_prevSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    move-object p0, p1

    goto :goto_4

    :cond_a
    return-void
.end method

.method private static insertElement(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/impl/store/Xobj;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;
    .locals 1

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->createElement(Lorg/apache/poi/javax/xml/namespace/QName;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p0

    :catchall_0
    move-exception p0

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0
.end method

.method private static removeElement(Lorg/apache/xmlbeans/impl/store/Xobj;)V
    .locals 2

    if-eqz p0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNode(Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw v0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method private setValue(Ljava/lang/String;)V
    .locals 8

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/apache/xmlbeans/impl/store/CharUtil;->isValid(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->notifyChange()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->lastAttr()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v1

    move-object v2, v0

    goto :goto_1

    :cond_3
    move-object v2, p0

    :goto_1
    move v3, v1

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lorg/apache/xmlbeans/impl/store/Xobj;->insertCharsHelper(ILjava/lang/Object;IIZ)V

    return-void
.end method


# virtual methods
.method public add_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->getAttr(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->setAttr(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->getUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;
    .locals 6

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isContainer()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_lastChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v4, v1

    move-object v3, v2

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isContainer()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v5, p1}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    if-nez v4, :cond_1

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_user:Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    invoke-interface {v3, p1}, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;->get_element_ending_delimiters(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/QNameSet;

    move-result-object v3

    const/4 v4, 0x1

    :cond_1
    if-eqz v3, :cond_2

    iget-object v5, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v3, v5}, Lorg/apache/xmlbeans/QNameSet;->contains(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move-object v2, v0

    :cond_3
    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_prevSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_0

    :cond_4
    :goto_1
    if-nez v2, :cond_5

    const/4 v0, -0x1

    invoke-static {p1, p0, v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->insertElement(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/impl/store/Xobj;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    goto :goto_2

    :cond_5
    invoke-static {p1, v2, v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->insertElement(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/impl/store/Xobj;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    :goto_2
    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final appendXobj(Lorg/apache/xmlbeans/impl/store/Xobj;)Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v2, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isRoot()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_prevSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    if-nez v0, :cond_9

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v1, :cond_8

    goto :goto_4

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_4
    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_lastChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_a

    goto :goto_5

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_b
    :goto_5
    iput-object p0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_lastChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    iput-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_prevSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v0, :cond_c

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_6

    :cond_c
    iput-object p1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    :goto_6
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_lastChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    return-object p0
.end method

.method public final appendXobjs(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/Xobj;)V
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v2, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    iget-object v1, p2, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v2, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v1, :cond_4

    iget-object v1, p2, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_prevSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    if-nez v0, :cond_9

    iget-object v1, p2, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v1, :cond_8

    goto :goto_4

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_4
    if-nez v0, :cond_b

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isRoot()Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_5

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_b
    :goto_5
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_lastChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    iput-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_prevSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v0, :cond_c

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_6

    :cond_c
    iput-object p1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    :goto_6
    iput-object p2, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_lastChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    :goto_7
    if-eqz p1, :cond_d

    iput-object p0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_7

    :cond_d
    return-void
.end method

.method public array_setter([Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 9

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    array-length v0, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v0, :cond_3

    aget-object v6, p1, v4

    if-eqz v6, :cond_2

    aget-object v6, p1, v4

    invoke-interface {v6}, Lorg/apache/xmlbeans/XmlObject;->isImmutable()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_0
    aget-object v5, p1, v4

    check-cast v5, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    invoke-interface {v5}, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v5

    check-cast v5, Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v6, v5, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v7, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    if-ne v6, v7, :cond_1

    invoke-virtual {v5, v7}, Lorg/apache/xmlbeans/impl/store/Xobj;->copyNode(Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-virtual {v6}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v6, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v5, v6}, Lorg/apache/xmlbeans/impl/store/Xobj;->copyNode(Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v5, v5, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    :goto_2
    aget-object v5, p1, v4

    invoke-interface {v5}, Lorg/apache/xmlbeans/XmlObject;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v5

    goto :goto_1

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, v5, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/store/Xobj;->count_elements(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result v4

    :goto_4
    if-le v4, v0, :cond_4

    invoke-virtual {p0, p2, v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->remove_element(Lorg/apache/poi/javax/xml/namespace/QName;I)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    :cond_4
    :goto_5
    if-le v0, v4, :cond_5

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/store/Xobj;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    sget-boolean v6, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    if-nez v6, :cond_7

    if-ne v0, v4, :cond_6

    goto :goto_6

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p2, v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->find_all_element_users(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/util/List;)V

    move p2, v3

    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge p2, v6, :cond_8

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    invoke-interface {v6}, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;->get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;

    move-result-object v6

    check-cast v6, Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0, p2, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_8
    sget-boolean p2, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    if-nez p2, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne p2, v4, :cond_9

    goto :goto_8

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_a
    :goto_8
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p2

    :goto_9
    if-ge v3, v4, :cond_c

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xmlbeans/impl/store/Xobj;

    aget-object v7, p1, v3

    invoke-interface {v7}, Lorg/apache/xmlbeans/XmlObject;->isImmutable()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v6}, Lorg/apache/xmlbeans/impl/store/Xobj;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v6

    aget-object v7, p1, v3

    invoke-interface {v6, v7}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    goto :goto_a

    :cond_b
    const/4 v7, 0x1

    invoke-static {v6, v5, v7}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNodeContents(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/Cur;Z)V

    invoke-virtual {p2, v6}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-static {v8, p2, v7}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNodeContents(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/Cur;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/xmlbeans/SchemaType;

    invoke-virtual {v6, v7}, Lorg/apache/xmlbeans/impl/store/Xobj;->change_type(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    :goto_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_c
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-void

    :catchall_1
    move-exception p1

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p1
.end method

.method public final bitIsClear(I)Z
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_bits:I

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final bitIsSet(I)Z
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_bits:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final cchAfter()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchAfter:I

    return v0
.end method

.method public final cchLeft(I)I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->getDenormal(I)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posTemp()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result p1

    if-ge v0, p1, :cond_1

    const/4 p1, 0x1

    :cond_1
    sub-int/2addr v0, p1

    return v0
.end method

.method public final cchRight(I)I
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posMax()I

    move-result v0

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-gtz p1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v0

    if-ge p1, v0, :cond_3

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posMax()I

    move-result v0

    sub-int/2addr v0, p1

    :goto_1
    return v0
.end method

.method public final cchValue()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchValue:I

    return v0
.end method

.method public change_type(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->setType(Lorg/apache/xmlbeans/SchemaType;Z)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p1
.end method

.method public final clearBit(I)V
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_bits:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_bits:I

    return-void
.end method

.method public compute_default_text()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isRoot()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->ensureParent()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;->get_default_attribute_text(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v0, v2}, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;->get_default_element_text(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;->new_visitor()Lorg/apache/xmlbeans/impl/values/TypeStoreVisitor;

    move-result-object v0

    if-nez v0, :cond_3

    return-object v1

    :cond_3
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    :goto_0
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isElem()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v0, v2}, Lorg/apache/xmlbeans/impl/values/TypeStoreVisitor;->visit(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    if-ne v1, p0, :cond_4

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/values/TypeStoreVisitor;->get_default_text()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v1, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_0
.end method

.method public compute_flags()I
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isRoot()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->ensureParent()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;->get_attributeflags(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result v0

    return v0

    :cond_1
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v0, v2}, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;->get_elementflags(Lorg/apache/poi/javax/xml/namespace/QName;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    return v2

    :cond_2
    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;->new_visitor()Lorg/apache/xmlbeans/impl/values/TypeStoreVisitor;

    move-result-object v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    :goto_0
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isElem()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v0, v2}, Lorg/apache/xmlbeans/impl/values/TypeStoreVisitor;->visit(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    if-ne v1, p0, :cond_4

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/values/TypeStoreVisitor;->get_elementflags()I

    move-result v0

    return v0

    :cond_4
    iget-object v1, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_0
.end method

.method public final contains(Lorg/apache/xmlbeans/impl/store/Cur;)Z
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->isNormal()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget p1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    invoke-virtual {p0, v0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->contains(Lorg/apache/xmlbeans/impl/store/Xobj;I)Z

    move-result p1

    return p1
.end method

.method public final contains(Lorg/apache/xmlbeans/impl/store/Xobj;I)Z
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/store/Xobj;->isNormal(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_4

    const/4 p1, -0x1

    if-eq p2, p1, :cond_3

    if-lez p2, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result p1

    if-ge p2, p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :cond_3
    :goto_1
    return v0

    :cond_4
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez p2, :cond_5

    return v1

    :cond_5
    :goto_2
    if-eqz p1, :cond_7

    if-ne p1, p0, :cond_6

    return v0

    :cond_6
    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_2

    :cond_7
    return v1
.end method

.method public copy(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;
    .locals 4

    invoke-static {p3}, Lorg/apache/xmlbeans/XmlOptions;->maskNull(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p3

    const-string v0, "DOCUMENT_TYPE"

    invoke-virtual {p3, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    sget-object v0, Lorg/apache/xmlbeans/XmlObject;->type:Lorg/apache/xmlbeans/SchemaType;

    goto :goto_0

    :cond_0
    move-object v0, p2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "COPY_USE_NEW_LOCALE"

    invoke-virtual {p3, v3}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->getLocale(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v1

    :cond_2
    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->isDocumentType()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->isNoType()Z

    move-result p1

    if-eqz p1, :cond_3

    instance-of p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj$DocumentXobj;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p1, 0x0

    :goto_2
    invoke-static {v1, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->createDomDocumentRootXobj(Lorg/apache/xmlbeans/impl/store/Locale;Z)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object p1

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p3

    invoke-virtual {p3, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->setType(Lorg/apache/xmlbeans/SchemaType;)V

    invoke-virtual {p3}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->copy_contents_from(Lorg/apache/xmlbeans/impl/values/TypeStore;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p1
.end method

.method public copyNode(Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 9

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v3, v2

    :goto_0
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->ensureOccupancy()V

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->newNode(Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v4

    iget-object v5, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_srcValue:Ljava/lang/Object;

    iput-object v5, v4, Lorg/apache/xmlbeans/impl/store/Xobj;->_srcValue:Ljava/lang/Object;

    iget v5, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_offValue:I

    iput v5, v4, Lorg/apache/xmlbeans/impl/store/Xobj;->_offValue:I

    iget v5, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchValue:I

    iput v5, v4, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchValue:I

    iget-object v5, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_srcAfter:Ljava/lang/Object;

    iput-object v5, v4, Lorg/apache/xmlbeans/impl/store/Xobj;->_srcAfter:Ljava/lang/Object;

    iget v5, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_offAfter:I

    iput v5, v4, Lorg/apache/xmlbeans/impl/store/Xobj;->_offAfter:I

    iget v5, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchAfter:I

    iput v5, v4, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchAfter:I

    iget-object v5, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_bookmarks:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    :goto_1
    if-eqz v5, :cond_1

    sget-object v6, Lorg/apache/xmlbeans/CDataBookmark;->CDATA_BOOKMARK:Lorg/apache/xmlbeans/CDataBookmark;

    invoke-virtual {v6}, Lorg/apache/xmlbeans/CDataBookmark;->getKey()Ljava/lang/Object;

    move-result-object v6

    iget v7, v5, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_pos:I

    invoke-virtual {v1, v6, v7}, Lorg/apache/xmlbeans/impl/store/Xobj;->hasBookmark(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, v5, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_pos:I

    sget-object v7, Lorg/apache/xmlbeans/CDataBookmark;->CDATA_BOOKMARK:Lorg/apache/xmlbeans/CDataBookmark;

    invoke-virtual {v7}, Lorg/apache/xmlbeans/CDataBookmark;->getKey()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lorg/apache/xmlbeans/CDataBookmark;->CDATA_BOOKMARK:Lorg/apache/xmlbeans/CDataBookmark;

    invoke-virtual {v4, v6, v7, v8}, Lorg/apache/xmlbeans/impl/store/Xobj;->setBookmark(ILjava/lang/Object;Ljava/lang/Object;)Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    :cond_0
    iget-object v5, v5, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_next:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    move-object v3, v4

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v4}, Lorg/apache/xmlbeans/impl/store/Xobj;->appendXobj(Lorg/apache/xmlbeans/impl/store/Xobj;)Lorg/apache/xmlbeans/impl/store/Xobj;

    :goto_2
    const/4 v5, 0x1

    invoke-virtual {v1, p0, v5}, Lorg/apache/xmlbeans/impl/store/Xobj;->walk(Lorg/apache/xmlbeans/impl/store/Xobj;Z)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v5

    if-nez v5, :cond_3

    iput-object v0, v3, Lorg/apache/xmlbeans/impl/store/Xobj;->_srcAfter:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, v3, Lorg/apache/xmlbeans/impl/store/Xobj;->_offAfter:I

    iput p1, v3, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchAfter:I

    return-object v3

    :cond_3
    iget-object v6, v5, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-ne v1, v6, :cond_4

    move-object v2, v4

    goto :goto_4

    :cond_4
    :goto_3
    iget-object v1, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v4, v5, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eq v1, v4, :cond_5

    iget-object v2, v2, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_3

    :cond_5
    :goto_4
    move-object v1, v5

    goto :goto_0
.end method

.method public copy_contents_from(Lorg/apache/xmlbeans/impl/values/TypeStore;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;
    .locals 8

    check-cast p1, Lorg/apache/xmlbeans/impl/store/Xobj;

    if-ne p1, p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xmlbeans/impl/store/Locale;->getAllNamespaces(Lorg/apache/xmlbeans/impl/store/Cur;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/store/Locale;->getTextValue(Lorg/apache/xmlbeans/impl/store/Cur;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->setValue(Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->disconnectChildrenUsers()V

    sget-boolean v1, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->inhibitDisconnect()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_3
    :goto_0
    const/16 v4, 0x400

    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/store/Xobj;->setBit(I)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isContainer()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getXsiTypeName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v5

    goto :goto_1

    :cond_4
    move-object v5, v2

    :goto_1
    iget-object v6, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p1, v6}, Lorg/apache/xmlbeans/impl/store/Xobj;->copyNode(Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {p0, v2, v7}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNodeContents(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/Cur;Z)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    invoke-static {v6, v0, v7}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNodeContents(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/Cur;Z)V

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    if-eqz v5, :cond_5

    invoke-virtual {v0, v5}, Lorg/apache/xmlbeans/impl/store/Cur;->setXsiType(Lorg/apache/poi/javax/xml/namespace/QName;)V

    :cond_5
    if-nez v1, :cond_7

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->inhibitDisconnect()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_7
    :goto_2
    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/store/Xobj;->clearBit(I)V

    :goto_3
    if-eqz v3, :cond_9

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isContainer()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent()Z

    :cond_8
    invoke-static {v0, v3}, Lorg/apache/xmlbeans/impl/store/Locale;->applyNamespaces(Lorg/apache/xmlbeans/impl/store/Cur;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    :try_start_2
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p1
.end method

.method public count_elements(Lorg/apache/poi/javax/xml/namespace/QName;)I
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->count(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)I

    move-result p1

    return p1
.end method

.method public count_elements(Lorg/apache/xmlbeans/QNameSet;)I
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lorg/apache/xmlbeans/impl/store/Locale;->count(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)I

    move-result p1

    return p1
.end method

.method public disconnectChildrenUsers()V
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_user:Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0, p0, v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->walk(Lorg/apache/xmlbeans/impl/store/Xobj;Z)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    iget-object v3, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_user:Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_2

    :cond_1
    move v3, v2

    :goto_2
    invoke-virtual {v0, p0, v3}, Lorg/apache/xmlbeans/impl/store/Xobj;->walk(Lorg/apache/xmlbeans/impl/store/Xobj;Z)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->disconnectUser()V

    move-object v0, v3

    goto :goto_1

    :cond_2
    return-void
.end method

.method public disconnectNonRootUsers()V
    .locals 3

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_user:Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, p0, v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->walk(Lorg/apache/xmlbeans/impl/store/Xobj;Z)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isRoot()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->disconnectUser()V

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public disconnectUser()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_user:Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->inhibitDisconnect()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->ensureOccupancy()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_user:Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;->disconnect_store()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_user:Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    :cond_0
    return-void
.end method

.method public final domType()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_bits:I

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public dump()V
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->dump(Ljava/io/PrintStream;)V

    return-void
.end method

.method public dump(Ljava/io/PrintStream;)V
    .locals 0

    invoke-static {p1, p0, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->dump(Ljava/io/PrintStream;Lorg/apache/xmlbeans/impl/store/Xobj;Ljava/lang/Object;)V

    return-void
.end method

.method public dump(Ljava/io/PrintStream;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p0, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->dump(Ljava/io/PrintStream;Lorg/apache/xmlbeans/impl/store/Xobj;Ljava/lang/Object;)V

    return-void
.end method

.method public final ensureOccupancy()V
    .locals 8

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isVacant()Z

    move-result v1

    if-eqz v1, :cond_8

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isUserNode()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    const/16 v1, 0x100

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->clearBit(I)V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_user:Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_user:Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    invoke-interface {v1, p0}, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;->build_text(Lorg/apache/xmlbeans/impl/values/NamespaceManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-wide v4, v3, Lorg/apache/xmlbeans/impl/store/Locale;->_versionAll:J

    iget-wide v6, v3, Lorg/apache/xmlbeans/impl/store/Locale;->_versionSansText:J

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/store/Xobj;->setValue(Ljava/lang/String;)V

    if-nez v0, :cond_5

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-wide v2, v2, Lorg/apache/xmlbeans/impl/store/Locale;->_versionSansText:J

    cmp-long v2, v6, v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    :goto_2
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iput-wide v4, v2, Lorg/apache/xmlbeans/impl/store/Locale;->_versionAll:J

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_user:Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7
    :goto_3
    iput-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_user:Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    :cond_8
    return-void
.end method

.method public final ensureParent()Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isRoot()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->cchAfter()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v0, :cond_2

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Xobj$DocumentFragXobj;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/store/Xobj$DocumentFragXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;)V

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->appendXobj(Lorg/apache/xmlbeans/impl/store/Xobj;)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public final entered()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->entered()Z

    move-result v0

    return v0
.end method

.method public exec_query(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)[Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Query;->objectExecQuery(Lorg/apache/xmlbeans/impl/store/Cur;Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p1
.end method

.method public fetch_text(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isOccupied()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->getValueAsString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p1
.end method

.method public final findXmlnsForPrefix(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isContainer()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    move-object v0, p0

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->firstAttr()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isXmlns()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->getXmlnsPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->nextAttr()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v1

    goto :goto_2

    :cond_3
    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public find_all_element_users(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isElem()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v1, p1}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public find_all_element_users(Lorg/apache/xmlbeans/QNameSet;Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isElem()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {p1, v1}, Lorg/apache/xmlbeans/QNameSet;->contains(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public find_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->getAttr(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->getUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public find_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isElem()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v1, p1}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 p2, p2, -0x1

    if-gez p2, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public find_element_user(Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isElem()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {p1, v1}, Lorg/apache/xmlbeans/QNameSet;->contains(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 p2, p2, -0x1

    if-gez p2, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public find_nil()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    sget-object v0, Lorg/apache/xmlbeans/impl/store/Locale;->_xsiNil:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getAttr(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return v1

    :cond_2
    const/4 v2, 0x3

    :try_start_1
    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/impl/store/Xobj;->getValueAsString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw v0
.end method

.method public find_prefix_for_nsuri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->prefixForNamespace(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p1
.end method

.method public final firstAttr()Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public final getAttr(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v1, p1}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getChars(II)Ljava/lang/Object;
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isNormal(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->cchRight(I)I

    move-result v0

    if-ltz p2, :cond_2

    if-le p2, v0, :cond_3

    :cond_2
    move p2, v0

    :cond_3
    if-nez p2, :cond_4

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    const/4 p2, 0x0

    iput p2, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_offSrc:I

    iput p2, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_cchSrc:I

    const/4 p1, 0x0

    return-object p1

    :cond_4
    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Xobj;->getCharsHelper(II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getChars(IILorg/apache/xmlbeans/impl/store/Cur;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Xobj;->getChars(II)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget v0, p2, Lorg/apache/xmlbeans/impl/store/Locale;->_offSrc:I

    iput v0, p3, Lorg/apache/xmlbeans/impl/store/Cur;->_offSrc:I

    iget p2, p2, Lorg/apache/xmlbeans/impl/store/Locale;->_cchSrc:I

    iput p2, p3, Lorg/apache/xmlbeans/impl/store/Cur;->_cchSrc:I

    return-object p1
.end method

.method public getCharsAfterAsString(II)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchValue:I

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posMax()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getCharsAsString(III)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCharsAsString(III)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->cchRight(I)I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Xobj;->getChars(II)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    if-ne p3, p2, :cond_1

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget p3, p2, Lorg/apache/xmlbeans/impl/store/Locale;->_offSrc:I

    iget p2, p2, Lorg/apache/xmlbeans/impl/store/Locale;->_cchSrc:I

    invoke-static {p1, p3, p2}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p3}, Lorg/apache/xmlbeans/impl/store/Locale;->getScrubBuffer(I)Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;

    move-result-object p2

    iget-object p3, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget v0, p3, Lorg/apache/xmlbeans/impl/store/Locale;->_offSrc:I

    iget p3, p3, Lorg/apache/xmlbeans/impl/store/Locale;->_cchSrc:I

    invoke-virtual {p2, p1, v0, p3}, Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;->scrub(Ljava/lang/Object;II)V

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;->getResultAsString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCharsHelper(II)Ljava/lang/Object;
    .locals 4

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-lez p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->cchRight(I)I

    move-result v0

    if-lt v0, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v0

    if-lt p1, v0, :cond_2

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_srcAfter:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget v3, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_offAfter:I

    add-int/2addr v3, p1

    sub-int/2addr v3, v0

    iput v3, v2, Lorg/apache/xmlbeans/impl/store/Locale;->_offSrc:I

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_srcValue:Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_offValue:I

    add-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_offSrc:I

    :goto_1
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iput p2, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_cchSrc:I

    return-object v1
.end method

.method public getCharsValueAsString(II)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getCharsAsString(III)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getDenormal(I)Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    const/4 v1, -0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eq p1, v1, :cond_1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_prevSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->ensureParent()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->posMax()I

    move-result v0

    :goto_1
    move v2, v0

    move-object v0, p1

    move p1, v2

    goto :goto_2

    :cond_3
    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_lastChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :cond_4
    move-object v0, p0

    :goto_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iput p1, v1, Lorg/apache/xmlbeans/impl/store/Locale;->_posTemp:I

    return-object v0
.end method

.method public abstract getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
.end method

.method public final getDomZeroOneChildren()I
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_srcValue:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesValue:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_lastChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_lastChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v2, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesAfter:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    if-nez v2, :cond_1

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_srcAfter:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_srcValue:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesValue:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_lastChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_srcValue:Ljava/lang/Object;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesValue:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_srcAfter:Ljava/lang/Object;

    if-nez v0, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_srcValue:Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesValue:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_next:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    if-nez v1, :cond_4

    iget v0, v0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_cch:I

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchValue:I

    if-ne v0, v1, :cond_4

    :cond_3
    return v2

    :cond_4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->lastAttr()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    if-nez v0, :cond_5

    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    :goto_0
    if-eqz v0, :cond_6

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_srcAfter:Ljava/lang/Object;

    if-nez v0, :cond_6

    if-eqz v1, :cond_6

    iget-object v0, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_srcAfter:Ljava/lang/Object;

    if-nez v0, :cond_6

    iget-object v0, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v0, :cond_6

    return v2

    :cond_6
    const/4 v0, 0x2

    return v0
.end method

.method public final getEmbedded()Lorg/apache/xmlbeans/impl/store/Cur;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->embedCurs()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_embedded:Lorg/apache/xmlbeans/impl/store/Cur;

    return-object v0
.end method

.method public getFirstChars()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->ensureOccupancy()V

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchValue:I

    const/4 v1, -0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->getChars(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->lastAttr()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v2, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchAfter:I

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->getChars(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    const/4 v1, 0x0

    iput v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_offSrc:I

    iput v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_cchSrc:I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->namespaceForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getNormal(I)Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    const/4 v1, -0x1

    if-nez v0, :cond_1

    if-eq p1, v1, :cond_1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posMax()I

    move-result v0

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posMax()I

    move-result v0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    move v2, v0

    move-object v0, p1

    move p1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->ensureParent()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object p1

    move-object v0, p1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_4

    move-object v0, p0

    :goto_1
    move p1, v1

    goto :goto_2

    :cond_4
    move-object v0, p0

    :goto_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iput p1, v1, Lorg/apache/xmlbeans/impl/store/Locale;->_posTemp:I

    return-object v0
.end method

.method public final getObject()Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isUserNode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/XmlObject;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getQName()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    return-object v0
.end method

.method public getString(II)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->cchRight(I)I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    if-ltz p2, :cond_1

    if-le p2, v0, :cond_2

    :cond_1
    move p2, v0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v0

    sget-boolean v1, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    if-lez p1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_0
    const/4 v1, 0x0

    if-lt p1, v0, :cond_5

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_srcAfter:Ljava/lang/Object;

    iget v3, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_offAfter:I

    add-int/2addr v3, p1

    sub-int/2addr v3, v0

    invoke-static {v2, v3, p2}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v2

    if-ne p1, v0, :cond_6

    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchAfter:I

    if-ne p2, p1, :cond_6

    iput-object v2, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_srcAfter:Ljava/lang/Object;

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_offAfter:I

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_srcValue:Ljava/lang/Object;

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_offValue:I

    add-int/2addr v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v0, v2, p2}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v2

    if-ne p1, v3, :cond_6

    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchValue:I

    if-ne p2, p1, :cond_6

    iput-object v2, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_srcValue:Ljava/lang/Object;

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_offValue:I

    :cond_6
    :goto_1
    return-object v2
.end method

.method public final getUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isUserNode()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_user:Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isRoot()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isStableUser()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_user:Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v0, :cond_4

    sget-object v0, Lorg/apache/xmlbeans/XmlBeans;->NO_TYPE:Lorg/apache/xmlbeans/SchemaType;

    check-cast v0, Lorg/apache/xmlbeans/impl/values/TypeStoreUserFactory;

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/values/TypeStoreUserFactory;->createTypeStoreUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v0

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v0

    :goto_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isElem()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getXsiTypeName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;->create_element_user(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v0

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;->create_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_user:Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    invoke-interface {v0, p0}, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;->attach_store(Lorg/apache/xmlbeans/impl/values/TypeStore;)V

    :cond_6
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_user:Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    return-object v0
.end method

.method public final getValueAsQName()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 4

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->hasChildren()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getValueAsString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v3, ""

    :goto_1
    invoke-virtual {p0, v3, v2}, Lorg/apache/xmlbeans/impl/store/Xobj;->namespaceForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v0, 0x0

    return-object v0

    :cond_3
    new-instance v2, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-direct {v2, v1, v0}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public getValueAsString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getValueAsString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValueAsString(I)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->hasChildren()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getFirstChars()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget v1, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_offSrc:I

    iget p1, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_cchSrc:I

    invoke-static {v0, v1, p1}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->lastAttr()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v1

    sget-boolean v2, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-nez v1, :cond_0

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchValue:I

    goto :goto_0

    :cond_0
    iget v2, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchAfter:I

    :goto_0
    if-ne v2, v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_1
    const/4 v0, 0x0

    if-eqz v1, :cond_3

    iput-object p1, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_srcAfter:Ljava/lang/Object;

    iput v0, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_offAfter:I

    goto :goto_2

    :cond_3
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_srcValue:Ljava/lang/Object;

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_offValue:I

    :cond_4
    :goto_2
    return-object p1

    :cond_5
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/Locale;->getScrubBuffer(I)Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget v2, v1, Lorg/apache/xmlbeans/impl/store/Locale;->_offSrc:I

    iget v1, v1, Lorg/apache/xmlbeans/impl/store/Locale;->_cchSrc:I

    invoke-virtual {p1, v0, v2, v1}, Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;->scrub(Ljava/lang/Object;II)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;->getResultAsString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/Locale;->getScrubBuffer(I)Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    :cond_7
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    :goto_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isAtEndOfLastPush()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isText()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->getChars(I)Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_offSrc:I

    iget v3, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_cchSrc:I

    invoke-virtual {p1, v1, v2, v3}, Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;->scrub(Ljava/lang/Object;II)V

    :cond_8
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isComment()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isProcinst()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_9
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->skip()Z

    goto :goto_3

    :cond_a
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Locale$ScrubBuffer;->getResultAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-object p1
.end method

.method public final getXmlnsPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->xmlnsPrefix(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getXmlnsUri()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getXsiTypeName()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isContainer()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/xmlbeans/impl/store/Locale;->_xsiType:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getAttr(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getValueAsQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public get_locale()Lorg/apache/xmlbeans/impl/common/XmlLocale;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    return-object v0
.end method

.method public get_root_object()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    return-object v0
.end method

.method public get_schema_field()Lorg/apache/xmlbeans/SchemaField;
    .locals 4

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isRoot()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    return-object v2

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->ensureParent()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->getUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v1, v0}, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;->get_attribute_field(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaField;

    move-result-object v0

    return-object v0

    :cond_3
    if-nez v0, :cond_5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isElem()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    :goto_1
    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;->new_visitor()Lorg/apache/xmlbeans/impl/values/TypeStoreVisitor;

    move-result-object v0

    if-nez v0, :cond_6

    return-object v2

    :cond_6
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    :goto_2
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isElem()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v0, v2}, Lorg/apache/xmlbeans/impl/values/TypeStoreVisitor;->visit(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    if-ne v1, p0, :cond_7

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/values/TypeStoreVisitor;->get_schema_field()Lorg/apache/xmlbeans/SchemaField;

    move-result-object v0

    return-object v0

    :cond_7
    iget-object v1, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_2
.end method

.method public get_schematypeloader()Lorg/apache/xmlbeans/SchemaTypeLoader;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_schemaTypeLoader:Lorg/apache/xmlbeans/SchemaTypeLoader;

    return-object v0
.end method

.method public get_xsi_type()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getXsiTypeName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    return-object v0
.end method

.method public final hasAttrs()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hasBookmark(Ljava/lang/Object;I)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_bookmarks:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_pos:I

    if-ne v1, p2, :cond_0

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_key:Ljava/lang/Object;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_next:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hasChildren()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_lastChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hasTextEnsureOccupancy()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->ensureOccupancy()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->hasTextNoEnsureOccupancy()Z

    move-result v0

    return v0
.end method

.method public final hasTextNoEnsureOccupancy()Z
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchValue:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->lastAttr()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchAfter:I

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final inChars(ILorg/apache/xmlbeans/impl/store/Xobj;IIZ)Z
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posMax()I

    move-result v2

    if-ge p1, v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v2

    sub-int/2addr v2, v1

    if-eq p1, v2, :cond_0

    if-lez p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p2, p3}, Lorg/apache/xmlbeans/impl/store/Xobj;->isNormal(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    const/4 v0, 0x0

    if-eqz p5, :cond_5

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Xobj;->isRoot()Z

    move-result p5

    if-eqz p5, :cond_4

    if-nez p3, :cond_4

    return v0

    :cond_4
    invoke-virtual {p2, p3}, Lorg/apache/xmlbeans/impl/store/Xobj;->getDenormal(I)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Xobj;->posTemp()I

    move-result p3

    move p5, v1

    goto :goto_2

    :cond_5
    move p5, v0

    :goto_2
    if-ne p2, p0, :cond_7

    if-lt p3, p1, :cond_7

    if-gez p4, :cond_6

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->cchRight(I)I

    move-result p4

    :cond_6
    add-int/2addr p1, p4

    add-int/2addr p1, p5

    if-ge p3, p1, :cond_7

    goto :goto_3

    :cond_7
    move v1, v0

    :goto_3
    return v1
.end method

.method public final inhibitDisconnect()Z
    .locals 1

    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->bitIsSet(I)Z

    move-result v0

    return v0
.end method

.method public final insertCharsHelper(ILjava/lang/Object;IIZ)V
    .locals 9

    sget-boolean v1, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v1

    if-ge p1, v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isOccupied()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v1

    const/4 v2, 0x1

    if-ge p1, v1, :cond_4

    move v3, v2

    goto :goto_2

    :cond_4
    const/4 v3, 0x2

    :goto_2
    sub-int v3, p1, v3

    iget v4, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchValue:I

    iget v5, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchAfter:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_8

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getEmbedded()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v3

    :goto_3
    if-eqz v3, :cond_6

    iget v4, v3, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-lt v4, p1, :cond_5

    add-int/2addr v4, p4

    iput v4, v3, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    :cond_5
    iget-object v3, v3, Lorg/apache/xmlbeans/impl/store/Cur;->_next:Lorg/apache/xmlbeans/impl/store/Cur;

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_bookmarks:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    :goto_4
    if-eqz v3, :cond_8

    iget v4, v3, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_pos:I

    if-lt v4, p1, :cond_7

    add-int/2addr v4, p4

    iput v4, v3, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_pos:I

    :cond_7
    iget-object v3, v3, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_next:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/store/Locale;->getCharUtil()Lorg/apache/xmlbeans/impl/store/CharUtil;

    move-result-object v8

    if-ge p1, v1, :cond_9

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_srcValue:Ljava/lang/Object;

    iget v3, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_offValue:I

    iget v4, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchValue:I

    move-object v0, v8

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lorg/apache/xmlbeans/impl/store/CharUtil;->insertChars(ILjava/lang/Object;IILjava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_srcValue:Ljava/lang/Object;

    iget v0, v8, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_offValue:I

    iget v0, v8, Lorg/apache/xmlbeans/impl/store/CharUtil;->_cchSrc:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchValue:I

    if-eqz p5, :cond_a

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->invalidateUser()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->invalidateSpecialAttr(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    goto :goto_5

    :cond_9
    sub-int v1, p1, v1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_srcAfter:Ljava/lang/Object;

    iget v3, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_offAfter:I

    iget v4, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchAfter:I

    move-object v0, v8

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lorg/apache/xmlbeans/impl/store/CharUtil;->insertChars(ILjava/lang/Object;IILjava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_srcAfter:Ljava/lang/Object;

    iget v0, v8, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_offAfter:I

    iget v0, v8, Lorg/apache/xmlbeans/impl/store/CharUtil;->_cchSrc:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchAfter:I

    if-eqz p5, :cond_a

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->invalidateUser()V

    :cond_a
    :goto_5
    return-void
.end method

.method public final insertXobj(Lorg/apache/xmlbeans/impl/store/Xobj;)Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v2, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isRoot()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isRoot()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_prevSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    if-nez v0, :cond_9

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->ensureParent()Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    iput-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_prevSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    iput-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_prevSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    iput-object p0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_prevSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_a

    iput-object p1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    iput-object p1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    :goto_5
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_prevSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    return-object p0
.end method

.method public final insertXobjs(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/Xobj;)V
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v2, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    iget-object v1, p2, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v2, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v1, :cond_4

    iget-object v1, p2, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_prevSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    if-nez v0, :cond_9

    iget-object v0, p2, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_4
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_prevSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    iput-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_prevSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    iput-object p0, p2, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_prevSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_a

    iput-object p1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    iput-object p1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    :goto_5
    iput-object p2, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_prevSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    :goto_6
    if-eq p1, p0, :cond_b

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    iput-object p2, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_6

    :cond_b
    return-void
.end method

.method public insert_element_user(Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;
    .locals 2

    if-ltz p2, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isContainer()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->findNthChildElem(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0, p0, p1, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->count(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-gt p2, v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_1
    const/4 p2, 0x0

    invoke-static {p1, v0, p2}, Lorg/apache/xmlbeans/impl/store/Xobj;->insertElement(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/impl/store/Xobj;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public insert_element_user(Lorg/apache/xmlbeans/QNameSet;Lorg/apache/poi/javax/xml/namespace/QName;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;
    .locals 2

    if-ltz p3, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isContainer()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->findNthChildElem(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;I)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0, p0, v1, p1}, Lorg/apache/xmlbeans/impl/store/Locale;->count(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/QNameSet;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    if-gt p3, p1, :cond_0

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/store/Xobj;->add_element_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_1
    const/4 p1, 0x0

    invoke-static {p2, v0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->insertElement(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/impl/store/Xobj;I)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public invalidateNil()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_user:Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;->invalidate_nilvalue()V

    :cond_0
    return-void
.end method

.method public final invalidateSpecialAttr(Lorg/apache/xmlbeans/impl/store/Xobj;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    sget-object v1, Lorg/apache/xmlbeans/impl/store/Locale;->_xsiType:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->disconnectNonRootUsers()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->disconnectNonRootUsers()V

    :cond_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    sget-object v1, Lorg/apache/xmlbeans/impl/store/Locale;->_xsiNil:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->invalidateNil()V

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->invalidateNil()V

    :cond_3
    return-void
.end method

.method public final invalidateUser()V
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_user:Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isUserNode()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_user:Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;->invalidate_value()V

    :cond_4
    return-void
.end method

.method public invalidate_nil()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_user:Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;->build_nil()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/xmlbeans/impl/store/Locale;->_xsiNil:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->removeAttr(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/xmlbeans/impl/store/Locale;->_xsiNil:Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "true"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->setAttr(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Xobj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw v0
.end method

.method public invalidate_text()V
    .locals 5

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isOccupied()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->hasTextNoEnsureOccupancy()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->hasChildren()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_user:Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_user:Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNodeContents(Lorg/apache/xmlbeans/impl/store/Cur;Z)V

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    if-nez v0, :cond_4

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_user:Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    :goto_1
    iput-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_user:Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    :cond_5
    const/16 v1, 0x100

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->setBit(I)V

    :cond_6
    if-nez v0, :cond_8

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isValid()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    :goto_2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw v0
.end method

.method public final isAttr()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->kind()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCharNodesAfterUsable()Z
    .locals 5

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_srcAfter:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesAfter:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v3, v0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_next:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    if-nez v3, :cond_1

    iget v3, v0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_cch:I

    iget v4, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchAfter:I

    if-ne v3, v4, :cond_1

    return v2

    :cond_1
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget v4, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchAfter:I

    invoke-static {v3, p0, v0, v4}, Lorg/apache/xmlbeans/impl/store/Cur;->updateCharNodes(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;I)Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesAfter:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public final isCharNodesValueUsable()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isExistingCharNodesValueUsable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesValue:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchValue:I

    invoke-static {v0, p0, v1, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->updateCharNodes(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;I)Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesValue:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isComment()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->kind()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isContainer()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->kind()I

    move-result v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->kindIsContainer(I)Z

    move-result v0

    return v0
.end method

.method public final isElem()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->kind()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isExistingCharNodesValueUsable()Z
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_srcValue:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesValue:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    if-eqz v0, :cond_1

    iget-object v2, v0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_next:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    if-nez v2, :cond_1

    iget v0, v0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_cch:I

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchValue:I

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public final isFirstChildPtrDomUsable()Z
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_srcValue:Ljava/lang/Object;

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesValue:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    if-nez v2, :cond_0

    return v1

    :cond_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_srcValue:Ljava/lang/Object;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesValue:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    if-nez v0, :cond_3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    instance-of v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj$NodeXobj;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "wrong node type"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    :goto_0
    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public final isInSameTree(Lorg/apache/xmlbeans/impl/store/Xobj;)Z
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move-object v0, p0

    :goto_0
    const/4 v1, 0x1

    if-ne v0, p1, :cond_1

    return v1

    :cond_1
    iget-object v3, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v3, :cond_5

    :goto_1
    if-ne p1, p0, :cond_2

    return v1

    :cond_2
    iget-object v3, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v3, :cond_4

    if-ne p1, v0, :cond_3

    move v2, v1

    :cond_3
    return v2

    :cond_4
    move-object p1, v3

    goto :goto_1

    :cond_5
    move-object v0, v3

    goto :goto_0
.end method

.method public final isJustAfterEnd(Lorg/apache/xmlbeans/impl/store/Xobj;I)Z
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/store/Xobj;->isNormal(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isRoot()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    if-ne p1, p0, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result p1

    if-ne p2, p1, :cond_4

    :goto_1
    move v1, v0

    goto :goto_2

    :cond_3
    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/store/Xobj;->getDenormal(I)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object p2

    if-ne p2, p0, :cond_4

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->posTemp()I

    move-result p1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result p2

    if-ne p1, p2, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    return v1
.end method

.method public final isNextSiblingPtrDomUsable()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesAfter:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_srcAfter:Ljava/lang/Object;

    if-nez v0, :cond_2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_1

    instance-of v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj$NodeXobj;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "wrong node type"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final isNormal(I)Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, -0x1

    const/4 v2, 0x1

    if-eq p1, v0, :cond_9

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posMax()I

    move-result v0

    if-lt p1, v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v0

    if-lt p1, v0, :cond_6

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isContainer()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    return v1

    :cond_6
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v0

    sub-int/2addr v0, v2

    if-ne p1, v0, :cond_7

    return v1

    :cond_7
    return v2

    :cond_8
    :goto_0
    return v1

    :cond_9
    :goto_1
    return v2
.end method

.method public final isNormalAttr()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->isXmlns(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isOccupied()Z
    .locals 1

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->bitIsClear(I)Z

    move-result v0

    return v0
.end method

.method public final isProcinst()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->kind()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isRoot()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->kind()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isStableUser()Z
    .locals 1

    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->bitIsSet(I)Z

    move-result v0

    return v0
.end method

.method public final isUserNode()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->kind()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isXmlns()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final isVacant()Z
    .locals 1

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->bitIsSet(I)Z

    move-result v0

    return v0
.end method

.method public final isValid()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isVacant()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchValue:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_user:Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final isXmlns()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->isXmlns(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public is_attribute()Z
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v0

    return v0
.end method

.method public final kind()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_bits:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public final lastAttr()Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    :goto_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final locale()Lorg/apache/xmlbeans/impl/store/Locale;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    return-object v0
.end method

.method public final namespaceForPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    const-string v1, "xml"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "http://www.w3.org/XML/1998/namespace"

    return-object p1

    :cond_1
    const-string v1, "xmlns"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "http://www.w3.org/2000/xmlns/"

    return-object p1

    :cond_2
    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_5

    iget-object v2, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Xobj;->isXmlns()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Xobj;->getXmlnsPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Xobj;->getXmlnsUri()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object v2, v2, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_1

    :cond_4
    iget-object v1, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method

.method public abstract newNode(Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/impl/store/Xobj;
.end method

.method public new_cursor()Lorg/apache/xmlbeans/XmlCursor;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    new-instance v1, Lorg/apache/xmlbeans/impl/store/Cursor;

    invoke-direct {v1, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;-><init>(Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-object v1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw v0
.end method

.method public final nextAttr()Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final nodeType()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->domType()I

    move-result v0

    return v0
.end method

.method public final posAfter()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchValue:I

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public final posMax()I
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchValue:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchAfter:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final posTemp()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget v0, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_posTemp:I

    return v0
.end method

.method public final prefixForNamespace(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    const-string v1, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "xml"

    if-eqz v1, :cond_1

    return-object v2

    :cond_1
    const-string v1, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "xmlns"

    return-object p1

    :cond_2
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isContainer()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->ensureParent()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_7

    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->findXmlnsForPrefix(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->getXmlnsUri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    if-nez p3, :cond_5

    return-object v4

    :cond_5
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p1, v4}, Lorg/apache/xmlbeans/impl/store/Locale;->createXmlns(Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->setAttr(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Xobj;

    :cond_6
    :goto_1
    return-object v0

    :cond_7
    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->firstAttr()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v3

    :goto_3
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/store/Xobj;->isXmlns()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/store/Xobj;->getXmlnsUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/store/Xobj;->getXmlnsPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/xmlbeans/impl/store/Xobj;->findXmlnsForPrefix(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v5

    if-ne v5, v3, :cond_8

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/store/Xobj;->getXmlnsPrefix()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/store/Xobj;->nextAttr()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v3

    goto :goto_3

    :cond_9
    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_2

    :cond_a
    if-nez p3, :cond_b

    return-object v4

    :cond_b
    if-eqz p2, :cond_d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_c

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_c

    invoke-virtual {v1, p2}, Lorg/apache/xmlbeans/impl/store/Xobj;->findXmlnsForPrefix(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object p3

    if-eqz p3, :cond_d

    :cond_c
    move-object p2, v4

    :cond_d
    if-nez p2, :cond_f

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->suggestPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 p2, 0x1

    move v0, p2

    move-object p2, p3

    :goto_4
    invoke-virtual {v1, p2}, Lorg/apache/xmlbeans/impl/store/Xobj;->findXmlnsForPrefix(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v2

    if-nez v2, :cond_e

    goto :goto_5

    :cond_e
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    move v0, v2

    goto :goto_4

    :cond_f
    :goto_5
    move-object p3, v1

    :goto_6
    invoke-virtual {p3}, Lorg/apache/xmlbeans/impl/store/Xobj;->isRoot()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p3}, Lorg/apache/xmlbeans/impl/store/Xobj;->ensureParent()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isRoot()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object p3, p3, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_6

    :cond_10
    iget-object p3, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p3, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->createXmlns(Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p3

    invoke-virtual {v1, p3, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->setAttr(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Xobj;

    return-object p2
.end method

.method public final removeAttr(Lorg/apache/poi/javax/xml/namespace/QName;)Z
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isContainer()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->getAttr(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNode(Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->getAttr(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    const/4 p1, 0x1

    return p1

    :cond_3
    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    goto :goto_1
.end method

.method public final removeCharsHelper(IILorg/apache/xmlbeans/impl/store/Xobj;IZZ)V
    .locals 6

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posMax()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-lez p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->cchRight(I)I

    move-result v1

    if-lt v1, p2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    if-eqz p5, :cond_7

    if-eqz p3, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getEmbedded()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_d

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_next:Lorg/apache/xmlbeans/impl/store/Cur;

    sget-boolean v2, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    if-nez v2, :cond_9

    iget-object v2, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-ne v2, p0, :cond_8

    goto :goto_5

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_5
    iget v2, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-lt v2, p1, :cond_b

    add-int v3, p1, p2

    if-ge v2, v3, :cond_b

    if-eqz p5, :cond_a

    add-int/2addr v2, p4

    sub-int/2addr v2, p1

    invoke-virtual {v0, p3, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToNoCheck(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    goto :goto_6

    :cond_a
    sub-int v2, p2, v2

    add-int/2addr v2, p1

    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->nextChars(I)I

    :cond_b
    :goto_6
    iget-object v2, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-ne v2, p0, :cond_c

    iget v2, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    add-int v3, p1, p2

    if-lt v2, v3, :cond_c

    sub-int/2addr v2, p2

    iput v2, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    :cond_c
    move-object v0, v1

    goto :goto_4

    :cond_d
    iget-object p5, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_bookmarks:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    :goto_7
    if-eqz p5, :cond_14

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    iget-object v1, p5, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-ne v1, p0, :cond_e

    goto :goto_8

    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_f
    :goto_8
    iget v1, p5, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_pos:I

    if-lt v1, p1, :cond_12

    add-int v2, p1, p2

    if-ge v1, v2, :cond_12

    if-nez v0, :cond_11

    if-eqz p3, :cond_10

    goto :goto_9

    :cond_10
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_11
    :goto_9
    add-int/2addr v1, p4

    sub-int/2addr v1, p1

    invoke-virtual {p5, p3, v1}, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    :cond_12
    iget-object v0, p5, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-ne v0, p0, :cond_13

    iget v0, p5, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_pos:I

    add-int v1, p1, p2

    if-lt v0, v1, :cond_13

    sub-int/2addr v0, p2

    iput v0, p5, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_pos:I

    :cond_13
    iget-object p5, p5, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_next:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    goto :goto_7

    :cond_14
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result p3

    iget-object p4, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p4}, Lorg/apache/xmlbeans/impl/store/Locale;->getCharUtil()Lorg/apache/xmlbeans/impl/store/CharUtil;

    move-result-object p4

    if-ge p1, p3, :cond_15

    add-int/lit8 v1, p1, -0x1

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_srcValue:Ljava/lang/Object;

    iget v4, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_offValue:I

    iget v5, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchValue:I

    move-object v0, p4

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/store/CharUtil;->removeChars(IILjava/lang/Object;II)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_srcValue:Ljava/lang/Object;

    iget p1, p4, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_offValue:I

    iget p1, p4, Lorg/apache/xmlbeans/impl/store/CharUtil;->_cchSrc:I

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchValue:I

    if-eqz p6, :cond_16

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->invalidateUser()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->invalidateSpecialAttr(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    goto :goto_a

    :cond_15
    sub-int v1, p1, p3

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_srcAfter:Ljava/lang/Object;

    iget v4, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_offAfter:I

    iget v5, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchAfter:I

    move-object v0, p4

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/store/CharUtil;->removeChars(IILjava/lang/Object;II)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_srcAfter:Ljava/lang/Object;

    iget p1, p4, Lorg/apache/xmlbeans/impl/store/CharUtil;->_offSrc:I

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_offAfter:I

    iget p1, p4, Lorg/apache/xmlbeans/impl/store/CharUtil;->_cchSrc:I

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchAfter:I

    if-eqz p6, :cond_16

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->invalidateUser()V

    :cond_16
    :goto_a
    return-void
.end method

.method public final removeXobj()Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_4

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-ne v1, p0, :cond_0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    iput-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    :cond_0
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_lastChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-ne v1, p0, :cond_1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_prevSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    iput-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_lastChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    :cond_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_prevSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    iput-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    :cond_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v1, :cond_3

    iput-object v0, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_prevSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_prevSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    :cond_4
    return-object p0
.end method

.method public final removeXobjs(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/Xobj;)V
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v1, p2, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v2, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-ne v1, p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    iget-object v0, p2, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-ne v0, p0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-ne v0, p1, :cond_6

    iget-object v0, p2, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    :cond_6
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_lastChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-ne v0, p2, :cond_7

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_prevSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_lastChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    :cond_7
    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_prevSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_8

    iget-object v1, p2, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    iput-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    :cond_8
    iget-object v1, p2, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v1, :cond_9

    iput-object v0, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_prevSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    :cond_9
    const/4 v0, 0x0

    iput-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_prevSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    iput-object v0, p2, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    :goto_3
    if-eqz p1, :cond_a

    iput-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_3

    :cond_a
    return-void
.end method

.method public remove_attribute(Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->removeAttr(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p1
.end method

.method public remove_element(Lorg/apache/poi/javax/xml/namespace/QName;I)V
    .locals 2

    if-ltz p2, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isContainer()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isElem()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v1, p1}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 p2, p2, -0x1

    if-gez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->removeElement(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public remove_element(Lorg/apache/xmlbeans/QNameSet;I)V
    .locals 2

    if-ltz p2, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isContainer()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isElem()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {p1, v1}, Lorg/apache/xmlbeans/QNameSet;->contains(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 p2, p2, -0x1

    if-gez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->removeElement(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final setAttr(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isContainer()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->toAttr(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->removeFollowingAttrs()V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->createAttr(Lorg/apache/poi/javax/xml/namespace/QName;)V

    :goto_1
    invoke-virtual {v0, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->setValue(Ljava/lang/String;)V

    iget-object p1, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-object p1
.end method

.method public final setBit(I)V
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_bits:I

    or-int/2addr p1, v0

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_bits:I

    return-void
.end method

.method public final setBookmark(ILjava/lang/Object;Ljava/lang/Object;)Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isNormal(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_bookmarks:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget v2, v0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_pos:I

    if-ne p1, v2, :cond_3

    iget-object v2, v0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_key:Ljava/lang/Object;

    if-ne p2, v2, :cond_3

    if-nez p3, :cond_2

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_bookmarks:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->listRemove(Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;)Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_bookmarks:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    return-object v1

    :cond_2
    iput-object p3, v0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_value:Ljava/lang/Object;

    return-object v0

    :cond_3
    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_next:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    goto :goto_1

    :cond_4
    if-nez p3, :cond_5

    return-object v1

    :cond_5
    new-instance v0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;-><init>()V

    iput-object p0, v0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iput p1, v0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_pos:I

    iput-object p2, v0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_key:Ljava/lang/Object;

    iput-object p3, v0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_value:Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_bookmarks:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->listInsert(Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;)Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_bookmarks:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    return-object v0
.end method

.method public final setName(Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 4

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isElem()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isProcinst()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v0, p1}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_4
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->notifyChange()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    instance-of v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj$NamedNodeXobj;

    if-eqz v1, :cond_5

    move-object v1, p0

    check-cast v1, Lorg/apache/xmlbeans/impl/store/Xobj$NamedNodeXobj;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/apache/xmlbeans/impl/store/Xobj$NamedNodeXobj;->_canHavePrefixUri:Z

    :cond_5
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isProcinst()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v1, :cond_9

    sget-object v1, Lorg/apache/xmlbeans/impl/store/Locale;->_xsiType:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p1, v1}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    move-object v1, p0

    goto :goto_3

    :cond_7
    :goto_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    :goto_3
    sget-object v2, Lorg/apache/xmlbeans/impl/store/Locale;->_xsiNil:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v0, v2}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1, v2}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_8
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->invalidateNil()V

    goto :goto_4

    :cond_9
    move-object v1, p0

    :cond_a
    :goto_4
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->disconnectNonRootUsers()V

    :cond_b
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-wide v0, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_versionAll:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_versionAll:J

    iget-wide v0, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_versionSansText:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_versionSansText:J

    :cond_c
    return-void
.end method

.method public setStableType(Lorg/apache/xmlbeans/SchemaType;)V
    .locals 0

    check-cast p1, Lorg/apache/xmlbeans/impl/values/TypeStoreUserFactory;

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/values/TypeStoreUserFactory;->createTypeStoreUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->setStableUser(Lorg/apache/xmlbeans/impl/values/TypeStoreUser;)V

    return-void
.end method

.method public setStableUser(Lorg/apache/xmlbeans/impl/values/TypeStoreUser;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->disconnectNonRootUsers()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->disconnectUser()V

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_user:Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_user:Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;->attach_store(Lorg/apache/xmlbeans/impl/values/TypeStore;)V

    const/16 p1, 0x200

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->setBit(I)V

    return-void
.end method

.method public store_text(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_user:Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_user:Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNodeContents(Lorg/apache/xmlbeans/impl/store/Cur;Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    invoke-virtual {v2, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->insertString(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p1, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_user:Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_user:Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-void

    :catchall_0
    move-exception p1

    sget-boolean v1, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_user:Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    if-eqz v1, :cond_3

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_user:Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p1
.end method

.method public substitute(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->setSubstitution(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaType;Z)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p1
.end method

.method public final tempCur()Lorg/apache/xmlbeans/impl/store/Cur;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    return-object v0
.end method

.method public validate(Lorg/apache/xmlbeans/impl/common/ValidatorListener;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    new-instance v1, Lorg/apache/xmlbeans/impl/store/Validate;

    invoke-direct {v1, v0, p1}, Lorg/apache/xmlbeans/impl/store/Validate;-><init>(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/impl/common/ValidatorListener;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p1
.end method

.method public validate_on_set()Z
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Xobj;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-boolean v0, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_validateOnSet:Z

    return v0
.end method

.method public visit_elements(Lorg/apache/xmlbeans/impl/values/TypeStoreVisitor;)V
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not implemeneted"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final walk(Lorg/apache/xmlbeans/impl/store/Xobj;Z)Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    return-object v0

    :cond_0
    move-object p2, p0

    :goto_0
    if-eq p2, p1, :cond_2

    iget-object v0, p2, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object p2, p2, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
