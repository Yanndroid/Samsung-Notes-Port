.class Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl$DelegateQueryEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DelegateQueryEngine"
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private _cur:Lorg/apache/xmlbeans/impl/store/Cur;

.field private _engine:Lorg/apache/xmlbeans/impl/store/QueryDelegate$QueryInterface;

.field private _options:Lorg/apache/xmlbeans/XmlOptions;

.field private _version:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/store/Query;->class$org$apache$xmlbeans$impl$store$Query:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.store.Query"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Query;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Query;->class$org$apache$xmlbeans$impl$store$Query:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl$DelegateQueryEngine;->$assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/QueryDelegate$QueryInterface;Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl$DelegateQueryEngine;->_engine:Lorg/apache/xmlbeans/impl/store/QueryDelegate$QueryInterface;

    iget-object p1, p2, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Locale;->version()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl$DelegateQueryEngine;->_version:J

    invoke-virtual {p2, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->weakCur(Ljava/lang/Object;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl$DelegateQueryEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl$DelegateQueryEngine;->_options:Lorg/apache/xmlbeans/XmlOptions;

    return-void
.end method

.method private getType(Ljava/lang/Object;)Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    sget-object p1, Lorg/apache/xmlbeans/XmlInteger;->type:Lorg/apache/xmlbeans/SchemaType;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    sget-object p1, Lorg/apache/xmlbeans/XmlDouble;->type:Lorg/apache/xmlbeans/SchemaType;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    sget-object p1, Lorg/apache/xmlbeans/XmlLong;->type:Lorg/apache/xmlbeans/SchemaType;

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_3

    sget-object p1, Lorg/apache/xmlbeans/XmlFloat;->type:Lorg/apache/xmlbeans/SchemaType;

    goto :goto_0

    :cond_3
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_4

    sget-object p1, Lorg/apache/xmlbeans/XmlDecimal;->type:Lorg/apache/xmlbeans/SchemaType;

    goto :goto_0

    :cond_4
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    sget-object p1, Lorg/apache/xmlbeans/XmlBoolean;->type:Lorg/apache/xmlbeans/SchemaType;

    goto :goto_0

    :cond_5
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object p1, Lorg/apache/xmlbeans/XmlString;->type:Lorg/apache/xmlbeans/SchemaType;

    goto :goto_0

    :cond_6
    instance-of p1, p1, Ljava/util/Date;

    if-eqz p1, :cond_7

    sget-object p1, Lorg/apache/xmlbeans/XmlDate;->type:Lorg/apache/xmlbeans/SchemaType;

    goto :goto_0

    :cond_7
    sget-object p1, Lorg/apache/xmlbeans/XmlAnySimpleType;->type:Lorg/apache/xmlbeans/SchemaType;

    :goto_0
    return-object p1
.end method

.method private loadNode(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/w3c/dom/Node;)Lorg/apache/xmlbeans/impl/store/Cur;
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Cur$CurLoadContext;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl$DelegateQueryEngine;->_options:Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0, p1, v1}, Lorg/apache/xmlbeans/impl/store/Cur$CurLoadContext;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/XmlOptions;)V

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl$DelegateQueryEngine;->loadNodeHelper(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->finish()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl$DelegateQueryEngine;->_options:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->associateSourceName(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)V

    const/4 p2, 0x0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl$DelegateQueryEngine;->_options:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p1, p2, v0}, Lorg/apache/xmlbeans/impl/store/Locale;->autoTypeDocument(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/xmlbeans/XmlRuntimeException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/apache/xmlbeans/XmlRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private loadNodeHelper(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V
    .locals 3

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance p1, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->attr(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->loadNode(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cursorExecute()Lorg/apache/xmlbeans/XmlCursor;
    .locals 6

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl$DelegateQueryEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->version()J

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl$DelegateQueryEngine;->_options:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v0}, Lorg/apache/xmlbeans/XmlOptions;->maskNull(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v0

    const-string v1, "XQUERY_VARIABLE_MAP"

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl$DelegateQueryEngine;->_engine:Lorg/apache/xmlbeans/impl/store/QueryDelegate$QueryInterface;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl$DelegateQueryEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/apache/xmlbeans/impl/store/QueryDelegate$QueryInterface;->execQuery(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    sget-boolean v1, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl$DelegateQueryEngine;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl$DelegateQueryEngine;->_engine:Lorg/apache/xmlbeans/impl/store/QueryDelegate$QueryInterface;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl$DelegateQueryEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v2, v2, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v2, v2, Lorg/apache/xmlbeans/impl/store/Locale;->_schemaTypeLoader:Lorg/apache/xmlbeans/SchemaTypeLoader;

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl$DelegateQueryEngine;->_options:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v2, v3}, Lorg/apache/xmlbeans/impl/store/Locale;->getLocale(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    new-instance v3, Lorg/apache/xmlbeans/impl/store/Cur$CurLoadContext;

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl$DelegateQueryEngine;->_options:Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v3, v2, v4}, Lorg/apache/xmlbeans/impl/store/Cur$CurLoadContext;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/XmlOptions;)V

    const/4 v4, 0x0

    :goto_1
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Node;

    invoke-direct {p0, v2, v5, v3}, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl$DelegateQueryEngine;->loadNodeHelper(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->finish()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl$DelegateQueryEngine;->_options:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v0, v3}, Lorg/apache/xmlbeans/impl/store/Locale;->associateSourceName(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)V

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl$DelegateQueryEngine;->_options:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v0, v1, v3}, Lorg/apache/xmlbeans/impl/store/Locale;->autoTypeDocument(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)V

    new-instance v3, Lorg/apache/xmlbeans/impl/store/Cursor;

    invoke-direct {v3, v0}, Lorg/apache/xmlbeans/impl/store/Cursor;-><init>(Lorg/apache/xmlbeans/impl/store/Cur;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    move-object v1, v3

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw v0

    :catch_0
    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    :goto_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl$DelegateQueryEngine;->release()V

    return-object v1
.end method

.method public objectExecute()[Lorg/apache/xmlbeans/XmlObject;
    .locals 8

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl$DelegateQueryEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->version()J

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl$DelegateQueryEngine;->_options:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v0}, Lorg/apache/xmlbeans/XmlOptions;->maskNull(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v0

    const-string v1, "XQUERY_VARIABLE_MAP"

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl$DelegateQueryEngine;->_engine:Lorg/apache/xmlbeans/impl/store/QueryDelegate$QueryInterface;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl$DelegateQueryEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/apache/xmlbeans/impl/store/QueryDelegate$QueryInterface;->execQuery(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    sget-boolean v1, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl$DelegateQueryEngine;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/xmlbeans/XmlObject;

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl$DelegateQueryEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v3, v3, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iget-object v3, v3, Lorg/apache/xmlbeans/impl/store/Locale;->_schemaTypeLoader:Lorg/apache/xmlbeans/SchemaTypeLoader;

    iget-object v5, p0, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl$DelegateQueryEngine;->_options:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v3, v5}, Lorg/apache/xmlbeans/impl/store/Locale;->getLocale(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    :try_start_0
    instance-of v6, v5, Lorg/w3c/dom/Node;

    if-nez v6, :cond_3

    const-string v6, "<xml-fragment/>"

    invoke-virtual {v3, v6}, Lorg/apache/xmlbeans/impl/store/Locale;->load(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/xmlbeans/impl/store/Cur;->setValue(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl$DelegateQueryEngine;->getType(Ljava/lang/Object;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object v5

    invoke-static {v6, v5, v4}, Lorg/apache/xmlbeans/impl/store/Locale;->autoTypeDocument(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-virtual {v6}, Lorg/apache/xmlbeans/impl/store/Cur;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v4

    aput-object v4, v1, v2

    goto :goto_2

    :cond_3
    check-cast v5, Lorg/w3c/dom/Node;

    invoke-direct {p0, v3, v5}, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl$DelegateQueryEngine;->loadNode(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/w3c/dom/Node;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v6

    :goto_2
    invoke-virtual {v6}, Lorg/apache/xmlbeans/impl/store/Cur;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v4

    aput-object v4, v1, v2
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    invoke-virtual {v6}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw v0

    :cond_4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl$DelegateQueryEngine;->release()V

    iput-object v4, p0, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl$DelegateQueryEngine;->_engine:Lorg/apache/xmlbeans/impl/store/QueryDelegate$QueryInterface;

    return-object v1
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl$DelegateQueryEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Query$DelegateQueryImpl$DelegateQueryEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    :cond_0
    return-void
.end method
