.class public Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;
.super Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SubLoaderList;,
        Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SchemaTypeLoaderCache;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field private static final CACHED_NOT_FOUND:Ljava/lang/Object;

.field private static final EMPTY_SCHEMATYPELOADER_ARRAY:[Lorg/apache/xmlbeans/SchemaTypeLoader;

.field public static METADATA_PACKAGE_LOAD:Ljava/lang/String;

.field public static synthetic class$org$apache$xmlbeans$impl$schema$SchemaTypeLoaderImpl:Ljava/lang/Class;


# instance fields
.field private _attributeCache:Ljava/util/Map;

.field private _attributeGroupCache:Ljava/util/Map;

.field private _attributeTypeCache:Ljava/util/Map;

.field private _classLoader:Ljava/lang/ClassLoader;

.field private _classLoaderTypeSystems:Ljava/util/Map;

.field private _classnameCache:Ljava/util/Map;

.field private _classpathTypeSystems:Ljava/util/Map;

.field private _documentCache:Ljava/util/Map;

.field private _elementCache:Ljava/util/Map;

.field private _idConstraintCache:Ljava/util/Map;

.field private _modelGroupCache:Ljava/util/Map;

.field private _resourceLoader:Lorg/apache/xmlbeans/ResourceLoader;

.field private _searchPath:[Lorg/apache/xmlbeans/SchemaTypeLoader;

.field private _typeCache:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->class$org$apache$xmlbeans$impl$schema$SchemaTypeLoaderImpl:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.schema.SchemaTypeLoaderImpl"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->class$org$apache$xmlbeans$impl$schema$SchemaTypeLoaderImpl:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->$assertionsDisabled:Z

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->METADATA_PACKAGE_GEN:Ljava/lang/String;

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->METADATA_PACKAGE_LOAD:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->CACHED_NOT_FOUND:Ljava/lang/Object;

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaTypeLoader;

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->EMPTY_SCHEMATYPELOADER_ARRAY:[Lorg/apache/xmlbeans/SchemaTypeLoader;

    invoke-static {}, Lorg/apache/xmlbeans/impl/common/SystemCache;->get()Lorg/apache/xmlbeans/impl/common/SystemCache;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/xmlbeans/impl/common/SystemCache;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SchemaTypeLoaderCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SchemaTypeLoaderCache;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$1;)V

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/SystemCache;->set(Lorg/apache/xmlbeans/impl/common/SystemCache;)V

    :cond_1
    return-void
.end method

.method private constructor <init>([Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/ResourceLoader;Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->EMPTY_SCHEMATYPELOADER_ARRAY:[Lorg/apache/xmlbeans/SchemaTypeLoader;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_searchPath:[Lorg/apache/xmlbeans/SchemaTypeLoader;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_searchPath:[Lorg/apache/xmlbeans/SchemaTypeLoader;

    :goto_0
    iput-object p2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_resourceLoader:Lorg/apache/xmlbeans/ResourceLoader;

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_classLoader:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->initCaches()V

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;)Ljava/lang/ClassLoader;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_classLoader:Ljava/lang/ClassLoader;

    return-object p0
.end method

.method public static synthetic access$400()[Lorg/apache/xmlbeans/SchemaTypeLoader;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->EMPTY_SCHEMATYPELOADER_ARRAY:[Lorg/apache/xmlbeans/SchemaTypeLoader;

    return-object v0
.end method

.method public static build([Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/ResourceLoader;Ljava/lang/ClassLoader;)Lorg/apache/xmlbeans/SchemaTypeLoader;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->EMPTY_SCHEMATYPELOADER_ARRAY:[Lorg/apache/xmlbeans/SchemaTypeLoader;

    goto :goto_4

    :cond_0
    new-instance v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SubLoaderList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SubLoaderList;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$1;)V

    move v2, v0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_6

    aget-object v3, p0, v2

    if-eqz v3, :cond_5

    aget-object v3, p0, v2

    instance-of v3, v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;

    if-nez v3, :cond_2

    aget-object v3, p0, v2

    :cond_1
    :goto_1
    invoke-static {v1, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SubLoaderList;->access$200(Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SubLoaderList;Lorg/apache/xmlbeans/SchemaTypeLoader;)Z

    goto :goto_3

    :cond_2
    aget-object v3, p0, v2

    check-cast v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;

    iget-object v4, v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_classLoader:Ljava/lang/ClassLoader;

    if-nez v4, :cond_1

    iget-object v4, v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_resourceLoader:Lorg/apache/xmlbeans/ResourceLoader;

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move v4, v0

    :goto_2
    iget-object v5, v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_searchPath:[Lorg/apache/xmlbeans/SchemaTypeLoader;

    array-length v6, v5

    if-ge v4, v6, :cond_4

    aget-object v5, v5, v4

    invoke-static {v1, v5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SubLoaderList;->access$200(Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SubLoaderList;Lorg/apache/xmlbeans/SchemaTypeLoader;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string p2, "searchPath["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p2, "] is null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-static {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SubLoaderList;->access$300(Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl$SubLoaderList;)[Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object p0

    :goto_4
    array-length v1, p0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    if-nez p1, :cond_7

    if-nez p2, :cond_7

    aget-object p0, p0, v0

    return-object p0

    :cond_7
    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;-><init>([Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/ResourceLoader;Ljava/lang/ClassLoader;)V

    return-object v0
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

.method public static crackEntry(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->crackPointer(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static crackEntry(Lorg/apache/xmlbeans/ResourceLoader;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/ResourceLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->crackPointer(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static crackPointer(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->crackPointer(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getContextTypeLoader()Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;
    .locals 5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Lorg/apache/xmlbeans/impl/common/SystemCache;->get()Lorg/apache/xmlbeans/impl/common/SystemCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/impl/common/SystemCache;->getFromTypeLoaderCache(Ljava/lang/ClassLoader;)Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/apache/xmlbeans/SchemaTypeLoader;

    const/4 v3, 0x0

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->get()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;-><init>([Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/ResourceLoader;Ljava/lang/ClassLoader;)V

    invoke-static {}, Lorg/apache/xmlbeans/impl/common/SystemCache;->get()Lorg/apache/xmlbeans/impl/common/SystemCache;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lorg/apache/xmlbeans/impl/common/SystemCache;->addToTypeLoaderCache(Lorg/apache/xmlbeans/SchemaTypeLoader;Ljava/lang/ClassLoader;)V

    :cond_0
    return-object v1
.end method

.method private final initCaches()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_classpathTypeSystems:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_classLoaderTypeSystems:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_elementCache:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_attributeCache:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_modelGroupCache:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_attributeGroupCache:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_idConstraintCache:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_typeCache:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_documentCache:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_attributeTypeCache:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_classnameCache:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public findAttributeGroupRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_attributeGroupCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->CACHED_NOT_FOUND:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;

    if-nez v0, :cond_6

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_searchPath:[Lorg/apache/xmlbeans/SchemaTypeLoader;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findAttributeGroupRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "schema"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->METADATA_PACKAGE_LOAD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "/attributegroup/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->typeSystemForComponent(Ljava/lang/String;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findAttributeGroupRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;

    move-result-object v0

    sget-boolean v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Type system registered attribute group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " but does not return it"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_attributeGroupCache:Ljava/util/Map;

    if-nez v0, :cond_5

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->CACHED_NOT_FOUND:Ljava/lang/Object;

    goto :goto_3

    :cond_5
    move-object v2, v0

    :goto_3
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0
.end method

.method public findAttributeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_attributeCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->CACHED_NOT_FOUND:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;

    if-nez v0, :cond_6

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_searchPath:[Lorg/apache/xmlbeans/SchemaTypeLoader;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findAttributeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "schema"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->METADATA_PACKAGE_LOAD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "/attribute/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->typeSystemForComponent(Ljava/lang/String;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findAttributeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;

    move-result-object v0

    sget-boolean v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Type system registered attribute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " but does not return it"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_attributeCache:Ljava/util/Map;

    if-nez v0, :cond_5

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->CACHED_NOT_FOUND:Ljava/lang/Object;

    goto :goto_3

    :cond_5
    move-object v2, v0

    :goto_3
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0
.end method

.method public findAttributeTypeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType$Ref;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_attributeTypeCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->CACHED_NOT_FOUND:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SchemaType$Ref;

    if-nez v0, :cond_6

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_searchPath:[Lorg/apache/xmlbeans/SchemaTypeLoader;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findAttributeTypeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "schema"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->METADATA_PACKAGE_LOAD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "/attribute/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->typeSystemForComponent(Ljava/lang/String;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findAttributeTypeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v0

    sget-boolean v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Type system registered attribute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " but does not contain attribute type"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_attributeTypeCache:Ljava/util/Map;

    if-nez v0, :cond_5

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->CACHED_NOT_FOUND:Ljava/lang/Object;

    goto :goto_3

    :cond_5
    move-object v2, v0

    :goto_3
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0
.end method

.method public findDocumentTypeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType$Ref;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_documentCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->CACHED_NOT_FOUND:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SchemaType$Ref;

    if-nez v0, :cond_6

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_searchPath:[Lorg/apache/xmlbeans/SchemaTypeLoader;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findDocumentTypeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "schema"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->METADATA_PACKAGE_LOAD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "/element/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->typeSystemForComponent(Ljava/lang/String;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findDocumentTypeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v0

    sget-boolean v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Type system registered element "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " but does not contain document type"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_documentCache:Ljava/util/Map;

    if-nez v0, :cond_5

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->CACHED_NOT_FOUND:Ljava/lang/Object;

    goto :goto_3

    :cond_5
    move-object v2, v0

    :goto_3
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0
.end method

.method public findElementRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_elementCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->CACHED_NOT_FOUND:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;

    if-nez v0, :cond_6

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_searchPath:[Lorg/apache/xmlbeans/SchemaTypeLoader;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findElementRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "schema"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->METADATA_PACKAGE_LOAD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "/element/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->typeSystemForComponent(Ljava/lang/String;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findElementRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;

    move-result-object v0

    sget-boolean v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Type system registered element "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " but does not return it"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_elementCache:Ljava/util/Map;

    if-nez v0, :cond_5

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->CACHED_NOT_FOUND:Ljava/lang/Object;

    goto :goto_3

    :cond_5
    move-object v2, v0

    :goto_3
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0
.end method

.method public findIdentityConstraintRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_idConstraintCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->CACHED_NOT_FOUND:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;

    if-nez v0, :cond_6

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_searchPath:[Lorg/apache/xmlbeans/SchemaTypeLoader;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findIdentityConstraintRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "schema"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->METADATA_PACKAGE_LOAD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "/identityconstraint/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->typeSystemForComponent(Ljava/lang/String;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findIdentityConstraintRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;

    move-result-object v0

    sget-boolean v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Type system registered identity constraint "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " but does not return it"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_idConstraintCache:Ljava/util/Map;

    if-nez v0, :cond_5

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->CACHED_NOT_FOUND:Ljava/lang/Object;

    goto :goto_3

    :cond_5
    move-object v2, v0

    :goto_3
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0
.end method

.method public findModelGroupRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaModelGroup$Ref;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_modelGroupCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->CACHED_NOT_FOUND:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SchemaModelGroup$Ref;

    if-nez v0, :cond_6

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_searchPath:[Lorg/apache/xmlbeans/SchemaTypeLoader;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findModelGroupRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaModelGroup$Ref;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "schema"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->METADATA_PACKAGE_LOAD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "/modelgroup/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->typeSystemForComponent(Ljava/lang/String;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findModelGroupRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaModelGroup$Ref;

    move-result-object v0

    sget-boolean v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Type system registered model group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " but does not return it"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_modelGroupCache:Ljava/util/Map;

    if-nez v0, :cond_5

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->CACHED_NOT_FOUND:Ljava/lang/Object;

    goto :goto_3

    :cond_5
    move-object v2, v0

    :goto_3
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0
.end method

.method public findTypeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType$Ref;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_typeCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->CACHED_NOT_FOUND:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SchemaType$Ref;

    if-nez v0, :cond_6

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_searchPath:[Lorg/apache/xmlbeans/SchemaTypeLoader;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findTypeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "schema"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->METADATA_PACKAGE_LOAD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "/type/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->typeSystemForComponent(Ljava/lang/String;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->findTypeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v0

    sget-boolean v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Type system registered type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " but does not return it"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_typeCache:Ljava/util/Map;

    if-nez v0, :cond_5

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->CACHED_NOT_FOUND:Ljava/lang/Object;

    goto :goto_3

    :cond_5
    move-object v2, v0

    :goto_3
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0
.end method

.method public getSourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_resourceLoader:Lorg/apache/xmlbeans/ResourceLoader;

    const-string v1, "/src"

    const-string v2, "schema"

    if-eqz v0, :cond_1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v4, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->METADATA_PACKAGE_LOAD:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/xmlbeans/ResourceLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v3, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->METADATA_PACKAGE_LOAD:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method public getTypeSystemOnClassloader(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Finding type system "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " on classloader"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->trace(ILjava/lang/String;I)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_classLoaderTypeSystems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Type system "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " not cached - consulting field"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->trace(ILjava/lang/String;I)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_classLoader:Ljava/lang/ClassLoader;

    invoke-static {p1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->forName(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_classLoaderTypeSystems:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getTypeSystemOnClasspath(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_classpathTypeSystems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_resourceLoader:Lorg/apache/xmlbeans/ResourceLoader;

    invoke-direct {v0, v1, p1, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;-><init>(Lorg/apache/xmlbeans/ResourceLoader;Ljava/lang/String;Lorg/apache/xmlbeans/SchemaTypeLoader;)V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_classpathTypeSystems:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public isNamespaceDefined(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_searchPath:[Lorg/apache/xmlbeans/SchemaTypeLoader;

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-interface {v2, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->isNamespaceDefined(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "schema"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->METADATA_PACKAGE_LOAD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "/namespace/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v3, "xmlns"

    invoke-direct {v2, p1, v3}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->typeSystemForComponent(Ljava/lang/String;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object p1

    if-eqz p1, :cond_2

    move v0, v4

    :cond_2
    return v0
.end method

.method public typeForClassname(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaType;
    .locals 4

    const/16 v0, 0x24

    const/16 v1, 0x2e

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_classnameCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->CACHED_NOT_FOUND:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    if-nez v0, :cond_6

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_searchPath:[Lorg/apache/xmlbeans/SchemaTypeLoader;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->typeForClassname(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "schema"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->METADATA_PACKAGE_LOAD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "/javaname/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->typeSystemForClassname(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->typeForClassname(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sget-boolean v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Type system registered type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " but does not return it"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_classnameCache:Ljava/util/Map;

    if-nez v0, :cond_5

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->CACHED_NOT_FOUND:Ljava/lang/Object;

    goto :goto_3

    :cond_5
    move-object v2, v0

    :goto_3
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0
.end method

.method public typeSystemForClassname(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p1, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p2, p1, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ".xsb"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_resourceLoader:Lorg/apache/xmlbeans/ResourceLoader;

    if-eqz p2, :cond_0

    invoke-static {p2, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->crackEntry(Lorg/apache/xmlbeans/ResourceLoader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->getTypeSystemOnClasspath(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz p2, :cond_1

    invoke-static {p2, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->crackEntry(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->getTypeSystemOnClassloader(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public typeSystemForComponent(Ljava/lang/String;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p2}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->hexsafedir(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ".xsb"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_resourceLoader:Lorg/apache/xmlbeans/ResourceLoader;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-static {p2, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->crackEntry(Lorg/apache/xmlbeans/ResourceLoader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v1, :cond_1

    invoke-static {v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->crackEntry(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->typeSystemForName(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    return-object p1

    :cond_2
    return-object v0
.end method

.method public typeSystemForName(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_resourceLoader:Lorg/apache/xmlbeans/ResourceLoader;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->getTypeSystemOnClasspath(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->_classLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->getTypeSystemOnClassloader(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
