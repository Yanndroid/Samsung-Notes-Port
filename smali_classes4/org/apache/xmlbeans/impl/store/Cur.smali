.class final Lorg/apache/xmlbeans/impl/store/Cur;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/store/Cur$CurLoadContext;,
        Lorg/apache/xmlbeans/impl/store/Cur$Locations;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field public static final ATTR:I = 0x3

.field public static final COMMENT:I = 0x4

.field public static final DISPOSED:I = 0x3

.field public static final ELEM:I = 0x2

.field public static final EMBEDDED:I = 0x2

.field public static final END_POS:I = -0x1

.field public static final LOAD_USE_LOCALE_CHAR_UTIL:Ljava/lang/String; = "LOAD_USE_LOCALE_CHAR_UTIL"

.field public static final NO_POS:I = -0x2

.field public static final POOLED:I = 0x0

.field public static final PROCINST:I = 0x5

.field public static final REGISTERED:I = 0x1

.field public static final ROOT:I = 0x1

.field public static final TEXT:I

.field public static synthetic class$org$apache$xmlbeans$CDataBookmark:Ljava/lang/Class;

.field public static synthetic class$org$apache$xmlbeans$XmlLineNumber:Ljava/lang/Class;

.field public static synthetic class$org$apache$xmlbeans$impl$soap$Detail:Ljava/lang/Class;

.field public static synthetic class$org$apache$xmlbeans$impl$soap$DetailEntry:Ljava/lang/Class;

.field public static synthetic class$org$apache$xmlbeans$impl$soap$SOAPBody:Ljava/lang/Class;

.field public static synthetic class$org$apache$xmlbeans$impl$soap$SOAPBodyElement:Ljava/lang/Class;

.field public static synthetic class$org$apache$xmlbeans$impl$soap$SOAPElement:Ljava/lang/Class;

.field public static synthetic class$org$apache$xmlbeans$impl$soap$SOAPEnvelope:Ljava/lang/Class;

.field public static synthetic class$org$apache$xmlbeans$impl$soap$SOAPFault:Ljava/lang/Class;

.field public static synthetic class$org$apache$xmlbeans$impl$soap$SOAPFaultElement:Ljava/lang/Class;

.field public static synthetic class$org$apache$xmlbeans$impl$soap$SOAPHeader:Ljava/lang/Class;

.field public static synthetic class$org$apache$xmlbeans$impl$soap$SOAPHeaderElement:Ljava/lang/Class;

.field public static synthetic class$org$apache$xmlbeans$impl$store$Cur:Ljava/lang/Class;


# instance fields
.field public _cchSrc:I

.field public _id:Ljava/lang/String;

.field public _locale:Lorg/apache/xmlbeans/impl/store/Locale;

.field public _next:Lorg/apache/xmlbeans/impl/store/Cur;

.field public _nextTemp:Lorg/apache/xmlbeans/impl/store/Cur;

.field public _offSrc:I

.field public _pos:I

.field private _posTemp:I

.field public _prev:Lorg/apache/xmlbeans/impl/store/Cur;

.field public _prevTemp:Lorg/apache/xmlbeans/impl/store/Cur;

.field public _ref:Lorg/apache/xmlbeans/impl/store/Locale$Ref;

.field public _selectionCount:I

.field public _selectionFirst:I

.field public _selectionLoc:I

.field public _selectionN:I

.field public _stackTop:I

.field public _state:I

.field public _tempFrame:I

.field public _xobj:Lorg/apache/xmlbeans/impl/store/Xobj;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/store/Cur;->class$org$apache$xmlbeans$impl$store$Cur:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.store.Cur"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Cur;->class$org$apache$xmlbeans$impl$store$Cur:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Locale;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    const/4 p1, -0x2

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_tempFrame:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_state:I

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_stackTop:I

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionFirst:I

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionN:I

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionLoc:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionCount:I

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

.method public static createDomDocumentRootXobj(Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->createDomDocumentRootXobj(Lorg/apache/xmlbeans/impl/store/Locale;Z)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object p0

    return-object p0
.end method

.method public static createDomDocumentRootXobj(Lorg/apache/xmlbeans/impl/store/Locale;Z)Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/apache/xmlbeans/impl/store/Xobj$DocumentFragXobj;

    invoke-direct {p1, p0}, Lorg/apache/xmlbeans/impl/store/Xobj$DocumentFragXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/xmlbeans/impl/store/Xobj$DocumentXobj;

    invoke-direct {p1, p0}, Lorg/apache/xmlbeans/impl/store/Xobj$DocumentXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/apache/xmlbeans/impl/store/Xobj$SoapPartDocXobj;

    invoke-direct {p1, p0}, Lorg/apache/xmlbeans/impl/store/Xobj$SoapPartDocXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;)V

    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_ownerDoc:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_ownerDoc:Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    :cond_2
    return-object p1
.end method

