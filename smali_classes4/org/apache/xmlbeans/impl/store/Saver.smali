.class abstract Lorg/apache/xmlbeans/impl/store/Saver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/store/Saver$SynthNamespaceSaver;,
        Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;,
        Lorg/apache/xmlbeans/impl/store/Saver$OptimizedForSpeedSaver;,
        Lorg/apache/xmlbeans/impl/store/Saver$TextReader;,
        Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;,
        Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver;,
        Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamImpl;,
        Lorg/apache/xmlbeans/impl/store/Saver$SaxSaver;,
        Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;,
        Lorg/apache/xmlbeans/impl/store/Saver$DocSaveCur;,
        Lorg/apache/xmlbeans/impl/store/Saver$FilterSaveCur;,
        Lorg/apache/xmlbeans/impl/store/Saver$FilterPiSaveCur;,
        Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;,
        Lorg/apache/xmlbeans/impl/store/Saver$PrettySaveCur;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field public static final ATTR:I = 0x3

.field public static final COMMENT:I = 0x4

.field public static final ELEM:I = 0x2

.field public static final PROCINST:I = 0x5

.field public static final ROOT:I = 0x1

.field public static final TEXT:I

.field public static final _newLine:Ljava/lang/String;


# instance fields
.field private _ancestorNamespaces:Ljava/util/List;

.field private _attrNames:Ljava/util/ArrayList;

.field private _attrValues:Ljava/util/ArrayList;

.field private _cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

.field private _currentMapping:I

.field private _initialDefaultUri:Ljava/lang/String;

.field private final _locale:Lorg/apache/xmlbeans/impl/store/Locale;

.field private _namespaceStack:Ljava/util/ArrayList;

.field private _preComputedNamespaces:Ljava/util/Map;

.field private _prefixMap:Ljava/util/HashMap;

.field public _replaceChar:Lorg/apache/xmlbeans/XmlOptionCharEscapeMap;

.field private _saveNamespacesFirst:Z

.field private _suggestedPrefixes:Ljava/util/Map;

.field private _uriMap:Ljava/util/HashMap;

.field private _useDefaultNamespace:Z

