.class Lorg/apache/xmlbeans/impl/store/Path$DelegatePathImpl$DelegatePathEngine;
.super Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/store/Path$PathEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Path$DelegatePathImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DelegatePathEngine"
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private _cur:Lorg/apache/xmlbeans/impl/store/Cur;

.field private _engine:Lorg/apache/xmlbeans/impl/store/PathDelegate$SelectPathInterface;

.field private _firstCall:Z

.field private _version:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/store/Path;->class$org$apache$xmlbeans$impl$store$Path:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.store.Path"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Path;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Path;->class$org$apache$xmlbeans$impl$store$Path:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/store/Path$DelegatePathImpl$DelegatePathEngine;->$assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/PathDelegate$SelectPathInterface;Lorg/apache/xmlbeans/impl/store/Cur;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/common/XPath$ExecutionContext;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/store/Path$DelegatePathImpl$DelegatePathEngine;->_firstCall:Z

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Path$DelegatePathImpl$DelegatePathEngine;->_engine:Lorg/apache/xmlbeans/impl/store/PathDelegate$SelectPathInterface;

    iget-object p1, p2, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Locale;->version()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/xmlbeans/impl/store/Path$DelegatePathImpl$DelegatePathEngine;->_version:J

    invoke-virtual {p2, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->weakCur(Ljava/lang/Object;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Path$DelegatePathImpl$DelegatePathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

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


# virtual methods
.method public next(Lorg/apache/xmlbeans/impl/store/Cur;)Z
    .locals 7

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/store/Path$DelegatePathImpl$DelegatePathEngine;->_firstCall:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, Lorg/apache/xmlbeans/impl/store/Path$DelegatePathImpl$DelegatePathEngine;->_firstCall:Z

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Path$DelegatePathImpl$DelegatePathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    if-eqz v0, :cond_2

    iget-wide v2, p0, Lorg/apache/xmlbeans/impl/store/Path$DelegatePathImpl$DelegatePathEngine;->_version:J

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->version()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/ConcurrentModificationException;

    const-string v0, "Document changed during select"

    invoke-direct {p1, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Path$DelegatePathImpl$DelegatePathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Path$DelegatePathImpl$DelegatePathEngine;->_engine:Lorg/apache/xmlbeans/impl/store/PathDelegate$SelectPathInterface;

    invoke-interface {v2, v0}, Lorg/apache/xmlbeans/impl/store/PathDelegate$SelectPathInterface;->selectPath(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Lorg/w3c/dom/Node;

    if-nez v4, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    :try_start_0
    const-string v6, "<xml-fragment/>"

    invoke-virtual {v5, v6}, Lorg/apache/xmlbeans/impl/store/Locale;->load(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/apache/xmlbeans/impl/store/Cur;->setValue(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/store/Path$DelegatePathImpl$DelegatePathEngine;->getType(Ljava/lang/Object;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object v2

    invoke-static {v5, v2, v3}, Lorg/apache/xmlbeans/impl/store/Locale;->autoTypeDocument(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    sget-boolean v3, Lorg/apache/xmlbeans/impl/store/Path$DelegatePathImpl$DelegatePathEngine;->$assertionsDisabled:Z

    if-nez v3, :cond_5

    instance-of v3, v2, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "New object created in XPATH!"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_5
    :goto_2
    check-cast v2, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-interface {v2}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v5

    :goto_3
    invoke-virtual {p1, v5}, Lorg/apache/xmlbeans/impl/store/Cur;->addToSelection(Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Path$DelegatePathImpl$DelegatePathEngine;->release()V

    iput-object v3, p0, Lorg/apache/xmlbeans/impl/store/Path$DelegatePathImpl$DelegatePathEngine;->_engine:Lorg/apache/xmlbeans/impl/store/PathDelegate$SelectPathInterface;

    const/4 p1, 0x1

    return p1
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Path$DelegatePathImpl$DelegatePathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Path$DelegatePathImpl$DelegatePathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    :cond_0
    return-void
.end method