.method public static createElementXobj(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_saaj:Lorg/apache/xmlbeans/impl/store/Saaj;

    if-nez v0, :cond_0

    new-instance p2, Lorg/apache/xmlbeans/impl/store/Xobj$ElementXobj;

    invoke-direct {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj$ElementXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/poi/javax/xml/namespace/QName;)V

    return-object p2

    :cond_0
    invoke-interface {v0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Saaj;->identifyElement(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/Class;

    move-result-object p2

    sget-object v0, Lorg/apache/xmlbeans/impl/store/Cur;->class$org$apache$xmlbeans$impl$soap$SOAPElement:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "org.apache.xmlbeans.impl.soap.SOAPElement"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Cur;->class$org$apache$xmlbeans$impl$soap$SOAPElement:Ljava/lang/Class;

    :cond_1
    if-ne p2, v0, :cond_2

    new-instance p2, Lorg/apache/xmlbeans/impl/store/Xobj$SoapElementXobj;

    invoke-direct {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj$SoapElementXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/poi/javax/xml/namespace/QName;)V

    return-object p2

    :cond_2
    sget-object v0, Lorg/apache/xmlbeans/impl/store/Cur;->class$org$apache$xmlbeans$impl$soap$SOAPBody:Ljava/lang/Class;

    if-nez v0, :cond_3

    const-string v0, "org.apache.xmlbeans.impl.soap.SOAPBody"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Cur;->class$org$apache$xmlbeans$impl$soap$SOAPBody:Ljava/lang/Class;

    :cond_3
    if-ne p2, v0, :cond_4

    new-instance p2, Lorg/apache/xmlbeans/impl/store/Xobj$SoapBodyXobj;

    invoke-direct {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj$SoapBodyXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/poi/javax/xml/namespace/QName;)V

    return-object p2

    :cond_4
    sget-object v0, Lorg/apache/xmlbeans/impl/store/Cur;->class$org$apache$xmlbeans$impl$soap$SOAPBodyElement:Ljava/lang/Class;

    if-nez v0, :cond_5

    const-string v0, "org.apache.xmlbeans.impl.soap.SOAPBodyElement"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Cur;->class$org$apache$xmlbeans$impl$soap$SOAPBodyElement:Ljava/lang/Class;

    :cond_5
    if-ne p2, v0, :cond_6

    new-instance p2, Lorg/apache/xmlbeans/impl/store/Xobj$SoapBodyElementXobj;

    invoke-direct {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj$SoapBodyElementXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/poi/javax/xml/namespace/QName;)V

    return-object p2

    :cond_6
    sget-object v0, Lorg/apache/xmlbeans/impl/store/Cur;->class$org$apache$xmlbeans$impl$soap$SOAPEnvelope:Ljava/lang/Class;

    if-nez v0, :cond_7

    const-string v0, "org.apache.xmlbeans.impl.soap.SOAPEnvelope"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Cur;->class$org$apache$xmlbeans$impl$soap$SOAPEnvelope:Ljava/lang/Class;

    :cond_7
    if-ne p2, v0, :cond_8

    new-instance p2, Lorg/apache/xmlbeans/impl/store/Xobj$SoapEnvelopeXobj;

    invoke-direct {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj$SoapEnvelopeXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/poi/javax/xml/namespace/QName;)V

    return-object p2

    :cond_8
    sget-object v0, Lorg/apache/xmlbeans/impl/store/Cur;->class$org$apache$xmlbeans$impl$soap$SOAPHeader:Ljava/lang/Class;

    if-nez v0, :cond_9

    const-string v0, "org.apache.xmlbeans.impl.soap.SOAPHeader"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Cur;->class$org$apache$xmlbeans$impl$soap$SOAPHeader:Ljava/lang/Class;

    :cond_9
    if-ne p2, v0, :cond_a

    new-instance p2, Lorg/apache/xmlbeans/impl/store/Xobj$SoapHeaderXobj;

    invoke-direct {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj$SoapHeaderXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/poi/javax/xml/namespace/QName;)V

    return-object p2

    :cond_a
    sget-object v0, Lorg/apache/xmlbeans/impl/store/Cur;->class$org$apache$xmlbeans$impl$soap$SOAPHeaderElement:Ljava/lang/Class;

    if-nez v0, :cond_b

    const-string v0, "org.apache.xmlbeans.impl.soap.SOAPHeaderElement"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Cur;->class$org$apache$xmlbeans$impl$soap$SOAPHeaderElement:Ljava/lang/Class;

    :cond_b
    if-ne p2, v0, :cond_c

    new-instance p2, Lorg/apache/xmlbeans/impl/store/Xobj$SoapHeaderElementXobj;

    invoke-direct {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj$SoapHeaderElementXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/poi/javax/xml/namespace/QName;)V

    return-object p2

    :cond_c
    sget-object v0, Lorg/apache/xmlbeans/impl/store/Cur;->class$org$apache$xmlbeans$impl$soap$SOAPFaultElement:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "org.apache.xmlbeans.impl.soap.SOAPFaultElement"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Cur;->class$org$apache$xmlbeans$impl$soap$SOAPFaultElement:Ljava/lang/Class;

    :cond_d
    if-ne p2, v0, :cond_e

    new-instance p2, Lorg/apache/xmlbeans/impl/store/Xobj$SoapFaultElementXobj;

    invoke-direct {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj$SoapFaultElementXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/poi/javax/xml/namespace/QName;)V

    return-object p2

    :cond_e
    sget-object v0, Lorg/apache/xmlbeans/impl/store/Cur;->class$org$apache$xmlbeans$impl$soap$Detail:Ljava/lang/Class;

    if-nez v0, :cond_f

    const-string v0, "org.apache.xmlbeans.impl.soap.Detail"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Cur;->class$org$apache$xmlbeans$impl$soap$Detail:Ljava/lang/Class;

    :cond_f
    if-ne p2, v0, :cond_10

    new-instance p2, Lorg/apache/xmlbeans/impl/store/Xobj$DetailXobj;

    invoke-direct {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj$DetailXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/poi/javax/xml/namespace/QName;)V

    return-object p2

    :cond_10
    sget-object v0, Lorg/apache/xmlbeans/impl/store/Cur;->class$org$apache$xmlbeans$impl$soap$DetailEntry:Ljava/lang/Class;

    if-nez v0, :cond_11

    const-string v0, "org.apache.xmlbeans.impl.soap.DetailEntry"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Cur;->class$org$apache$xmlbeans$impl$soap$DetailEntry:Ljava/lang/Class;

    :cond_11
    if-ne p2, v0, :cond_12

    new-instance p2, Lorg/apache/xmlbeans/impl/store/Xobj$DetailEntryXobj;

    invoke-direct {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj$DetailEntryXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/poi/javax/xml/namespace/QName;)V

    return-object p2

    :cond_12
    sget-object v0, Lorg/apache/xmlbeans/impl/store/Cur;->class$org$apache$xmlbeans$impl$soap$SOAPFault:Ljava/lang/Class;

    if-nez v0, :cond_13

    const-string v0, "org.apache.xmlbeans.impl.soap.SOAPFault"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Cur;->class$org$apache$xmlbeans$impl$soap$SOAPFault:Ljava/lang/Class;

    :cond_13
    if-ne p2, v0, :cond_14

    new-instance p2, Lorg/apache/xmlbeans/impl/store/Xobj$SoapFaultXobj;

    invoke-direct {p2, p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj$SoapFaultXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/poi/javax/xml/namespace/QName;)V

    return-object p2

    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Unknown SAAJ element class: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private createHelper(Lorg/apache/xmlbeans/impl/store/Xobj;)V
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->tempCur(Lorg/apache/xmlbeans/impl/store/Xobj;I)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNode(Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    return-void
.end method

.method public static dump(Ljava/io/PrintStream;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 0

    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->dump(Ljava/io/PrintStream;)V

    return-void
.end method

.method public static dump(Ljava/io/PrintStream;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public static dump(Ljava/io/PrintStream;Lorg/apache/xmlbeans/impl/store/Xobj;Ljava/lang/Object;)V
    .locals 1

    if-nez p2, :cond_0

    move-object p2, p1

    :cond_0
    :goto_0
    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_1

    move-object p1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->dumpXobj(Ljava/io/PrintStream;Lorg/apache/xmlbeans/impl/store/Xobj;ILjava/lang/Object;)V

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method public static dump(Ljava/io/PrintStream;Lorg/w3c/dom/Node;)V
    .locals 0

    check-cast p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->dump(Ljava/io/PrintStream;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    return-void
.end method

.method public static dump(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->dump(Ljava/io/PrintStream;Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    return-void
.end method

.method public static dump(Lorg/w3c/dom/Node;)V
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->dump(Ljava/io/PrintStream;Lorg/w3c/dom/Node;)V

    return-void
.end method

.method private static dumpBookmarks(Ljava/io/PrintStream;Lorg/apache/xmlbeans/impl/store/Xobj;Ljava/lang/Object;)V
    .locals 4

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_bookmarks:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    :goto_0
    if-eqz p1, :cond_2

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    if-ne p2, p1, :cond_0

    const-string v0, "*:"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_value:Ljava/lang/Object;

    instance-of v1, v0, Lorg/apache/xmlbeans/XmlLineNumber;

    const-string v2, "]"

    if-eqz v1, :cond_1

    check-cast v0, Lorg/apache/xmlbeans/XmlLineNumber;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "<line:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlLineNumber;->getLine()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_pos:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<mark>["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p1, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_next:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static dumpCharNodes(Ljava/io/PrintStream;Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;Ljava/lang/Object;)V
    .locals 2

    :goto_0
    if-eqz p1, :cond_2

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    if-ne p1, p2, :cond_0

    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    instance-of v1, p1, Lorg/apache/xmlbeans/impl/store/DomImpl$TextNode;

    if-eqz v1, :cond_1

    const-string v1, "TEXT"

    goto :goto_1

    :cond_1
    const-string v1, "CDATA"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_cch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_next:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static dumpChars(Ljava/io/PrintStream;Ljava/lang/Object;II)V
    .locals 3

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/CharUtil;->getString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-ge p2, p3, :cond_6

    const/16 p3, 0x24

    if-ne p2, p3, :cond_0

    const-string p1, "..."

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/16 v1, 0x20

    if-lt p3, v1, :cond_1

    const/16 v1, 0x7f

    if-ge p3, v1, :cond_1

    invoke-virtual {p0, p3}, Ljava/io/PrintStream;->print(C)V

    goto :goto_2

    :cond_1
    const/16 v1, 0xa

    if-ne p3, v1, :cond_2

    const-string p3, "\\n"

    :goto_1
    invoke-virtual {p0, p3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const/16 v1, 0xd

    if-ne p3, v1, :cond_3

    const-string p3, "\\r"

    goto :goto_1

    :cond_3
    const/16 v1, 0x9

    if-ne p3, v1, :cond_4

    const-string p3, "\\t"

    goto :goto_1

    :cond_4
    const/16 v1, 0x22

    if-ne p3, v1, :cond_5

    const-string p3, "\\\""

    goto :goto_1

    :cond_5
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "<#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p3, ">"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method private static dumpCur(Ljava/io/PrintStream;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/Cur;Ljava/lang/Object;)V
    .locals 1

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    if-ne p3, p2, :cond_0

    const-string p3, "*:"

    invoke-virtual {p0, p3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p2, Lorg/apache/xmlbeans/impl/store/Cur;->_id:Ljava/lang/String;

    if-nez p1, :cond_1

    const-string p1, "<cur>"

    :cond_1
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "["

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p1, p2, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, "]"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method private static dumpCurs(Ljava/io/PrintStream;Lorg/apache/xmlbeans/impl/store/Xobj;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_embedded:Lorg/apache/xmlbeans/impl/store/Cur;

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "E:"

    invoke-static {p0, v1, v0, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->dumpCur(Ljava/io/PrintStream;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/Cur;Ljava/lang/Object;)V

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_next:Lorg/apache/xmlbeans/impl/store/Cur;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_registered:Lorg/apache/xmlbeans/impl/store/Cur;

    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-ne v1, p1, :cond_1

    const-string v1, "R:"

    invoke-static {p0, v1, v0, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->dumpCur(Ljava/io/PrintStream;Ljava/lang/String;Lorg/apache/xmlbeans/impl/store/Cur;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_next:Lorg/apache/xmlbeans/impl/store/Cur;

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static dumpXobj(Ljava/io/PrintStream;Lorg/apache/xmlbeans/impl/store/Xobj;ILjava/lang/Object;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "  "

    if-ne p1, p3, :cond_1

    const-string v1, "* "

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_2

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->kind()I

    move-result v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->kindName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    if-eqz v0, :cond_4

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v1}, Lorg/apache/poi/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v1}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_srcValue:Ljava/lang/Object;

    const-string v1, " )"

    if-nez v0, :cond_5

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesValue:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    if-eqz v0, :cond_6

    :cond_5
    const-string v0, " Value( "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_srcValue:Ljava/lang/Object;

    iget v2, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_offValue:I

    iget v3, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchValue:I

    invoke-static {p0, v0, v2, v3}, Lorg/apache/xmlbeans/impl/store/Cur;->dumpChars(Ljava/io/PrintStream;Ljava/lang/Object;II)V

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesValue:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    invoke-static {p0, v0, p3}, Lorg/apache/xmlbeans/impl/store/Cur;->dumpCharNodes(Ljava/io/PrintStream;Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_user:Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    if-eqz v0, :cond_7

    const-string v0, " (USER)"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isVacant()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, " (VACANT)"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_8
    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_srcAfter:Ljava/lang/Object;

    if-nez v0, :cond_9

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesAfter:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    if-eqz v0, :cond_a

    :cond_9
    const-string v0, " After( "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_srcAfter:Ljava/lang/Object;

    iget v2, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_offAfter:I

    iget v3, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchAfter:I

    invoke-static {p0, v0, v2, v3}, Lorg/apache/xmlbeans/impl/store/Cur;->dumpChars(Ljava/io/PrintStream;Ljava/lang/Object;II)V

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesAfter:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    invoke-static {p0, v0, p3}, Lorg/apache/xmlbeans/impl/store/Cur;->dumpCharNodes(Ljava/io/PrintStream;Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_a
    invoke-static {p0, p1, p3}, Lorg/apache/xmlbeans/impl/store/Cur;->dumpCurs(Ljava/io/PrintStream;Lorg/apache/xmlbeans/impl/store/Xobj;Ljava/lang/Object;)V

    invoke-static {p0, p1, p3}, Lorg/apache/xmlbeans/impl/store/Cur;->dumpBookmarks(Ljava/io/PrintStream;Lorg/apache/xmlbeans/impl/store/Xobj;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_b

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_b

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_b
    const-string v1, " ("

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    :goto_2
    if-eqz p1, :cond_c

    add-int/lit8 v0, p2, 0x1

    invoke-static {p0, p1, v0, p3}, Lorg/apache/xmlbeans/impl/store/Cur;->dumpXobj(Ljava/io/PrintStream;Lorg/apache/xmlbeans/impl/store/Xobj;ILjava/lang/Object;)V

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_2

    :cond_c
    return-void
.end method

.method private getDenormal()Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    invoke-direct {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->getDenormal(Lorg/apache/xmlbeans/impl/store/Xobj;I)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    return-object v0
.end method

.method private getDenormal(Lorg/apache/xmlbeans/impl/store/Xobj;I)Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 0

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/store/Xobj;->getDenormal(I)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object p2

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget p1, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_posTemp:I

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_posTemp:I

    return-object p2
.end method

.method private getNormal(Lorg/apache/xmlbeans/impl/store/Xobj;I)Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 0

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/store/Xobj;->getNormal(I)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object p2

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget p1, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_posTemp:I

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_posTemp:I

    return-object p2
.end method

.method public static kindIsContainer(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static kindIsFinish(I)Z
    .locals 1

    const/4 v0, -0x2

    if-eq p0, v0, :cond_1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static kindName(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<< Unknown Kind ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p0, ") >>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "PROCINST"

    return-object p0

    :cond_1
    const-string p0, "COMMENT"

    return-object p0

    :cond_2
    const-string p0, "ATTR"

    return-object p0

    :cond_3
    const-string p0, "ELEM"

    return-object p0

    :cond_4
    const-string p0, "ROOT"

    return-object p0

    :cond_5
    const-string p0, "TEXT"

    return-object p0
.end method

.method public static moveNode(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/Cur;)V
    .locals 6

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isRoot()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->contains(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->isRoot()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_7
    :goto_3
    if-eqz p1, :cond_b

    iget v1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_8

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->ensureOccupancy()V

    :cond_8
    iget v1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-nez v1, :cond_9

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eq v1, p0, :cond_a

    :cond_9
    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isJustAfterEnd(Lorg/apache/xmlbeans/impl/store/Xobj;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    return-void

    :cond_b
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Locale;->notifyChange()V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-wide v2, v1, Lorg/apache/xmlbeans/impl/store/Locale;->_versionAll:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Lorg/apache/xmlbeans/impl/store/Locale;->_versionAll:J

    iget-wide v2, v1, Lorg/apache/xmlbeans/impl/store/Locale;->_versionSansText:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lorg/apache/xmlbeans/impl/store/Locale;->_versionSansText:J

    if-eqz p1, :cond_c

    iget-object v2, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    if-eq v2, v1, :cond_c

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Locale;->notifyChange()V

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-wide v2, v1, Lorg/apache/xmlbeans/impl/store/Locale;->_versionAll:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lorg/apache/xmlbeans/impl/store/Locale;->_versionAll:J

    iget-wide v2, v1, Lorg/apache/xmlbeans/impl/store/Locale;->_versionSansText:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lorg/apache/xmlbeans/impl/store/Locale;->_versionSansText:J

    :cond_c
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v1

    if-eqz v1, :cond_e

    if-nez p1, :cond_d

    const/4 v1, 0x0

    goto :goto_4

    :cond_d
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->getParentRaw()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v1

    :goto_4
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->invalidateSpecialAttr(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    goto :goto_5

    :cond_e
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->invalidateUser()V

    :cond_f
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->hasParent()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->getParent()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->invalidateUser()V

    :cond_10
    :goto_5
    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchAfter:I

    const/4 v2, 0x0

    if-lez v1, :cond_11

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v1

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/store/Xobj;->getDenormal(I)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posTemp()I

    move-result v4

    iget v5, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchAfter:I

    invoke-static {p0, v1, v3, v4, v5}, Lorg/apache/xmlbeans/impl/store/Cur;->transferChars(Lorg/apache/xmlbeans/impl/store/Xobj;ILorg/apache/xmlbeans/impl/store/Xobj;II)V

    :cond_11
    if-nez v0, :cond_13

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchAfter:I

    if-nez v0, :cond_12

    goto :goto_6

    :cond_12
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_13
    :goto_6
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->embedCurs()V

    move-object v0, p0

    :goto_7
    const/4 v1, 0x1

    if-eqz v0, :cond_16

    :goto_8
    iget-object v3, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_embedded:Lorg/apache/xmlbeans/impl/store/Cur;

    if-eqz v3, :cond_14

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/store/Xobj;->getNormal(I)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    goto :goto_8

    :cond_14
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->disconnectUser()V

    if-eqz p1, :cond_15

    iget-object v3, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iput-object v3, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    :cond_15
    invoke-virtual {v0, p0, v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->walk(Lorg/apache/xmlbeans/impl/store/Xobj;Z)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    goto :goto_7

    :cond_16
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->removeXobj()Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz p1, :cond_1c

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v3, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-eqz v3, :cond_17

    move v3, v1

    goto :goto_9

    :cond_17
    move v3, v2

    :goto_9
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->cchRight()I

    move-result v4

    if-lez v4, :cond_19

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v3, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-eqz v3, :cond_18

    move v2, v1

    :cond_18
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    move v3, v2

    :cond_19
    if-eqz v3, :cond_1a

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->appendXobj(Lorg/apache/xmlbeans/impl/store/Xobj;)Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_a

    :cond_1a
    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->insertXobj(Lorg/apache/xmlbeans/impl/store/Xobj;)Lorg/apache/xmlbeans/impl/store/Xobj;

    :goto_a
    if-lez v4, :cond_1b

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v2

    invoke-static {v0, v1, p0, v2, v4}, Lorg/apache/xmlbeans/impl/store/Cur;->transferChars(Lorg/apache/xmlbeans/impl/store/Xobj;ILorg/apache/xmlbeans/impl/store/Xobj;II)V

    :cond_1b
    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    :cond_1c
    return-void
.end method

.method public static moveNodeContents(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/Cur;Z)V
    .locals 11

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->isRoot()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->hasAttrs()Z

    move-result v1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->hasChildren()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_3

    if-eqz p2, :cond_2

    if-nez v1, :cond_3

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    move v2, v4

    :goto_1
    const/4 v5, 0x0

    const/4 v6, -0x1

    const-wide/16 v7, 0x1

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isVacant()Z

    move-result p2

    if-eqz p2, :cond_4

    if-nez p1, :cond_4

    const/16 p1, 0x100

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->clearBit(I)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->invalidateUser()V

    invoke-virtual {p0, v5}, Lorg/apache/xmlbeans/impl/store/Xobj;->invalidateSpecialAttr(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-wide p1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_versionAll:J

    add-long/2addr p1, v7

    iput-wide p1, p0, Lorg/apache/xmlbeans/impl/store/Locale;->_versionAll:J

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->hasTextEnsureOccupancy()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    invoke-virtual {p0, p1, v6}, Lorg/apache/xmlbeans/impl/store/Cur;->moveChars(Lorg/apache/xmlbeans/impl/store/Cur;I)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    :cond_5
    :goto_2
    return-void

    :cond_6
    if-eqz p1, :cond_f

    iget-object v2, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-ne p0, v2, :cond_8

    iget v2, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-ne v2, v6, :cond_8

    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    if-eqz p2, :cond_7

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    move v3, v4

    :goto_3
    invoke-virtual {p1, v3}, Lorg/apache/xmlbeans/impl/store/Cur;->next(Z)Z

    return-void

    :cond_8
    iget-object v2, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v9, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    if-ne v2, v9, :cond_a

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    if-eqz p2, :cond_9

    if-eqz v1, :cond_9

    move v1, v3

    goto :goto_4

    :cond_9
    move v1, v4

    :goto_4
    invoke-virtual {p1, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->next(Z)Z

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->isAtLastPush()Z

    move-result v1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    goto :goto_5

    :cond_a
    move v1, v4

    :goto_5
    if-eqz v1, :cond_b

    return-void

    :cond_b
    if-nez v0, :cond_d

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->contains(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_6

    :cond_c
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_d
    :goto_6
    if-nez v0, :cond_f

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->getParent()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isOccupied()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_7

    :cond_e
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_f
    :goto_7
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->hasTextNoEnsureOccupancy()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    invoke-virtual {v0, p1, v6}, Lorg/apache/xmlbeans/impl/store/Cur;->moveChars(Lorg/apache/xmlbeans/impl/store/Cur;I)Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    if-eqz p1, :cond_10

    iget v0, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_cchSrc:I

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->nextChars(I)I

    goto :goto_8

    :cond_10
    move v0, v4

    :goto_8
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Locale;->embedCurs()V

    invoke-virtual {p0, p0, v3}, Lorg/apache/xmlbeans/impl/store/Xobj;->walk(Lorg/apache/xmlbeans/impl/store/Xobj;Z)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v1

    move-object v2, v1

    move v9, v4

    :goto_9
    if-eqz v1, :cond_1a

    iget-object v10, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-ne v10, p0, :cond_15

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v10

    if-eqz v10, :cond_15

    sget-boolean v10, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v10, :cond_12

    iget v10, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchAfter:I

    if-nez v10, :cond_11

    goto :goto_a

    :cond_11
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_12
    :goto_a
    if-nez p2, :cond_13

    iget-object v2, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_e

    :cond_13
    if-nez p1, :cond_14

    move-object v10, v5

    goto :goto_b

    :cond_14
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->getParent()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v10

    :goto_b
    invoke-virtual {v1, v10}, Lorg/apache/xmlbeans/impl/store/Xobj;->invalidateSpecialAttr(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    :cond_15
    :goto_c
    iget-object v10, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_embedded:Lorg/apache/xmlbeans/impl/store/Cur;

    if-eqz v10, :cond_16

    invoke-virtual {v10, p0, v6}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    goto :goto_c

    :cond_16
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->disconnectUser()V

    if-eqz p1, :cond_17

    iget-object v10, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iput-object v10, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    :cond_17
    if-nez v9, :cond_19

    iget-object v9, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_bookmarks:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    if-eqz v9, :cond_18

    goto :goto_d

    :cond_18
    move v9, v4

    goto :goto_e

    :cond_19
    :goto_d
    move v9, v3

    :goto_e
    invoke-virtual {v1, p0, v3}, Lorg/apache/xmlbeans/impl/store/Xobj;->walk(Lorg/apache/xmlbeans/impl/store/Xobj;Z)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v1

    goto :goto_9

    :cond_1a
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_lastChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v9, :cond_1b

    if-nez p1, :cond_1b

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->createRoot()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    move-object v5, p1

    :cond_1b
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->invalidateUser()V

    :cond_1c
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-wide v9, v1, Lorg/apache/xmlbeans/impl/store/Locale;->_versionAll:J

    add-long/2addr v9, v7

    iput-wide v9, v1, Lorg/apache/xmlbeans/impl/store/Locale;->_versionAll:J

    iget-wide v9, v1, Lorg/apache/xmlbeans/impl/store/Locale;->_versionSansText:J

    add-long/2addr v9, v7

    iput-wide v9, v1, Lorg/apache/xmlbeans/impl/store/Locale;->_versionSansText:J

    if-eqz p1, :cond_1d

    if-nez v0, :cond_1d

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->getParent()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->invalidateUser()V

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-wide v9, v1, Lorg/apache/xmlbeans/impl/store/Locale;->_versionAll:J

    add-long/2addr v9, v7

    iput-wide v9, v1, Lorg/apache/xmlbeans/impl/store/Locale;->_versionAll:J

    iget-wide v9, v1, Lorg/apache/xmlbeans/impl/store/Locale;->_versionSansText:J

    add-long/2addr v9, v7

    iput-wide v9, v1, Lorg/apache/xmlbeans/impl/store/Locale;->_versionSansText:J

    :cond_1d
    invoke-virtual {p0, v2, p2}, Lorg/apache/xmlbeans/impl/store/Xobj;->removeXobjs(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/Xobj;)V

    if-eqz p1, :cond_27

    iget-object p0, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-eqz v1, :cond_1e

    move v1, v3

    goto :goto_f

    :cond_1e
    move v1, v4

    :goto_f
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->cchRight()I

    move-result v6

    if-lez v6, :cond_20

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    iget-object p0, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-eqz v1, :cond_1f

    move v4, v3

    :cond_1f
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    move v1, v4

    :cond_20
    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v4

    if-eqz v4, :cond_24

    move-object v4, v2

    :goto_10
    iget-object v7, v4, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v7, :cond_21

    invoke-virtual {v7}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v7

    if-eqz v7, :cond_21

    iget-object v4, v4, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_10

    :cond_21
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->getParent()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v7

    if-lez v6, :cond_22

    iget-object v8, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v9, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/store/Xobj;->posMax()I

    move-result v10

    invoke-static {v8, v9, v4, v10, v6}, Lorg/apache/xmlbeans/impl/store/Cur;->transferChars(Lorg/apache/xmlbeans/impl/store/Xobj;ILorg/apache/xmlbeans/impl/store/Xobj;II)V

    :cond_22
    invoke-virtual {v7}, Lorg/apache/xmlbeans/impl/store/Xobj;->hasTextNoEnsureOccupancy()Z

    move-result v6

    if-eqz v6, :cond_25

    iget v6, v7, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchValue:I

    if-lez v6, :cond_23

    goto :goto_11

    :cond_23
    invoke-virtual {v7}, Lorg/apache/xmlbeans/impl/store/Xobj;->lastAttr()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v3

    iget v6, v7, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchAfter:I

    :goto_11
    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v8

    invoke-static {v7, v3, v4, v8, v6}, Lorg/apache/xmlbeans/impl/store/Cur;->transferChars(Lorg/apache/xmlbeans/impl/store/Xobj;ILorg/apache/xmlbeans/impl/store/Xobj;II)V

    goto :goto_12

    :cond_24
    if-lez v6, :cond_25

    iget-object v3, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v4, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Xobj;->posMax()I

    move-result v7

    invoke-static {v3, v4, p2, v7, v6}, Lorg/apache/xmlbeans/impl/store/Cur;->transferChars(Lorg/apache/xmlbeans/impl/store/Xobj;ILorg/apache/xmlbeans/impl/store/Xobj;II)V

    :cond_25
    :goto_12
    if-eqz v1, :cond_26

    invoke-virtual {p0, v2, p2}, Lorg/apache/xmlbeans/impl/store/Xobj;->appendXobjs(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/Xobj;)V

    goto :goto_13

    :cond_26
    invoke-virtual {p0, v2, p2}, Lorg/apache/xmlbeans/impl/store/Xobj;->insertXobjs(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/Xobj;)V

    :goto_13
    invoke-virtual {p1, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->prevChars(I)I

    :cond_27
    if-eqz v5, :cond_28

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    :cond_28
    return-void
.end method

.method public static release(Lorg/apache/xmlbeans/impl/store/Cur;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    :cond_0
    return-void
.end method

.method private selectionIndex(I)I
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    const/4 v1, -0x1

    if-nez v0, :cond_1

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionN:I

    if-lt v0, v1, :cond_0

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionCount:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionN:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionN:I

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionFirst:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionLoc:I

    :cond_2
    :goto_1
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionN:I

    if-ge v0, p1, :cond_3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_locations:Lorg/apache/xmlbeans/impl/store/Cur$Locations;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionLoc:I

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->next(I)I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionLoc:I

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionN:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionN:I

    goto :goto_1

    :cond_3
    :goto_2
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionN:I

    if-le v0, p1, :cond_4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_locations:Lorg/apache/xmlbeans/impl/store/Cur$Locations;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionLoc:I

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->prev(I)I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionLoc:I

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionN:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionN:I

    goto :goto_2

    :cond_4
    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionLoc:I

    return p1
.end method

.method private tempCur(Lorg/apache/xmlbeans/impl/store/Xobj;I)Lorg/apache/xmlbeans/impl/store/Cur;
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

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

    if-nez p1, :cond_3

    const/4 v0, -0x2

    if-ne p2, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    if-eqz p1, :cond_4

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->getNormal(Lorg/apache/xmlbeans/impl/store/Xobj;I)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object p1

    iget p2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_posTemp:I

    invoke-virtual {v0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    :cond_4
    return-object v0
.end method

.method private static transferChars(Lorg/apache/xmlbeans/impl/store/Xobj;ILorg/apache/xmlbeans/impl/store/Xobj;II)V
    .locals 8

    sget-boolean v2, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-eq p0, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v2, :cond_3

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v4, p2, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    if-nez v2, :cond_5

    if-lez p1, :cond_4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posMax()I

    move-result v3

    if-ge p1, v3, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    :goto_2
    if-nez v2, :cond_7

    if-lez p3, :cond_6

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Xobj;->posMax()I

    move-result v3

    if-gt p3, v3, :cond_6

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7
    :goto_3
    if-nez v2, :cond_9

    if-lez p4, :cond_8

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->cchRight(I)I

    move-result v3

    if-gt p4, v3, :cond_8

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_9
    :goto_4
    if-nez v2, :cond_b

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v2

    if-ge p3, v2, :cond_b

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Xobj;->isOccupied()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_5

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_b
    :goto_5
    invoke-virtual {p0, p1, p4}, Lorg/apache/xmlbeans/impl/store/Xobj;->getCharsHelper(II)Ljava/lang/Object;

    move-result-object v4

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget v5, v2, Lorg/apache/xmlbeans/impl/store/Locale;->_offSrc:I

    iget v6, v2, Lorg/apache/xmlbeans/impl/store/Locale;->_cchSrc:I

    const/4 v7, 0x0

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v2 .. v7}, Lorg/apache/xmlbeans/impl/store/Xobj;->insertCharsHelper(ILjava/lang/Object;IIZ)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p4

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xmlbeans/impl/store/Xobj;->removeCharsHelper(IILorg/apache/xmlbeans/impl/store/Xobj;IZZ)V

    return-void
.end method

.method public static updateCharNodes(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;I)Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;
    .locals 4

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    move-object v1, p2

    move v2, v0

    :goto_1
    if-eqz v1, :cond_5

    if-lez p3, :cond_5

    sget-boolean v3, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v3

    if-ne v3, p1, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_2
    iget v3, v1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_cch:I

    if-le v3, p3, :cond_4

    iput p3, v1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_cch:I

    :cond_4
    iput v2, v1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_off:I

    iget v3, v1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_cch:I

    add-int/2addr v2, v3

    sub-int/2addr p3, v3

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_next:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    goto :goto_1

    :cond_5
    if-gtz p3, :cond_9

    :goto_3
    if-eqz v1, :cond_a

    sget-boolean p0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez p0, :cond_7

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p0

    if-ne p0, p1, :cond_6

    goto :goto_4

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_7
    :goto_4
    iget p0, v1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_cch:I

    if-eqz p0, :cond_8

    iput v0, v1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_cch:I

    :cond_8
    iput v2, v1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_off:I

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_next:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Locale;->createTextNode()Lorg/apache/xmlbeans/impl/store/DomImpl$TextNode;

    move-result-object p0

    check-cast p1, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->setDom(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    iput p3, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_cch:I

    iput v2, p0, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_off:I

    invoke-static {p2, p0}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->appendNode(Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;)Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    move-result-object p2

    :cond_a
    return-object p2
.end method


# virtual methods
.method public addToSelection()V
    .locals 4

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_locations:Lorg/apache/xmlbeans/impl/store/Cur$Locations;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->allocate(Lorg/apache/xmlbeans/impl/store/Cur;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/store/Locale;->_locations:Lorg/apache/xmlbeans/impl/store/Cur$Locations;

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionFirst:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->insert(III)I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionFirst:I

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionCount:I

    return-void
.end method

.method public addToSelection(Lorg/apache/xmlbeans/impl/store/Cur;)V
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->isNormal()Z

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

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_locations:Lorg/apache/xmlbeans/impl/store/Cur$Locations;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->allocate(Lorg/apache/xmlbeans/impl/store/Cur;)I

    move-result p1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_locations:Lorg/apache/xmlbeans/impl/store/Cur$Locations;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionFirst:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->insert(III)I

    move-result p1

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionFirst:I

    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionCount:I

    return-void
.end method

.method public cchLeft()I
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->cchLeft(I)I

    move-result v0

    return v0
.end method

.method public cchRight()I
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->cchRight(I)I

    move-result v0

    return v0
.end method

.method public clearSelection()V
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionCount:I

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionCount:I

    if-lez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->removeSelection(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public comparePosition(Lorg/apache/xmlbeans/impl/store/Cur;)I
    .locals 9

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    const/4 v2, 0x2

    if-eq v0, v1, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v1, v3, :cond_3

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v1

    sub-int/2addr v1, v4

    :cond_3
    iget-object v5, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget p1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-ne p1, v3, :cond_4

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result p1

    sub-int/2addr p1, v4

    :cond_4
    const/4 v6, 0x0

    if-ne v0, v5, :cond_7

    if-ge v1, p1, :cond_5

    goto :goto_1

    :cond_5
    if-ne v1, p1, :cond_6

    move v3, v6

    goto :goto_1

    :cond_6
    move v3, v4

    :goto_1
    return v3

    :cond_7
    iget-object v7, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    move v8, v6

    :goto_2
    if-eqz v7, :cond_a

    add-int/lit8 v8, v8, 0x1

    if-ne v7, v5, :cond_9

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v0

    sub-int/2addr v0, v4

    if-ge p1, v0, :cond_8

    move v3, v4

    :cond_8
    return v3

    :cond_9
    iget-object v7, v7, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_2

    :cond_a
    iget-object p1, v5, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    :goto_3
    if-eqz p1, :cond_d

    add-int/lit8 v6, v6, 0x1

    if-ne p1, v0, :cond_c

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result p1

    sub-int/2addr p1, v4

    if-ge v1, p1, :cond_b

    goto :goto_4

    :cond_b
    move v3, v4

    :goto_4
    return v3

    :cond_c
    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_3

    :cond_d
    :goto_5
    if-le v8, v6, :cond_e

    add-int/lit8 v8, v8, -0x1

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_5

    :cond_e
    :goto_6
    if-le v6, v8, :cond_f

    add-int/lit8 v6, v6, -0x1

    iget-object v5, v5, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_6

    :cond_f
    sget-boolean p1, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez p1, :cond_11

    if-ne v6, v8, :cond_10

    goto :goto_7

    :cond_10
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_11
    :goto_7
    if-nez v6, :cond_12

    return v2

    :cond_12
    if-nez p1, :cond_14

    iget-object p1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz p1, :cond_13

    iget-object p1, v5, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz p1, :cond_13

    goto :goto_8

    :cond_13
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_14
    :goto_8
    iget-object p1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v1, v5, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eq p1, v1, :cond_16

    if-nez p1, :cond_15

    return v2

    :cond_15
    move-object v0, p1

    move-object v5, v1

    goto :goto_8

    :cond_16
    iget-object p1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_prevSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz p1, :cond_1b

    iget-object p1, v5, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez p1, :cond_17

    goto :goto_a

    :cond_17
    iget-object p1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz p1, :cond_1a

    iget-object p1, v5, Lorg/apache/xmlbeans/impl/store/Xobj;->_prevSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez p1, :cond_18

    goto :goto_9

    :cond_18
    if-eqz v0, :cond_19

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_prevSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-ne v0, v5, :cond_18

    return v4

    :cond_19
    return v3

    :cond_1a
    :goto_9
    return v4

    :cond_1b
    :goto_a
    return v3
.end method

.method public contains(Lorg/apache/xmlbeans/impl/store/Cur;)Z
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNode()Z

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

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->contains(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result p1

    return p1
.end method

.method public copyNode(Lorg/apache/xmlbeans/impl/store/Cur;)V
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNode()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->copyNode(Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNode(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/Cur;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    :goto_2
    return-void
.end method

.method public createAttr(Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Xobj$AttrXobj;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-direct {v0, v1, p1}, Lorg/apache/xmlbeans/impl/store/Xobj$AttrXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/poi/javax/xml/namespace/QName;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->createHelper(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    return-void
.end method

.method public createComment()V
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Xobj$CommentXobj;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/store/Xobj$CommentXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->createHelper(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    return-void
.end method

.method public createDomDocFragRoot()V
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Xobj$DocumentFragXobj;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/store/Xobj$DocumentFragXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;)V

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    return-void
.end method

.method public createDomDocumentRoot()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->createDomDocumentRootXobj(Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    return-void
.end method

.method public createElement(Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->createElement(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;)V

    return-void
.end method

.method public createElement(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-static {v0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->createElementXobj(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->createHelper(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    return-void
.end method

.method public createProcinst(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Xobj$ProcInstXobj;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-direct {v0, v1, p1}, Lorg/apache/xmlbeans/impl/store/Xobj$ProcInstXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->createHelper(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    return-void
.end method

.method public createRoot()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->createDomDocFragRoot()V

    return-void
.end method

.method public dump()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-static {v0, v1, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->dump(Ljava/io/PrintStream;Lorg/apache/xmlbeans/impl/store/Xobj;Ljava/lang/Object;)V

    return-void
.end method

.method public dump(Ljava/io/PrintStream;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v0, :cond_0

    const-string v0, "Unpositioned xptr"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1, v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->dump(Ljava/io/PrintStream;Lorg/apache/xmlbeans/impl/store/Xobj;Ljava/lang/Object;)V

    return-void
.end method

.method public firstBookmarkInChars(Ljava/lang/Object;I)I
    .locals 5

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNormal()Z

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
    if-nez v0, :cond_5

    if-lez p2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->cchRight()I

    move-result v0

    if-gt p2, v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isText()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_bookmarks:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    move v2, v1

    :goto_4
    if-eqz v0, :cond_a

    iget-object v3, v0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_key:Ljava/lang/Object;

    if-ne v3, p1, :cond_9

    const/4 v3, 0x0

    invoke-virtual {p0, v0, p2, v3}, Lorg/apache/xmlbeans/impl/store/Cur;->inChars(Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;IZ)Z

    move-result v3

    if-eqz v3, :cond_9

    if-eq v2, v1, :cond_8

    iget v3, v0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_pos:I

    iget v4, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    sub-int/2addr v3, v4

    if-ge v3, v2, :cond_9

    :cond_8
    iget v2, v0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_pos:I

    iget v3, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    sub-int/2addr v2, v3

    :cond_9
    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_next:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    goto :goto_4

    :cond_a
    move v1, v2

    :cond_b
    return v1
.end method

.method public firstBookmarkInCharsLeft(Ljava/lang/Object;I)I
    .locals 11

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNormal()Z

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
    if-nez v0, :cond_5

    if-lez p2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->cchLeft()I

    move-result v0

    if-gt p2, v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->cchLeft()I

    move-result v0

    const/4 v1, -0x1

    if-lez v0, :cond_b

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDenormal()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_posTemp:I

    sub-int v8, v2, p2

    iget-object v2, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_bookmarks:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    move v10, v1

    move-object v9, v2

    :goto_4
    if-eqz v9, :cond_a

    iget-object v2, v9, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_key:Ljava/lang/Object;

    if-ne v2, p1, :cond_9

    iget-object v4, v9, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v5, v9, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_pos:I

    const/4 v7, 0x0

    move-object v2, v0

    move v3, v8

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lorg/apache/xmlbeans/impl/store/Xobj;->inChars(ILorg/apache/xmlbeans/impl/store/Xobj;IIZ)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eq v10, v1, :cond_8

    iget v2, v9, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_pos:I

    sub-int/2addr v2, v8

    if-ge v2, v10, :cond_9

    :cond_8
    iget v2, v9, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_pos:I

    sub-int/2addr v2, v8

    move v10, v2

    :cond_9
    iget-object v9, v9, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_next:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    goto :goto_4

    :cond_a
    move v1, v10

    :cond_b
    return v1
.end method

.method public getAttrValue(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->toAttr(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getValueAsString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    return-object p1
.end method

.method public getBookmark(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNormal()Z

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
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_bookmarks:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    :goto_2
    if-eqz v0, :cond_5

    iget v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_pos:I

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-ne v1, v2, :cond_4

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_key:Ljava/lang/Object;

    if-ne v1, p1, :cond_4

    iget-object p1, v0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_value:Ljava/lang/Object;

    return-object p1

    :cond_4
    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_next:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCharNodes()Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;
    .locals 4

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

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

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isRoot()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDenormal()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_posTemp:I

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v2

    if-lt v1, v2, :cond_4

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v2, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesAfter:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    iget v3, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchAfter:I

    invoke-static {v1, v0, v2, v3}, Lorg/apache/xmlbeans/impl/store/Cur;->updateCharNodes(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;I)Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesAfter:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->ensureOccupancy()V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v2, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesValue:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    iget v3, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchValue:I

    invoke-static {v1, v0, v2, v3}, Lorg/apache/xmlbeans/impl/store/Cur;->updateCharNodes(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;I)Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesValue:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    :goto_2
    return-object v1
.end method

.method public getChars(I)Ljava/lang/Object;
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    invoke-virtual {v0, v1, p1, p0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getChars(IILorg/apache/xmlbeans/impl/store/Cur;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getCharsAsString(I)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNormal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getCharsAsString(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCharsAsString(II)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/xmlbeans/impl/store/Xobj;->getCharsAsString(III)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNormal()Z

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

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isText()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->cchLeft()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getCharNodes()Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    move-result-object v1

    :goto_2
    iget v2, v1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_cch:I

    sub-int/2addr v0, v2

    if-gez v0, :cond_4

    return-object v1

    :cond_4
    iget-object v1, v1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_next:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    return-object v0
.end method

.method public getFirstChars()Ljava/lang/Object;
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getFirstChars()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget v2, v1, Lorg/apache/xmlbeans/impl/store/Locale;->_offSrc:I

    iput v2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_offSrc:I

    iget v1, v1, Lorg/apache/xmlbeans/impl/store/Locale;->_cchSrc:I

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_cchSrc:I

    return-object v0
.end method

.method public getLocal()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    return-object v0
.end method

.method public getObject()Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isUserNode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/XmlObject;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getParent()Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getParent(Z)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    return-object v0
.end method

.method public getParent(Z)Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    const/4 v2, 0x1

    if-lt v1, v2, :cond_2

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v2

    if-ge v1, v2, :cond_2

    goto :goto_3

    :cond_2
    if-nez v0, :cond_4

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v1, :cond_5

    return-object v1

    :cond_5
    if-nez p1, :cond_7

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isRoot()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->createRoot()V

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNode(Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-object v0

    :cond_7
    :goto_2
    const/4 p1, 0x0

    return-object p1

    :cond_8
    :goto_3
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    return-object p1
.end method

.method public getParentNoRoot()Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x1

    if-lt v1, v2, :cond_2

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v2

    if-ge v1, v2, :cond_2

    goto :goto_2

    :cond_2
    if-nez v0, :cond_4

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const/4 v0, 0x0

    return-object v0

    :cond_6
    :goto_2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    return-object v0
.end method

.method public getParentRaw()Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getParent(Z)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isUserNode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v0

    return-object v0
.end method

.method public getValueAsString()Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNode()Z

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

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->hasChildren()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValueAsString(I)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->getValueAsString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getXmlnsPrefix()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isXmlns()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getXmlnsPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXmlnsUri()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isXmlns()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getXmlnsUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getXsiTypeName()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getXsiTypeName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    return-object v0
.end method

.method public hasAttrs()Z
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->hasAttrs()Z

    move-result v0

    return v0
.end method

.method public hasChildren()Z
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->hasChildren()Z

    move-result v0

    return v0
.end method

.method public hasParent()Z
    .locals 4

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v1, v2, :cond_6

    if-lt v1, v3, :cond_2

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v2

    if-ge v1, v2, :cond_2

    goto :goto_2

    :cond_2
    if-nez v0, :cond_4

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :cond_6
    :goto_2
    return v3
.end method

.method public hasText()Z
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->hasTextEnsureOccupancy()Z

    move-result v0

    return v0
.end method

.method public inChars(Lorg/apache/xmlbeans/impl/store/Cur;IZ)Z
    .locals 6

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isText()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->cchRight()I

    move-result v1

    if-lt v1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->isNormal()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    iget-object v2, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v3, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/store/Xobj;->inChars(ILorg/apache/xmlbeans/impl/store/Xobj;IIZ)Z

    move-result p1

    return p1
.end method

.method public inChars(Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;IZ)Z
    .locals 6

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isText()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->cchRight()I

    move-result v1

    if-lt v1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v1, p1, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_pos:I

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isNormal(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    iget-object v2, p1, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v3, p1, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_pos:I

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/store/Xobj;->inChars(ILorg/apache/xmlbeans/impl/store/Xobj;IIZ)Z

    move-result p1

    return p1
.end method

.method public insertChars(Ljava/lang/Object;II)V
    .locals 9

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isRoot()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    invoke-static {p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/CharUtil;->isValid(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-gtz p3, :cond_4

    return-void

    :cond_4
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Locale;->notifyChange()V

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->ensureOccupancy()V

    :cond_5
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDenormal()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v1

    iget v8, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_posTemp:I

    if-nez v0, :cond_7

    if-lez v8, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_2
    const/4 v7, 0x1

    move-object v2, v1

    move v3, v8

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Lorg/apache/xmlbeans/impl/store/Xobj;->insertCharsHelper(ILjava/lang/Object;IIZ)V

    invoke-virtual {p0, v1, v8}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-wide p2, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_versionAll:J

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    iput-wide p2, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_versionAll:J

    return-void
.end method

.method public insertString(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->insertChars(Ljava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public isAtEndOf(Lorg/apache/xmlbeans/impl/store/Cur;)Z
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->isNormal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->isNode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-ne v0, p1, :cond_2

    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public isAtEndOfLastPush()Z
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_stackTop:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_locations:Lorg/apache/xmlbeans/impl/store/Cur$Locations;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_stackTop:I

    invoke-virtual {v0, v1, p0}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->isAtEndOf(ILorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v0

    return v0
.end method

.method public isAtLastPush()Z
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_stackTop:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_locations:Lorg/apache/xmlbeans/impl/store/Cur$Locations;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_stackTop:I

    invoke-virtual {v0, v1, p0}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->isSamePos(ILorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v0

    return v0
.end method

.method public isAttr()Z
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->kind()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public isComment()Z
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->kind()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public isContainer()Z
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->kind()I

    move-result v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->kindIsContainer(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public isContainerOrFinish()Z
    .locals 5

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->kind()I

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v3, :cond_3

    const/4 v3, -0x2

    if-eq v0, v3, :cond_3

    if-eq v0, v4, :cond_3

    if-ne v0, v2, :cond_4

    :cond_3
    move v1, v4

    :cond_4
    return v1
.end method

.method public isDomDocRoot()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    instance-of v0, v0, Lorg/w3c/dom/Document;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDomFragRoot()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    instance-of v0, v0, Lorg/w3c/dom/DocumentFragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isElem()Z
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->kind()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public isEnd()Z
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->kind()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public isEndRoot()Z
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->kind()I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public isFinish()Z
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->kind()I

    move-result v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->kindIsContainer(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public isInSameTree(Lorg/apache/xmlbeans/impl/store/Cur;)Z
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isInSameTree(Lorg/apache/xmlbeans/impl/store/Xobj;)Z

    move-result p1

    return p1
.end method

.method public isJustAfterEnd(Lorg/apache/xmlbeans/impl/store/Cur;)Z
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNormal()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->isNormal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->isNode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    invoke-virtual {p1, v0, v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isJustAfterEnd(Lorg/apache/xmlbeans/impl/store/Xobj;I)Z

    move-result p1

    return p1
.end method

.method public isJustAfterEnd(Lorg/apache/xmlbeans/impl/store/Xobj;)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    invoke-virtual {p1, v0, v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isJustAfterEnd(Lorg/apache/xmlbeans/impl/store/Xobj;I)Z

    move-result p1

    return p1
.end method

.method public isNode()Z
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public isNormal()Z
    .locals 4

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_state:I

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    const/4 v3, -0x2

    if-ne v0, v3, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    iget v3, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    invoke-virtual {v0, v3}, Lorg/apache/xmlbeans/impl/store/Xobj;->isNormal(I)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_embedded:Lorg/apache/xmlbeans/impl/store/Cur;

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isOnList(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v0

    return v0

    :cond_4
    sget-boolean v1, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v1, :cond_6

    if-ne v0, v2, :cond_5

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    :goto_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_registered:Lorg/apache/xmlbeans/impl/store/Cur;

    goto :goto_0

    :cond_7
    :goto_2
    return v1
.end method

.method public isNormalAttr()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isNormalAttr()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOnList(Lorg/apache/xmlbeans/impl/store/Cur;)Z
    .locals 0

    :goto_0
    if-eqz p1, :cond_1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_next:Lorg/apache/xmlbeans/impl/store/Cur;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isPositioned()Z
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNormal()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public isProcinst()Z
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->kind()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public isRoot()Z
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->kind()I

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public isSamePos(Lorg/apache/xmlbeans/impl/store/Cur;)Z
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNormal()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

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
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    iget p1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-ne v0, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public isText()Z
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public isTextCData()Z
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    sget-object v1, Lorg/apache/xmlbeans/impl/store/Cur;->class$org$apache$xmlbeans$CDataBookmark:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.apache.xmlbeans.CDataBookmark"

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/store/Cur;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/xmlbeans/impl/store/Cur;->class$org$apache$xmlbeans$CDataBookmark:Ljava/lang/Class;

    :cond_0
    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    invoke-virtual {v0, v1, v2}, Lorg/apache/xmlbeans/impl/store/Xobj;->hasBookmark(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public isUserNode()Z
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->kind()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isXmlns()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_1
    return v2
.end method

.method public isXmlns()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isXmlns()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public kind()I
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->kind()I

    move-result v0

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    neg-int v0, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public listInsert(Lorg/apache/xmlbeans/impl/store/Cur;)Lorg/apache/xmlbeans/impl/store/Cur;
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_next:Lorg/apache/xmlbeans/impl/store/Cur;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_prev:Lorg/apache/xmlbeans/impl/store/Cur;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    iput-object p0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_prev:Lorg/apache/xmlbeans/impl/store/Cur;

    move-object p1, p0

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_prev:Lorg/apache/xmlbeans/impl/store/Cur;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_prev:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_prev:Lorg/apache/xmlbeans/impl/store/Cur;

    iput-object p0, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_next:Lorg/apache/xmlbeans/impl/store/Cur;

    iput-object p0, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_prev:Lorg/apache/xmlbeans/impl/store/Cur;

    :goto_1
    return-object p1
.end method

.method public listRemove(Lorg/apache/xmlbeans/impl/store/Cur;)Lorg/apache/xmlbeans/impl/store/Cur;
    .locals 4

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_prev:Lorg/apache/xmlbeans/impl/store/Cur;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->isOnList(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_prev:Lorg/apache/xmlbeans/impl/store/Cur;

    const/4 v2, 0x0

    if-ne v1, p0, :cond_2

    move-object p1, v2

    goto :goto_2

    :cond_2
    if-ne p1, p0, :cond_3

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_next:Lorg/apache/xmlbeans/impl/store/Cur;

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_next:Lorg/apache/xmlbeans/impl/store/Cur;

    iput-object v3, v1, Lorg/apache/xmlbeans/impl/store/Cur;->_next:Lorg/apache/xmlbeans/impl/store/Cur;

    :goto_1
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_next:Lorg/apache/xmlbeans/impl/store/Cur;

    if-nez v3, :cond_4

    iput-object v1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_prev:Lorg/apache/xmlbeans/impl/store/Cur;

    goto :goto_2

    :cond_4
    iput-object v1, v3, Lorg/apache/xmlbeans/impl/store/Cur;->_prev:Lorg/apache/xmlbeans/impl/store/Cur;

    iput-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_next:Lorg/apache/xmlbeans/impl/store/Cur;

    :goto_2
    iput-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_prev:Lorg/apache/xmlbeans/impl/store/Cur;

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_next:Lorg/apache/xmlbeans/impl/store/Cur;

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_3
    return-object p1
.end method

.method public moveChars(Lorg/apache/xmlbeans/impl/store/Cur;I)Ljava/lang/Object;
    .locals 10

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

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

    if-lez p2, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->cchRight()I

    move-result v1

    if-gt p2, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->isRoot()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-gez p2, :cond_6

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->cchRight()I

    move-result p2

    :cond_6
    const/4 v1, 0x0

    if-nez p2, :cond_7

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_offSrc:I

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_cchSrc:I

    const/4 p1, 0x0

    return-object p1

    :cond_7
    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->getChars(I)Ljava/lang/Object;

    move-result-object v8

    iget v9, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_offSrc:I

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isText()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v2

    if-lt v0, v2, :cond_8

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    :goto_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isOccupied()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_a
    :goto_4
    if-nez p1, :cond_c

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_bookmarks:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    :goto_5
    if-eqz v0, :cond_e

    invoke-virtual {p0, v0, p2, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->inChars(Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;IZ)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->createRoot()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->moveChars(Lorg/apache/xmlbeans/impl/store/Cur;I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-object p2

    :cond_b
    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;->_next:Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    goto :goto_5

    :cond_c
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->inChars(Lorg/apache/xmlbeans/impl/store/Cur;IZ)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToCur(Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->nextChars(I)I

    :goto_6
    iput v9, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_offSrc:I

    iput p2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_cchSrc:I

    return-object v8

    :cond_d
    invoke-virtual {p1, v8, v9, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->insertChars(Ljava/lang/Object;II)V

    :cond_e
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->notifyChange()V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-nez p1, :cond_f

    const/4 v4, 0x0

    const/4 v5, -0x2

    goto :goto_7

    :cond_f
    iget-object v4, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v5, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    :goto_7
    const/4 v6, 0x0

    const/4 v7, 0x1

    move v3, p2

    invoke-virtual/range {v1 .. v7}, Lorg/apache/xmlbeans/impl/store/Xobj;->removeCharsHelper(IILorg/apache/xmlbeans/impl/store/Xobj;IZZ)V

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-wide v0, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_versionAll:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_versionAll:J

    goto :goto_6
.end method

.method public moveNode(Lorg/apache/xmlbeans/impl/store/Cur;)V
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isRoot()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->contains(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->isRoot()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->skip()Z

    invoke-static {v0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNode(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/Cur;)V

    return-void
.end method

.method public moveNodeContents(Lorg/apache/xmlbeans/impl/store/Cur;Z)V
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->isRoot()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-static {v0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNodeContents(Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/Cur;Z)V

    return-void
.end method

.method public moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    return-void
.end method

.method public moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V
    .locals 4

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

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

    if-nez p1, :cond_3

    const/4 v1, -0x2

    if-ne p2, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/store/Xobj;->isNormal(I)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isVacant()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchValue:I

    if-nez v1, :cond_4

    iget-object v1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_user:Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_7

    iget v3, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_state:I

    if-eq v3, v2, :cond_7

    if-ne v3, v1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    if-nez v0, :cond_9

    iget v3, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_state:I

    if-eq v3, v1, :cond_9

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v1, :cond_9

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_embedded:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->isOnList(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_4

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_4
    if-nez v0, :cond_b

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_state:I

    if-eq v1, v2, :cond_b

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v1, :cond_a

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_embedded:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->isOnList(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_5

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_b
    :goto_5
    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToNoCheck(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNormal()Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isVacant()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget p2, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchValue:I

    if-nez p2, :cond_c

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_user:Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    if-nez p1, :cond_c

    goto :goto_6

    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_d
    :goto_6
    return-void
.end method

.method public moveToCharNode(Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;)V
    .locals 4

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToDom(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->ensureOccupancy()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v2, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesValue:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    iget v3, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchValue:I

    invoke-static {v1, v0, v2, v3}, Lorg/apache/xmlbeans/impl/store/Cur;->updateCharNodes(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;I)Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesValue:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    :goto_1
    if-eqz v1, :cond_3

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v0, v1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_off:I

    add-int/lit8 v0, v0, 0x1

    :goto_2
    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getNormal(Lorg/apache/xmlbeans/impl/store/Xobj;I)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object p1

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_posTemp:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    return-void

    :cond_2
    iget-object v1, v1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_next:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v2, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesAfter:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    iget v3, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchAfter:I

    invoke-static {v1, v0, v2, v3}, Lorg/apache/xmlbeans/impl/store/Cur;->updateCharNodes(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/impl/store/Xobj;Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;I)Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesAfter:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    :goto_3
    if-eqz v1, :cond_5

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v0, v1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_off:I

    iget v1, p1, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchValue:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_4
    iget-object v1, v1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_next:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    goto :goto_3

    :cond_5
    sget-boolean p1, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-eqz p1, :cond_6

    return-void

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public moveToCur(Lorg/apache/xmlbeans/impl/store/Cur;)V
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNormal()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

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
    if-nez p1, :cond_2

    const/4 p1, 0x0

    const/4 v0, -0x2

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget p1, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    invoke-virtual {p0, v0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    :goto_1
    return-void
.end method

.method public moveToDom(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    instance-of v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v0, :cond_3

    instance-of v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj$SoapPartDom;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    instance-of v0, p1, Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_4

    check-cast p1, Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_2

    :cond_4
    check-cast p1, Lorg/apache/xmlbeans/impl/store/Xobj$SoapPartDom;

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Xobj$SoapPartDom;->_docXobj:Lorg/apache/xmlbeans/impl/store/Xobj$SoapPartDocXobj;

    :goto_2
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    return-void
.end method

.method public moveToNoCheck(Lorg/apache/xmlbeans/impl/store/Xobj;I)V
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eq p1, v0, :cond_0

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_embedded:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->listRemove(Lorg/apache/xmlbeans/impl/store/Cur;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_embedded:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_registered:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->listInsert(Lorg/apache/xmlbeans/impl/store/Cur;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_registered:Lorg/apache/xmlbeans/impl/store/Cur;

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_state:I

    :cond_0
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iput p2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    return-void
.end method

.method public moveToSelection(I)V
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionCount:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_locations:Lorg/apache/xmlbeans/impl/store/Cur$Locations;

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->selectionIndex(I)I

    move-result p1

    invoke-virtual {v0, p1, p0}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->moveTo(ILorg/apache/xmlbeans/impl/store/Cur;)V

    return-void
.end method

.method public final namespaceForPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Xobj;->namespaceForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public next()Z
    .locals 7

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNormal()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-lt v2, v3, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posMax()I

    move-result v3

    goto/16 :goto_6

    :cond_2
    if-ne v2, v5, :cond_4

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isRoot()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_3
    return v6

    :cond_4
    if-lez v2, :cond_8

    if-nez v0, :cond_6

    iget-object v0, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    :goto_1
    iget-object v0, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_7

    :goto_2
    move-object v1, v0

    :goto_3
    move v3, v6

    goto :goto_6

    :cond_7
    move v3, v5

    goto :goto_6

    :cond_8
    if-nez v0, :cond_a

    if-nez v2, :cond_9

    goto :goto_4

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_a
    :goto_4
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->ensureOccupancy()V

    iget v0, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchValue:I

    if-nez v0, :cond_e

    iget-object v0, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    :goto_5
    iget-object v2, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_5

    :cond_b
    iget v2, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchAfter:I

    if-lez v2, :cond_c

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v1

    move v3, v1

    move-object v1, v0

    goto :goto_6

    :cond_c
    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_e

    goto :goto_2

    :cond_d
    iget-object v1, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_3

    :cond_e
    move v3, v4

    :cond_f
    :goto_6
    invoke-direct {p0, v1, v3}, Lorg/apache/xmlbeans/impl/store/Cur;->getNormal(Lorg/apache/xmlbeans/impl/store/Xobj;I)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_posTemp:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    return v4
.end method

.method public next(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->nextWithAttrs()Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    move-result p1

    :goto_0
    return p1
.end method

.method public nextChars(I)I
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->cchRight()I

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    if-ltz p1, :cond_4

    if-lt p1, v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    add-int/2addr v1, p1

    invoke-direct {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->getNormal(Lorg/apache/xmlbeans/impl/store/Xobj;I)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_posTemp:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    return p1

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    return v0
.end method

.method public nextWithAttrs()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->kind()I

    move-result v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->kindIsContainer(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toFirstAttr()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_0
    const/4 v1, -0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent()Z

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParentRaw()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    move-result v0

    return v0
.end method

.method public peekUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isUserNode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_user:Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    return-object v0
.end method

.method public pop(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->popButStay()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    :goto_0
    return-void
.end method

.method public pop()Z
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_stackTop:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/store/Locale;->_locations:Lorg/apache/xmlbeans/impl/store/Cur$Locations;

    invoke-virtual {v1, v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->moveTo(ILorg/apache/xmlbeans/impl/store/Cur;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_locations:Lorg/apache/xmlbeans/impl/store/Cur$Locations;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_stackTop:I

    invoke-virtual {v0, v1, v1}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->remove(II)I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_stackTop:I

    const/4 v0, 0x1

    return v0
.end method

.method public popButStay()V
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_stackTop:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/store/Locale;->_locations:Lorg/apache/xmlbeans/impl/store/Cur$Locations;

    invoke-virtual {v1, v0, v0}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->remove(II)I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_stackTop:I

    :cond_0
    return-void
.end method

.method public final prefixForNamespace(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isContainer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getParent()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Xobj;->prefixForNamespace(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public prev()Z
    .locals 7

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isRoot()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_prevSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v1, :cond_3

    return v2

    :cond_3
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDenormal()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v1

    iget v3, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_posTemp:I

    const/4 v4, -0x1

    if-nez v0, :cond_5

    if-lez v3, :cond_4

    if-eq v3, v4, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    :goto_1
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v5

    const/4 v6, 0x1

    if-le v3, v5, :cond_6

    move v2, v5

    goto :goto_3

    :cond_6
    if-ne v3, v5, :cond_9

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchAfter:I

    if-gtz v0, :cond_7

    iget-object v0, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->ensureParent()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v1

    goto :goto_3

    :cond_8
    move v2, v4

    goto :goto_3

    :cond_9
    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_a

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->ensureOccupancy()V

    iget v0, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_cchValue:I

    if-lez v0, :cond_d

    goto :goto_2

    :cond_a
    if-le v3, v6, :cond_b

    :goto_2
    move v2, v6

    goto :goto_3

    :cond_b
    if-nez v0, :cond_d

    if-ne v3, v6, :cond_c

    goto :goto_3

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_d
    :goto_3
    invoke-direct {p0, v1, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->getNormal(Lorg/apache/xmlbeans/impl/store/Xobj;I)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_posTemp:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    return v6
.end method

.method public prevChars(I)I
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->cchLeft()I

    move-result v0

    if-ltz p1, :cond_2

    if-le p1, v0, :cond_3

    :cond_2
    move p1, v0

    :cond_3
    if-eqz p1, :cond_4

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDenormal()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_posTemp:I

    sub-int/2addr v1, p1

    invoke-direct {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->getNormal(Lorg/apache/xmlbeans/impl/store/Xobj;I)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_posTemp:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    :cond_4
    return p1
.end method

.method public prevWithAttrs()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->prev()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isAttr()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent()Z

    return v1
.end method

.method public push()V
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_locations:Lorg/apache/xmlbeans/impl/store/Cur$Locations;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->allocate(Lorg/apache/xmlbeans/impl/store/Cur;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v1, v1, Lorg/apache/xmlbeans/impl/store/Locale;->_locations:Lorg/apache/xmlbeans/impl/store/Cur$Locations;

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_stackTop:I

    invoke-virtual {v1, v2, v2, v0}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->insert(III)I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_stackTop:I

    return-void
.end method

.method public release()V
    .locals 6

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_tempFrame:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_2

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_nextTemp:Lorg/apache/xmlbeans/impl/store/Cur;

    if-eqz v3, :cond_0

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_prevTemp:Lorg/apache/xmlbeans/impl/store/Cur;

    iput-object v4, v3, Lorg/apache/xmlbeans/impl/store/Cur;->_prevTemp:Lorg/apache/xmlbeans/impl/store/Cur;

    :cond_0
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_prevTemp:Lorg/apache/xmlbeans/impl/store/Cur;

    if-nez v4, :cond_1

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v4, v4, Lorg/apache/xmlbeans/impl/store/Locale;->_tempFrames:[Lorg/apache/xmlbeans/impl/store/Cur;

    aput-object v3, v4, v0

    goto :goto_0

    :cond_1
    iput-object v3, v4, Lorg/apache/xmlbeans/impl/store/Cur;->_nextTemp:Lorg/apache/xmlbeans/impl/store/Cur;

    :goto_0
    iput-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_nextTemp:Lorg/apache/xmlbeans/impl/store/Cur;

    iput-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_prevTemp:Lorg/apache/xmlbeans/impl/store/Cur;

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_tempFrame:I

    :cond_2
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_state:I

    if-eqz v0, :cond_e

    const/4 v3, 0x3

    if-eq v0, v3, :cond_e

    :goto_1
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_stackTop:I

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->popButStay()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->clearSelection()V

    iput-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_id:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToCur(Lorg/apache/xmlbeans/impl/store/Cur;)V

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNormal()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7
    :goto_3
    if-nez v0, :cond_9

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    const/4 v4, -0x2

    if-ne v1, v4, :cond_8

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_9
    :goto_4
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_ref:Lorg/apache/xmlbeans/impl/store/Locale$Ref;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/ref/PhantomReference;->clear()V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_ref:Lorg/apache/xmlbeans/impl/store/Locale$Ref;

    iput-object v2, v1, Lorg/apache/xmlbeans/impl/store/Locale$Ref;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    :cond_a
    iput-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_ref:Lorg/apache/xmlbeans/impl/store/Locale$Ref;

    const/4 v1, 0x1

    if-nez v0, :cond_c

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_state:I

    if-ne v0, v1, :cond_b

    goto :goto_5

    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_c
    :goto_5
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v4, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_registered:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/store/Cur;->listRemove(Lorg/apache/xmlbeans/impl/store/Cur;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v4

    iput-object v4, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_registered:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget v4, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_curPoolCount:I

    const/16 v5, 0x10

    if-ge v4, v5, :cond_d

    iget-object v2, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_curPool:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->listInsert(Lorg/apache/xmlbeans/impl/store/Cur;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_curPool:Lorg/apache/xmlbeans/impl/store/Cur;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_state:I

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget v2, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_curPoolCount:I

    add-int/2addr v2, v1

    iput v2, v0, Lorg/apache/xmlbeans/impl/store/Locale;->_curPoolCount:I

    goto :goto_6

    :cond_d
    iput-object v2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iput v3, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_state:I

    :cond_e
    :goto_6
    return-void
.end method

.method public removeAttr(Lorg/apache/poi/javax/xml/namespace/QName;)Z
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isContainer()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->removeAttr(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result p1

    return p1
.end method

.method public removeFollowingAttrs()V
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isAttr()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toNextAttr()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isAttr()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNode(Lorg/apache/xmlbeans/impl/store/Cur;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toNextAttr()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    return-void
.end method

.method public removeSelection(I)V
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionCount:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->selectionIndex(I)I

    move-result v0

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionN:I

    if-ge p1, v1, :cond_2

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionN:I

    goto :goto_2

    :cond_2
    if-ne p1, v1, :cond_4

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionN:I

    if-nez p1, :cond_3

    const/4 p1, -0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_locations:Lorg/apache/xmlbeans/impl/store/Cur$Locations;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionLoc:I

    invoke-virtual {p1, v1}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->prev(I)I

    move-result p1

    :goto_1
    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionLoc:I

    :cond_4
    :goto_2
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/Locale;->_locations:Lorg/apache/xmlbeans/impl/store/Cur$Locations;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionFirst:I

    invoke-virtual {p1, v1, v0}, Lorg/apache/xmlbeans/impl/store/Cur$Locations;->remove(II)I

    move-result p1

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionFirst:I

    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionCount:I

    return-void
.end method

.method public selectionCount()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_selectionCount:I

    return v0
.end method

.method public setAttrValue(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isContainer()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Xobj;->setAttr(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Xobj;

    return-void
.end method

.method public setAttrValueAsQName(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isContainer()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p2, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->removeAttr(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->toAttr(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->removeFollowingAttrs()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->createAttr(Lorg/apache/poi/javax/xml/namespace/QName;)V

    :goto_1
    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->setValueAsQName(Lorg/apache/poi/javax/xml/namespace/QName;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent()Z

    :goto_2
    return-void
.end method

.method public final setBookmark(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNormal()Z

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
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_pos:I

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/xmlbeans/impl/store/Xobj;->setBookmark(ILjava/lang/Object;Ljava/lang/Object;)Lorg/apache/xmlbeans/impl/store/Xobj$Bookmark;

    move-result-object p1

    return-object p1
.end method

.method public setCharNodes(Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;)V
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->locale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isPositioned()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDenormal()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v1

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_posTemp:I

    if-nez v0, :cond_5

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_5

    if-lez v2, :cond_4

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v0

    if-ge v2, v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v0

    if-lt v2, v0, :cond_6

    iput-object p1, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesAfter:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    goto :goto_3

    :cond_6
    iput-object p1, v1, Lorg/apache/xmlbeans/impl/store/Xobj;->_charNodesValue:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    :goto_3
    if-eqz p1, :cond_7

    move-object v0, v1

    check-cast v0, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->setDom(Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;)V

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;->_next:Lorg/apache/xmlbeans/impl/store/DomImpl$CharNode;

    goto :goto_3

    :cond_7
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_id:Ljava/lang/String;

    return-void
.end method

.method public setName(Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNode()Z

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
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->setName(Lorg/apache/poi/javax/xml/namespace/QName;)V

    return-void
.end method

.method public setSubstitution(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaType;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->setSubstitution(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaType;Z)V

    return-void
.end method

.method public setSubstitution(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaType;Z)V
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isUserNode()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->peekUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;->get_schema_type()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    if-ne v1, p2, :cond_6

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/poi/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-void

    :cond_6
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isRoot()Z

    move-result v1

    if-eqz v1, :cond_7

    return-void

    :cond_7
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->ensureParent()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->getUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isAttr()Z

    move-result v2

    if-eqz v2, :cond_9

    if-nez p3, :cond_8

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t use substitution with attributes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    if-nez v0, :cond_b

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isElem()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_3

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_b
    :goto_3
    const/4 v0, 0x0

    invoke-interface {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;->get_element_type(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    if-ne v0, p2, :cond_c

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->setName(Lorg/apache/poi/javax/xml/namespace/QName;)V

    sget-object p1, Lorg/apache/xmlbeans/impl/store/Locale;->_xsiType:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->removeAttr(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    return-void

    :cond_c
    invoke-interface {p2}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    if-nez v0, :cond_e

    if-nez p3, :cond_d

    return-void

    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t set xsi:type on element, type is un-named"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    invoke-interface {v1, p1, v0}, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;->get_element_type(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    if-eq v1, p2, :cond_10

    if-nez p3, :cond_f

    return-void

    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t set xsi:type on element, invalid type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->setName(Lorg/apache/poi/javax/xml/namespace/QName;)V

    sget-object p1, Lorg/apache/xmlbeans/impl/store/Locale;->_xsiType:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->setAttrValueAsQName(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;)V

    return-void
.end method

.method public setType(Lorg/apache/xmlbeans/SchemaType;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->setType(Lorg/apache/xmlbeans/SchemaType;Z)V

    return-void
.end method

.method public setType(Lorg/apache/xmlbeans/SchemaType;Z)V
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isUserNode()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->peekUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;->get_schema_type()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    if-ne v1, p1, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isRoot()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p2, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->setStableType(Lorg/apache/xmlbeans/SchemaType;)V

    return-void

    :cond_5
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->ensureParent()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->getUser()Lorg/apache/xmlbeans/impl/values/TypeStoreUser;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isAttr()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p2

    invoke-interface {v1, p2}, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;->get_attribute_type(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object p2

    if-ne p2, p1, :cond_6

    goto :goto_2

    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Can\'t set type of attribute to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_7
    :goto_2
    return-void

    :cond_8
    if-nez v0, :cond_a

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isElem()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_a
    :goto_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;->get_element_type(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    if-ne v0, p1, :cond_b

    sget-object p1, Lorg/apache/xmlbeans/impl/store/Locale;->_xsiType:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->removeAttr(Lorg/apache/poi/javax/xml/namespace/QName;)Z

    return-void

    :cond_b
    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaType;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    if-nez v0, :cond_d

    if-nez p2, :cond_c

    return-void

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t set type of element, type is un-named"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/apache/xmlbeans/impl/values/TypeStoreUser;->get_element_type(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    if-eq v1, p1, :cond_f

    if-nez p2, :cond_e

    return-void

    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t set type of element, invalid type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    sget-object p1, Lorg/apache/xmlbeans/impl/store/Locale;->_xsiType:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->setAttrValueAsQName(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNodeContents(Lorg/apache/xmlbeans/impl/store/Cur;Z)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->insertString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent()Z

    return-void
.end method

.method public setValueAsQName(Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    const/4 v2, 0x1

    invoke-virtual {p0, v1, p1, v2}, Lorg/apache/xmlbeans/impl/store/Cur;->prefixForNamespace(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public final setXsiType(Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isContainer()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/xmlbeans/impl/store/Locale;->_xsiType:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {p0, v0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->setAttrValueAsQName(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;)V

    return-void
.end method

.method public skip()Z
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isRoot()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_2

    :cond_4
    :goto_1
    return v1

    :cond_5
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->posAfter()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->getNormal(Lorg/apache/xmlbeans/impl/store/Xobj;I)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_posTemp:I

    :goto_2
    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    const/4 v0, 0x1

    return v0
.end method

.method public skipWithAttrs()Z
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNode()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->skip()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Xobj;->isRoot()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    return v0

    :cond_3
    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent()Z

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    return v2
.end method

.method public tempCur()Lorg/apache/xmlbeans/impl/store/Cur;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->tempCur(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    return-object v0
.end method

.method public tempCur(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Cur;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToCur(Lorg/apache/xmlbeans/impl/store/Cur;)V

    return-object p1
.end method

.method public toAttr(Lorg/apache/poi/javax/xml/namespace/QName;)Z
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/store/Xobj;->getAttr(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    const/4 p1, 0x1

    return p1
.end method

.method public toEnd()V
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;I)V

    return-void
.end method

.method public toFirstAttr()Z
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->firstAttr()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    const/4 v0, 0x1

    return v0
.end method

.method public toFirstChild()Z
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->hasChildren()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_firstChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    :goto_1
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    const/4 v0, 0x1

    return v0

    :cond_3
    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    goto :goto_1
.end method

.method public toLastAttr()Z
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toFirstAttr()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toNextAttr()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public toLastChild()Z
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->hasChildren()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_lastChild:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    const/4 v0, 0x1

    return v0
.end method

.method public toNextAttr()Z
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isAttr()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isContainer()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->nextAttr()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    const/4 v0, 0x1

    return v0
.end method

.method public toNextSibling()Z
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Cur;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isNode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isAttr()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    return v1

    :cond_2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_nextSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public toParent()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent(Z)Z

    move-result v0

    return v0
.end method

.method public toParent(Z)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->getParent(Z)Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    const/4 p1, 0x1

    return p1
.end method

.method public toParentRaw()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent(Z)Z

    move-result v0

    return v0
.end method

.method public toPrevAttr()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isAttr()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_prevSibling:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->ensureParent()Lorg/apache/xmlbeans/impl/store/Xobj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->prev()Z

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->isContainer()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    const/4 v0, 0x0

    return v0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->toLastAttr()Z

    move-result v0

    return v0
.end method

.method public toRoot()V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Xobj;->isRoot()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Xobj;->_parent:Lorg/apache/xmlbeans/impl/store/Xobj;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->createRoot()V

    iget-object v1, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_xobj:Lorg/apache/xmlbeans/impl/store/Xobj;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveNode(Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    move-object v0, v1

    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveTo(Lorg/apache/xmlbeans/impl/store/Xobj;)V

    return-void
.end method

.method public final valueAsQName()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public weakCur(Ljava/lang/Object;)Lorg/apache/xmlbeans/impl/store/Cur;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/store/Locale;->weakCur(Ljava/lang/Object;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToCur(Lorg/apache/xmlbeans/impl/store/Cur;)V

    return-object p1
.end method