.field private final _version:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "line.separator"

    invoke-static {v0}, Lorg/apache/xmlbeans/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "\n"

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/apache/xmlbeans/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lorg/apache/xmlbeans/impl/store/Saver;->_newLine:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lorg/apache/xmlbeans/XmlOptions;->maskNull(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/xmlbeans/impl/store/Saver;->createSaveCur(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->version()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_version:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_uriMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_prefixMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_attrNames:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_attrValues:Ljava/util/ArrayList;

    const-string v0, "xml"

    const-string v1, "http://www.w3.org/XML/1998/namespace"

    invoke-direct {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Saver;->addMapping(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SAVE_IMPLICIT_NAMESPACES"

    invoke-virtual {p2, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lorg/apache/xmlbeans/impl/store/Saver;->addMapping(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "SAVE_SUBSTITUTE_CHARACTERS"

    invoke-virtual {p2, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/XmlOptionCharEscapeMap;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_replaceChar:Lorg/apache/xmlbeans/XmlOptionCharEscapeMap;

    :cond_1
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_initialDefaultUri:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/apache/xmlbeans/impl/store/Saver;->addMapping(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "SAVE_AGGRESSIVE_NAMESPACES"

    invoke-virtual {p2, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    instance-of v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$SynthNamespaceSaver;

    if-nez v0, :cond_4

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Saver$SynthNamespaceSaver;

    invoke-direct {v0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Saver$SynthNamespaceSaver;-><init>(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)V

    :cond_3
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Saver;->process()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, v0, Lorg/apache/xmlbeans/impl/store/Saver$SynthNamespaceSaver;->_synthNamespaces:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, v0, Lorg/apache/xmlbeans/impl/store/Saver$SynthNamespaceSaver;->_synthNamespaces:Ljava/util/LinkedHashMap;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_preComputedNamespaces:Ljava/util/Map;

    :cond_4
    const-string p1, "SAVE_USE_DEFAULT_NAMESPACE"

    invoke-virtual {p2, p1}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_useDefaultNamespace:Z

    const-string p1, "SAVE_NAMESPACES_FIRST"

    invoke-virtual {p2, p1}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_saveNamespacesFirst:Z

    const-string p1, "SAVE_SUGGESTED_PREFIXES"

    invoke-virtual {p2, p1}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2, p1}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_suggestedPrefixes:Ljava/util/Map;

    :cond_5
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getAncestorNamespaces()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_ancestorNamespaces:Ljava/util/List;

    return-void
.end method

.method private final addMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_prefixMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    move-object v3, v0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object v3, v1

    :goto_0
    if-lez v2, :cond_4

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, -0x7

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x8

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_4

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, -0x8

    goto :goto_0

    :cond_3
    move-object v3, v1

    :cond_4
    :goto_1
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_uriMap:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_5

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_uriMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_prefixMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_uriMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_prefixMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_6

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_uriMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void
.end method

.method private final addNewFrameMapping(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-gtz p3, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_5

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->iterateMappings()V

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->hasMapping()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->mappingPrefix()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->nextMapping()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    return-void

    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Saver;->addMapping(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private static createSaveCur(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;
    .locals 8

    const-string v0, "SAVE_SYNTHETIC_DOCUMENT_ELEMENT"

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/javax/xml/namespace/QName;

    if-nez v0, :cond_1

    const-string v1, "SAVE_USE_OPEN_FRAGMENT"

    invoke-virtual {p1, v1}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/apache/xmlbeans/impl/store/Locale;->_openuriFragment:Lorg/apache/poi/javax/xml/namespace/QName;

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/apache/xmlbeans/impl/store/Locale;->_xmlFragment:Lorg/apache/poi/javax/xml/namespace/QName;

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    const-string v2, "SAVE_INNER"

    invoke-virtual {p1, v2}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const-string v2, "SAVE_OUTER"

    invoke-virtual {p1, v2}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cur;->kind()I

    move-result v6

    const/4 v7, 0x0

    if-eq v6, v3, :cond_7

    const/4 v3, 0x2

    if-eq v6, v3, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_5

    invoke-static {p0, v4, v5}, Lorg/apache/xmlbeans/impl/store/Saver;->positionToInner(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/impl/store/Cur;)V

    new-instance v7, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;

    invoke-static {v4, v5}, Lorg/apache/xmlbeans/impl/store/Locale;->isFragment(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, v1

    :cond_4
    invoke-direct {v7, v4, v5, v0}, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;-><init>(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/poi/javax/xml/namespace/QName;)V

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    invoke-static {p0, v4, v5}, Lorg/apache/xmlbeans/impl/store/Saver;->positionToInner(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/impl/store/Cur;)V

    new-instance v7, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;

    invoke-direct {v7, v4, v5, v0}, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;-><init>(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/poi/javax/xml/namespace/QName;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v4, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToCur(Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-virtual {v5, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToCur(Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/store/Cur;->skip()Z

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;

    invoke-direct {v0, v4, v5, v7}, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;-><init>(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/poi/javax/xml/namespace/QName;)V

    move-object v7, v0

    goto :goto_2

    :cond_7
    invoke-static {p0, v4, v5}, Lorg/apache/xmlbeans/impl/store/Saver;->positionToInner(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-static {v4, v5}, Lorg/apache/xmlbeans/impl/store/Locale;->isFragment(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v7, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;

    invoke-direct {v7, v4, v5, v1}, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;-><init>(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/poi/javax/xml/namespace/QName;)V

    goto :goto_2

    :cond_8
    if-eqz v0, :cond_9

    new-instance v7, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;

    invoke-direct {v7, v4, v5, v0}, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;-><init>(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/poi/javax/xml/namespace/QName;)V

    goto :goto_2

    :cond_9
    new-instance v7, Lorg/apache/xmlbeans/impl/store/Saver$DocSaveCur;

    invoke-direct {v7, p0}, Lorg/apache/xmlbeans/impl/store/Saver$DocSaveCur;-><init>(Lorg/apache/xmlbeans/impl/store/Cur;)V

    :goto_2
    if-nez v7, :cond_e

    if-gez v6, :cond_a

    :goto_3
    invoke-virtual {v4, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToCur(Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-virtual {v5, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToCur(Lorg/apache/xmlbeans/impl/store/Cur;)V

    goto :goto_4

    :cond_a
    if-nez v6, :cond_b

    invoke-virtual {v4, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToCur(Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-virtual {v5, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToCur(Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    goto :goto_4

    :cond_b
    if-eqz v2, :cond_c

    invoke-virtual {v4, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToCur(Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    invoke-virtual {v5, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToCur(Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/store/Cur;->toEnd()V

    goto :goto_4

    :cond_c
    const/4 v0, 0x3

    if-ne v6, v0, :cond_d

    goto :goto_3

    :cond_d
    invoke-virtual {v4, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToCur(Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-virtual {v5, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToCur(Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/store/Cur;->skip()Z

    :goto_4
    new-instance v7, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;

    invoke-direct {v7, v4, v5, v1}, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;-><init>(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/poi/javax/xml/namespace/QName;)V

    :cond_e
    const-string p0, "SAVE_FILTER_PROCINST"

    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_f

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Saver$FilterPiSaveCur;

    invoke-direct {v0, v7, p0}, Lorg/apache/xmlbeans/impl/store/Saver$FilterPiSaveCur;-><init>(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;Ljava/lang/String;)V

    move-object v7, v0

    :cond_f
    const-string p0, "SAVE_PRETTY_PRINT"

    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    new-instance p0, Lorg/apache/xmlbeans/impl/store/Saver$PrettySaveCur;

    invoke-direct {p0, v7, p1}, Lorg/apache/xmlbeans/impl/store/Saver$PrettySaveCur;-><init>(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;Lorg/apache/xmlbeans/XmlOptions;)V

    move-object v7, p0

    :cond_10
    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    return-object v7
.end method

.method private final dumpMappings()V
    .locals 5

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "----------------"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Mapping: "

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " -> "

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Prefix Undo: "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Uri Rename: "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x5

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x6

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "UriUndo: "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x7

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x8

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    add-int/lit8 v0, v0, -0x8

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method private final ensureMapping(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_uriMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p4

    if-nez p4, :cond_3

    move-object p2, v1

    :cond_3
    const-string p4, ""

    if-eqz p2, :cond_4

    invoke-direct {p0, p2}, Lorg/apache/xmlbeans/impl/store/Saver;->tryPrefix(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_4
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_suggestedPrefixes:Ljava/util/Map;

    if-eqz p2, :cond_5

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_suggestedPrefixes:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lorg/apache/xmlbeans/impl/store/Saver;->tryPrefix(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_suggestedPrefixes:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_2

    :cond_5
    if-eqz p3, :cond_6

    iget-boolean p2, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_useDefaultNamespace:Z

    if-eqz p2, :cond_6

    invoke-direct {p0, p4}, Lorg/apache/xmlbeans/impl/store/Saver;->tryPrefix(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    move-object p2, p4

    goto :goto_2

    :cond_6
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->suggestPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x1

    move-object v0, p2

    move v1, p4

    :goto_1
    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver;->tryPrefix(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/2addr v1, p4

    goto :goto_1

    :cond_7
    move-object p2, v0

    :cond_8
    :goto_2
    invoke-virtual {p0, p2, p1, p3}, Lorg/apache/xmlbeans/impl/store/Saver;->syntheticNamespace(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, p2, p1}, Lorg/apache/xmlbeans/impl/store/Saver;->addMapping(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method private final popMappings()V
    .locals 11

    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x7

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x8

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_uriMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget-object v6, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_uriMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    add-int/lit8 v7, v0, -0x3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_prefixMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    iget-object v8, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_prefixMap:Ljava/util/HashMap;

    invoke-virtual {v8, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    add-int/lit8 v6, v0, -0x5

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v8, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_uriMap:Ljava/util/HashMap;

    iget-object v9, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    add-int/lit8 v10, v0, -0x6

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x6

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method private static positionToInner(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/impl/store/Cur;)V
    .locals 1

    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToCur(Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->toFirstAttr()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    :cond_0
    invoke-virtual {p2, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->moveToCur(Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Cur;->toEnd()V

    return-void
.end method

.method private final processElement()V
    .locals 7

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-direct {p0, v4, v1}, Lorg/apache/xmlbeans/impl/store/Saver;->pushMappings(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;Z)V

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    xor-int/lit8 v5, v1, 0x1

    invoke-direct {p0, v4, v0, v5, v3}, Lorg/apache/xmlbeans/impl/store/Saver;->ensureMapping(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_attrNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_attrValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->push()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->toFirstAttr()Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->isNormalAttr()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_attrNames:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_attrNames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    :goto_2
    if-ltz v4, :cond_2

    iget-object v5, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_attrNames:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_attrNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_attrValues:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getAttrValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0, v3, v2}, Lorg/apache/xmlbeans/impl/store/Saver;->ensureMapping(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->toNextAttr()Z

    move-result v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->pop()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_preComputedNamespaces:Ljava/util/Map;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_preComputedNamespaces:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_5

    if-nez v1, :cond_5

    move v6, v2

    goto :goto_5

    :cond_5
    move v6, v3

    :goto_5
    invoke-direct {p0, v4, v5, v6, v3}, Lorg/apache/xmlbeans/impl/store/Saver;->ensureMapping(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_preComputedNamespaces:Ljava/util/Map;

    :cond_7
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_attrNames:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_attrValues:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/xmlbeans/impl/store/Saver;->emitElement(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->popMappings()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->toEnd()V

    :cond_8
    return-void
.end method

.method private final processFinish()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver;->emitFinish(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->popMappings()V

    return-void
.end method

.method private final processRoot()V
    .locals 5

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getDocProps()Lorg/apache/xmlbeans/XmlDocumentProperties;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlDocumentProperties;->getDoctypeSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlDocumentProperties;->getDoctypeName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v1, :cond_1

    if-eqz v2, :cond_8

    :cond_1
    if-nez v2, :cond_4

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->push()V

    :goto_1
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->isElem()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->next()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->isElem()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    :cond_3
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->pop()V

    :cond_4
    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlDocumentProperties;->getDoctypePublicId()Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_8

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v3

    if-nez v3, :cond_7

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->push()V

    :goto_2
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->isFinish()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->isElem()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v3

    goto :goto_3

    :cond_5
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->next()Z

    goto :goto_2

    :cond_6
    :goto_3
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v4}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->pop()V

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0, v2, v0, v1}, Lorg/apache/xmlbeans/impl/store/Saver;->emitDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver;->emitStartDoc(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V

    return-void
.end method

.method private final pushMappings(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;Z)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->push()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->toFirstAttr()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->isXmlns()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getXmlnsPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getXmlnsUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/xmlbeans/impl/store/Saver;->addNewFrameMapping(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->toNextAttr()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->pop()V

    if-eqz p2, :cond_2

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_prefixMap:Ljava/util/HashMap;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    invoke-direct {p0, p2, p2}, Lorg/apache/xmlbeans/impl/store/Saver;->addMapping(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private final tryPrefix(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/Locale;->beginsWithXml(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_prefixMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_1

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_initialDefaultUri:Ljava/lang/String;

    if-ne v1, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public abstract emitComment(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
.end method

.method public abstract emitDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract emitElement(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
.end method

.method public abstract emitEndDoc(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
.end method

.method public abstract emitFinish(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
.end method

.method public abstract emitProcinst(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
.end method

.method public abstract emitStartDoc(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
.end method

.method public abstract emitText(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
.end method

.method public enterLocale()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    return-void
.end method

.method public exitLocale()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return-void
.end method

.method public final getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_prefixMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getNonDefaultUriMapping(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_uriMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_prefixMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_prefixMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1
.end method

.method public getPrefixMap()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_prefixMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getUriMapping(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_uriMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public hasMapping()Z
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_currentMapping:I

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMappings()Z
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isBadChar(C)Z
    .locals 1

    invoke-static {p1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x20

    if-lt p1, v0, :cond_0

    const v0, 0xd7ff

    if-le p1, v0, :cond_3

    :cond_0
    const v0, 0xe000

    if-lt p1, v0, :cond_1

    const v0, 0xfffd

    if-le p1, v0, :cond_3

    :cond_1
    const/high16 v0, 0x10000

    if-lt p1, v0, :cond_2

    const v0, 0x10ffff

    if-le p1, v0, :cond_3

    :cond_2
    const/16 v0, 0x9

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_3

    const/16 v0, 0xd

    if-eq p1, v0, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public iterateMappings()V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_currentMapping:I

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_currentMapping:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_currentMapping:I

    add-int/lit8 v0, v0, -0x8

    goto :goto_0

    :cond_0
    return-void
.end method

.method public mappingPrefix()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_currentMapping:I

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public mappingUri()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_namespaceStack:Ljava/util/ArrayList;

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_currentMapping:I

    add-int/lit8 v1, v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public nextMapping()V
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_currentMapping:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_currentMapping:I

    return-void
.end method

.method public final process()Z
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_version:J

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Locale;->version()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->kind()I

    move-result v0

    const/4 v1, -0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver;->emitProcinst(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected kind"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver;->emitComment(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V

    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->toEnd()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->processElement()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->processRoot()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver;->emitText(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/store/Saver;->emitEndDoc(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    return v2

    :cond_7
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Saver;->processFinish()V

    :goto_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->next()Z

    return v2

    :cond_8
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "Document changed during save"

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public saveNamespacesFirst()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/store/Saver;->_saveNamespacesFirst:Z

    return v0
.end method

.method public syntheticNamespace(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method
