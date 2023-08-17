.class public Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;
.super Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/SchemaTypeSystem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;,
        Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;,
        Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$StringPool;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field private static final CONSTANT_CLASS:I = 0x7

.field private static final CONSTANT_DOUBLE:I = 0x6

.field private static final CONSTANT_FIELD:I = 0x9

.field private static final CONSTANT_FLOAT:I = 0x4

.field private static final CONSTANT_INTEGER:I = 0x3

.field private static final CONSTANT_INTERFACEMETHOD:I = 0xb

.field private static final CONSTANT_LONG:I = 0x5

.field private static final CONSTANT_METHOD:I = 0xa

.field private static final CONSTANT_NAMEANDTYPE:I = 0xc

.field private static final CONSTANT_STRING:I = 0x8

.field private static final CONSTANT_UNICODE:I = 0x2

.field private static final CONSTANT_UTF8:I = 0x1

.field public static final DATA_BABE:I = -0x25854542

.field private static final EMPTY_AG_ARRAY:[Lorg/apache/xmlbeans/SchemaAttributeGroup;

.field private static final EMPTY_ANN_ARRAY:[Lorg/apache/xmlbeans/SchemaAnnotation;

.field private static final EMPTY_GA_ARRAY:[Lorg/apache/xmlbeans/SchemaGlobalAttribute;

.field private static final EMPTY_GE_ARRAY:[Lorg/apache/xmlbeans/SchemaGlobalElement;

.field private static final EMPTY_IC_ARRAY:[Lorg/apache/xmlbeans/SchemaIdentityConstraint;

.field private static final EMPTY_MG_ARRAY:[Lorg/apache/xmlbeans/SchemaModelGroup;

.field private static final EMPTY_ST_ARRAY:[Lorg/apache/xmlbeans/SchemaType;

.field public static final FIELD_GLOBAL:I = 0x1

.field public static final FIELD_LOCALATTR:I = 0x2

.field public static final FIELD_LOCALELT:I = 0x3

.field public static final FIELD_NONE:I = 0x0

.field public static final FILETYPE_SCHEMAATTRIBUTE:I = 0x4

.field public static final FILETYPE_SCHEMAATTRIBUTEGROUP:I = 0x7

.field public static final FILETYPE_SCHEMAELEMENT:I = 0x3

.field public static final FILETYPE_SCHEMAIDENTITYCONSTRAINT:I = 0x8

.field public static final FILETYPE_SCHEMAINDEX:I = 0x1

.field public static final FILETYPE_SCHEMAMODELGROUP:I = 0x6

.field public static final FILETYPE_SCHEMAPOINTER:I = 0x5

.field public static final FILETYPE_SCHEMATYPE:I = 0x2

.field public static final FLAG_ABSTRACT:I = 0x40000

.field public static final FLAG_ATTRIBUTE_TYPE:I = 0x80000

.field public static final FLAG_BLOCK_EXT:I = 0x1000

.field public static final FLAG_BLOCK_REST:I = 0x2000

.field public static final FLAG_BOUNDED:I = 0x8

.field public static final FLAG_COMPILED:I = 0x800

.field public static final FLAG_DOCUMENT_TYPE:I = 0x2

.field public static final FLAG_FINAL_EXT:I = 0x4000

.field public static final FLAG_FINAL_LIST:I = 0x20000

.field public static final FLAG_FINAL_REST:I = 0x8000

.field public static final FLAG_FINAL_UNION:I = 0x10000

.field public static final FLAG_FINITE:I = 0x10

.field public static final FLAG_HAS_PATTERN:I = 0x100

.field public static final FLAG_NUMERIC:I = 0x20

.field public static final FLAG_ORDERED:I = 0x4

.field public static final FLAG_ORDER_SENSITIVE:I = 0x200

.field public static final FLAG_PART_ABSTRACT:I = 0x80

.field public static final FLAG_PART_BLOCKEXT:I = 0x10

.field public static final FLAG_PART_BLOCKREST:I = 0x20

.field public static final FLAG_PART_BLOCKSUBST:I = 0x40

.field public static final FLAG_PART_FINALEXT:I = 0x100

.field public static final FLAG_PART_FINALREST:I = 0x200

.field public static final FLAG_PART_FIXED:I = 0x4

.field public static final FLAG_PART_NILLABLE:I = 0x8

.field public static final FLAG_PART_SKIPPABLE:I = 0x1

.field public static final FLAG_PROP_ISATTR:I = 0x1

.field public static final FLAG_PROP_JAVAARRAY:I = 0x8

.field public static final FLAG_PROP_JAVAOPTIONAL:I = 0x4

.field public static final FLAG_PROP_JAVASINGLETON:I = 0x2

.field public static final FLAG_SIMPLE_TYPE:I = 0x1

.field public static final FLAG_STRINGENUM:I = 0x40

.field public static final FLAG_TOTAL_ORDER:I = 0x400

.field public static final FLAG_UNION_OF_LISTS:I = 0x80

.field private static final HOLDER_TEMPLATE_CLASS:Ljava/lang/String; = "org.apache.xmlbeans.impl.schema.TypeSystemHolder"

.field private static final HOLDER_TEMPLATE_CLASSFILE:Ljava/lang/String; = "TypeSystemHolder.template"

.field private static final HOLDER_TEMPLATE_NAMES:[Ljava/lang/String;

.field public static final MAJOR_VERSION:I = 0x2

.field private static final MAX_UNSIGNED_SHORT:I = 0xffff

.field public static METADATA_PACKAGE_GEN:Ljava/lang/String; = null

.field public static final MINOR_VERSION:I = 0x18

.field public static final RELEASE_NUMBER:I

.field public static final SINGLE_ZERO_BYTE:[B

.field private static _mask:[B

.field private static _random:Ljava/util/Random;

.field public static synthetic class$org$apache$xmlbeans$SchemaTypeSystem:Ljava/lang/Class;

.field public static synthetic class$org$apache$xmlbeans$impl$schema$SchemaTypeSystemImpl:Ljava/lang/Class;


# instance fields
.field private _allNonGroupHandlesResolved:Z

.field private _annotations:Ljava/util/List;

.field private _attributeGroups:Ljava/util/Map;

.field private _attributeTypes:Ljava/util/Map;

.field private _basePackage:Ljava/lang/String;

.field private _classloader:Ljava/lang/ClassLoader;

.field private _containers:Ljava/util/Map;

.field private _deps:Lorg/apache/xmlbeans/impl/schema/SchemaDependencies;

.field private _documentTypes:Ljava/util/Map;

.field private _filer:Lorg/apache/xmlbeans/Filer;

.field private _globalAttributes:Ljava/util/Map;

.field private _globalElements:Ljava/util/Map;

.field private _globalTypes:Ljava/util/Map;

.field private _identityConstraints:Ljava/util/Map;

.field private _incomplete:Z

.field public _linker:Lorg/apache/xmlbeans/SchemaTypeLoader;

.field private _localHandles:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;

.field private _modelGroups:Ljava/util/Map;

.field private _name:Ljava/lang/String;

.field private _namespaces:Ljava/util/Set;

.field private _redefinedAttributeGroups:Ljava/util/List;

.field private _redefinedGlobalTypes:Ljava/util/List;

.field private _redefinedModelGroups:Ljava/util/List;

.field private final _resolvedHandles:Ljava/util/Map;

.field private _resourceLoader:Lorg/apache/xmlbeans/ResourceLoader;

.field private _typeRefsByClassname:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->class$org$apache$xmlbeans$impl$schema$SchemaTypeSystemImpl:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.schema.SchemaTypeSystemImpl"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->class$org$apache$xmlbeans$impl$schema$SchemaTypeSystemImpl:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->$assertionsDisabled:Z

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->class$org$apache$xmlbeans$SchemaTypeSystem:Ljava/lang/Class;

    const-string v2, "org.apache.xmlbeans.SchemaTypeSystem"

    if-nez v1, :cond_1

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->class$org$apache$xmlbeans$SchemaTypeSystem:Ljava/lang/Class;

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_4

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->class$org$apache$xmlbeans$SchemaTypeSystem:Ljava/lang/Class;

    if-nez v1, :cond_2

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->class$org$apache$xmlbeans$SchemaTypeSystem:Ljava/lang/Class;

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->class$org$apache$xmlbeans$SchemaTypeSystem:Ljava/lang/Class;

    if-nez v4, :cond_3

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->class$org$apache$xmlbeans$SchemaTypeSystem:Ljava/lang/Class;

    :cond_3
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "\\."

    const-string v4, "_"

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->METADATA_PACKAGE_GEN:Ljava/lang/String;

    const-string v1, "org.apache.xmlbeans.impl.schema.TypeSystemHolder"

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->makeClassStrings(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->HOLDER_TEMPLATE_NAMES:[Ljava/lang/String;

    const/16 v1, 0x10

    new-array v1, v1, [B

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_mask:[B

    new-array v1, v3, [Lorg/apache/xmlbeans/SchemaType;

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_ST_ARRAY:[Lorg/apache/xmlbeans/SchemaType;

    new-array v1, v3, [Lorg/apache/xmlbeans/SchemaGlobalElement;

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_GE_ARRAY:[Lorg/apache/xmlbeans/SchemaGlobalElement;

    new-array v1, v3, [Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_GA_ARRAY:[Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    new-array v1, v3, [Lorg/apache/xmlbeans/SchemaModelGroup;

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_MG_ARRAY:[Lorg/apache/xmlbeans/SchemaModelGroup;

    new-array v1, v3, [Lorg/apache/xmlbeans/SchemaAttributeGroup;

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_AG_ARRAY:[Lorg/apache/xmlbeans/SchemaAttributeGroup;

    new-array v1, v3, [Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_IC_ARRAY:[Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    new-array v1, v3, [Lorg/apache/xmlbeans/SchemaAnnotation;

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_ANN_ARRAY:[Lorg/apache/xmlbeans/SchemaAnnotation;

    new-array v0, v0, [B

    aput-byte v3, v0, v3

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->SINGLE_ZERO_BYTE:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 3

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_identityConstraints:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_typeRefsByClassname:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resolvedHandles:Ljava/util/Map;

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_allNonGroupHandlesResolved:Z

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Loading type system "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0, v1}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->trace(ILjava/lang/String;I)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->nameToPathString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_basePackage:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_classloader:Ljava/lang/ClassLoader;

    const/4 v0, 0x0

    invoke-static {v0, v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->build([Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/ResourceLoader;Ljava/lang/ClassLoader;)Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_linker:Lorg/apache/xmlbeans/SchemaTypeLoader;

    new-instance p1, Lorg/apache/xmlbeans/impl/schema/ClassLoaderResourceLoader;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_classloader:Ljava/lang/ClassLoader;

    invoke-direct {p1, v0}, Lorg/apache/xmlbeans/impl/schema/ClassLoaderResourceLoader;-><init>(Ljava/lang/ClassLoader;)V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resourceLoader:Lorg/apache/xmlbeans/ResourceLoader;

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->initFromHeader()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Finished loading type system "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-static {v1, p1, v0}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->trace(ILjava/lang/String;I)V

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->logException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1

    :catch_1
    move-exception p1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->logException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_identityConstraints:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_typeRefsByClassname:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resolvedHandles:Ljava/util/Map;

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_allNonGroupHandlesResolved:Z

    if-nez p1, :cond_0

    const/16 p1, 0x10

    new-array p1, p1, [B

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->nextBytes([B)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/util/HexBin;->encode([B)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "schema"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->METADATA_PACKAGE_GEN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ".system."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->nameToPathString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_basePackage:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_classloader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/ResourceLoader;Ljava/lang/String;Lorg/apache/xmlbeans/SchemaTypeLoader;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_identityConstraints:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_typeRefsByClassname:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resolvedHandles:Ljava/util/Map;

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_allNonGroupHandlesResolved:Z

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    invoke-static {p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->nameToPathString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_basePackage:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_linker:Lorg/apache/xmlbeans/SchemaTypeLoader;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resourceLoader:Lorg/apache/xmlbeans/ResourceLoader;

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->initFromHeader()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->logException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1

    :catch_1
    move-exception p1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->logException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1
.end method

.method public static synthetic access$000(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_basePackage:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1000(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Lorg/apache/xmlbeans/ResourceLoader;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resourceLoader:Lorg/apache/xmlbeans/ResourceLoader;

    return-object p0
.end method

.method public static synthetic access$1100(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_localHandles:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_typeRefsByClassname:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$400(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_namespaces:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic access$800(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getContainerNonNull(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$900(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)Lorg/apache/xmlbeans/Filer;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_filer:Lorg/apache/xmlbeans/Filer;

    return-object p0
.end method

.method private addContainer(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-direct {v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->setTypeSystem(Lorg/apache/xmlbeans/SchemaTypeSystem;)V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private assertContainersSynchronized()V
    .locals 5

    sget-boolean v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->$assertionsDisabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->globalElements()Ljava/util/List;

    move-result-object v3

    new-array v4, v1, [Lorg/apache/xmlbeans/SchemaComponent;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/xmlbeans/SchemaComponent;

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefMap([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_1

    :cond_2
    sget-boolean v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalElements:Ljava/util/Map;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    :goto_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->globalAttributes()Ljava/util/List;

    move-result-object v3

    new-array v4, v1, [Lorg/apache/xmlbeans/SchemaComponent;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/xmlbeans/SchemaComponent;

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefMap([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_3

    :cond_5
    sget-boolean v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalAttributes:Ljava/util/Map;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7
    :goto_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->modelGroups()Ljava/util/List;

    move-result-object v3

    new-array v4, v1, [Lorg/apache/xmlbeans/SchemaComponent;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/xmlbeans/SchemaComponent;

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefMap([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_5

    :cond_8
    sget-boolean v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_a

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_modelGroups:Ljava/util/Map;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_6

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_a
    :goto_6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->redefinedModelGroups()Ljava/util/List;

    move-result-object v3

    new-array v4, v1, [Lorg/apache/xmlbeans/SchemaComponent;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/xmlbeans/SchemaComponent;

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefList([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_7

    :cond_b
    sget-boolean v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_d

    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedModelGroups:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_8

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_d
    :goto_8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->attributeGroups()Ljava/util/List;

    move-result-object v3

    new-array v4, v1, [Lorg/apache/xmlbeans/SchemaComponent;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/xmlbeans/SchemaComponent;

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefMap([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_9

    :cond_e
    sget-boolean v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_10

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeGroups:Ljava/util/Map;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_a

    :cond_f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    :goto_a
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->redefinedAttributeGroups()Ljava/util/List;

    move-result-object v3

    new-array v4, v1, [Lorg/apache/xmlbeans/SchemaComponent;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/xmlbeans/SchemaComponent;

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefList([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_b

    :cond_11
    sget-boolean v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_13

    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedAttributeGroups:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_c

    :cond_12
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_13
    :goto_c
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->globalTypes()Ljava/util/List;

    move-result-object v3

    new-array v4, v1, [Lorg/apache/xmlbeans/SchemaComponent;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/xmlbeans/SchemaComponent;

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefMap([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_d

    :cond_14
    sget-boolean v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_16

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalTypes:Ljava/util/Map;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_e

    :cond_15
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_16
    :goto_e
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->redefinedGlobalTypes()Ljava/util/List;

    move-result-object v3

    new-array v4, v1, [Lorg/apache/xmlbeans/SchemaComponent;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/xmlbeans/SchemaComponent;

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefList([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_f

    :cond_17
    sget-boolean v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_19

    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedGlobalTypes:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_10

    :cond_18
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_19
    :goto_10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->documentTypes()Ljava/util/List;

    move-result-object v3

    new-array v4, v1, [Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/xmlbeans/SchemaType;

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildDocumentMap([Lorg/apache/xmlbeans/SchemaType;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_11

    :cond_1a
    sget-boolean v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_1c

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_documentTypes:Ljava/util/Map;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_12

    :cond_1b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1c
    :goto_12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->attributeTypes()Ljava/util/List;

    move-result-object v3

    new-array v4, v1, [Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/xmlbeans/SchemaType;

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildAttributeTypeMap([Lorg/apache/xmlbeans/SchemaType;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_13

    :cond_1d
    sget-boolean v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_1f

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeTypes:Ljava/util/Map;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_14

    :cond_1e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1f
    :goto_14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->identityConstraints()Ljava/util/List;

    move-result-object v3

    new-array v4, v1, [Lorg/apache/xmlbeans/SchemaComponent;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/xmlbeans/SchemaComponent;

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefMap([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_15

    :cond_20
    sget-boolean v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_22

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_identityConstraints:Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_16

    :cond_21
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_22
    :goto_16
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->annotations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_17

    :cond_23
    sget-boolean v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_25

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_annotations:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_18

    :cond_24
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_25
    :goto_18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_26
    sget-boolean v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_28

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_namespaces:Ljava/util/Set;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_1a

    :cond_27
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_28
    :goto_1a
    return-void
.end method

.method private static buildAttributeTypeMap([Lorg/apache/xmlbeans/SchemaType;)Ljava/util/Map;
    .locals 4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getAttributeTypeAttributeName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaType;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static buildComponentRefList([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaComponent;->getComponentRef()Lorg/apache/xmlbeans/SchemaComponent$Ref;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static buildComponentRefMap([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/Map;
    .locals 4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaComponent;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaComponent;->getComponentRef()Lorg/apache/xmlbeans/SchemaComponent$Ref;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private buildContainers(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalElements:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v2}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getContainerNonNull(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;

    invoke-virtual {v2, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->addGlobalElement(Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalAttributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v2}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getContainerNonNull(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;

    invoke-virtual {v2, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->addGlobalAttribute(Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_modelGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v2}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getContainerNonNull(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SchemaModelGroup$Ref;

    invoke-virtual {v2, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->addModelGroup(Lorg/apache/xmlbeans/SchemaModelGroup$Ref;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v2}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getContainerNonNull(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;

    invoke-virtual {v2, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->addAttributeGroup(Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_identityConstraints:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v2}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getContainerNonNull(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;

    invoke-virtual {v2, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->addIdentityConstraint(Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;)V

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v2}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getContainerNonNull(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SchemaType$Ref;

    invoke-virtual {v2, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->addGlobalType(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_documentTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v2}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getContainerNonNull(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SchemaType$Ref;

    invoke-virtual {v2, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->addDocumentType(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    goto :goto_6

    :cond_6
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v2}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getContainerNonNull(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SchemaType$Ref;

    invoke-virtual {v2, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->addAttributeType(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    goto :goto_7

    :cond_7
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedGlobalTypes:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedModelGroups:Ljava/util/List;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedAttributeGroups:Ljava/util/List;

    if-eqz v1, :cond_c

    sget-boolean v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_8

    goto :goto_8

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_8
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedGlobalTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v1}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getContainerNonNull(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/SchemaType$Ref;

    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->addRedefinedType(Lorg/apache/xmlbeans/SchemaType$Ref;)V

    goto :goto_9

    :cond_a
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedModelGroups:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getContainerNonNull(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SchemaModelGroup$Ref;

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->addRedefinedModelGroup(Lorg/apache/xmlbeans/SchemaModelGroup$Ref;)V

    goto :goto_a

    :cond_b
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedAttributeGroups:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-virtual {p3}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getContainerNonNull(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object p3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;

    invoke-virtual {p3, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->addRedefinedAttributeGroup(Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;)V

    goto :goto_b

    :cond_c
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_annotations:Ljava/util/List;

    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/SchemaAnnotation;

    const-string p3, ""

    invoke-direct {p0, p3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getContainerNonNull(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object p3

    invoke-virtual {p3, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->addAnnotation(Lorg/apache/xmlbeans/SchemaAnnotation;)V

    goto :goto_c

    :cond_d
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->setImmutable()V

    goto :goto_d

    :cond_e
    return-void
.end method

.method private static buildDocumentMap([Lorg/apache/xmlbeans/SchemaType;)Ljava/util/Map;
    .locals 4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getDocumentElementName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaType;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private buildTypeRefsByClassname()Ljava/util/Map;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->documentTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->attributeTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->globalTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const/16 v5, 0x24

    const/16 v6, 0x2e

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaType;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaType;->getAnonymousTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private buildTypeRefsByClassname(Ljava/util/Map;)Ljava/util/Map;
    .locals 4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

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

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaType;->getRef()Lorg/apache/xmlbeans/SchemaType$Ref;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
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

.method public static crackPointer(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const v2, -0x25854542

    if-eq p0, v2, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v0

    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result p0

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v3, 0x2

    if-eq p0, v3, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return-object v0

    :cond_1
    const/16 v4, 0x18

    if-le v2, v4, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    return-object v0

    :cond_2
    if-gt p0, v3, :cond_3

    if-ne p0, v3, :cond_4

    const/16 p0, 0x12

    if-lt v2, p0, :cond_4

    :cond_3
    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    :cond_4
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v2, 0x5

    if-eq p0, v2, :cond_5

    :try_start_7
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    return-object v0

    :cond_5
    :try_start_8
    new-instance p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$StringPool;

    const-string v2, "pointer"

    const-string v3, "unk"

    invoke-direct {p0, v2, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$StringPool;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$StringPool;->readFrom(Ljava/io/DataInputStream;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$StringPool;->stringForCode(I)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :catch_4
    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_6

    :try_start_a
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :catch_5
    :cond_6
    throw p0

    :catch_6
    move-object v1, v0

    :catch_7
    if-eqz v1, :cond_7

    :try_start_b
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    :catch_8
    :cond_7
    return-object v0
.end method

.method public static fileContainsTypeSystem(Ljava/io/File;Ljava/lang/String;)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->nameToPathString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "index.xsb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return p0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_1
    :try_start_3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Problem loading SchemaTypeSystem, zipfilename "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->log(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->logException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    new-instance p0, Lorg/apache/xmlbeans/SchemaTypeLoaderException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "index"

    const/16 v3, 0x9

    invoke-direct {p0, v0, p1, v2, v3}, Lorg/apache/xmlbeans/SchemaTypeLoaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_2
    throw p0
.end method

.method private fixupContainers()V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-virtual {v1, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->setTypeSystem(Lorg/apache/xmlbeans/SchemaTypeSystem;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->setImmutable()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static forName(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "TypeSystemHolder"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {p0, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    const-string p1, "typeSystem"

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method private getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    return-object p1
.end method

.method private getContainerNonNull(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->addContainer(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getContainer(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private initFromHeader()V
    .locals 7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Reading unresolved handles for type system "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->trace(ILjava/lang/String;I)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;

    const-string v4, "index"

    invoke-direct {v3, p0, v4, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_localHandles:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;

    invoke-virtual {v3, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readHandlePool(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;)V

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQNameRefMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalElements:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQNameRefMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalAttributes:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQNameRefMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_modelGroups:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQNameRefMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeGroups:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQNameRefMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_identityConstraints:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQNameRefMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalTypes:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQNameRefMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_documentTypes:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQNameRefMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeTypes:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readClassnameRefMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_typeRefsByClassname:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readNamespaces()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_namespaces:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/16 v5, 0xf

    const/4 v6, 0x2

    invoke-virtual {v3, v6, v5, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->atLeast(III)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQNameRefMapAsList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedGlobalTypes:Ljava/util/List;

    invoke-virtual {v3, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQNameRefMapAsList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedModelGroups:Ljava/util/List;

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readQNameRefMapAsList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedAttributeGroups:Ljava/util/List;

    :cond_0
    const/16 v5, 0x13

    invoke-virtual {v3, v6, v5, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->atLeast(III)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readAnnotations()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_annotations:Ljava/util/List;

    :cond_1
    invoke-direct {p0, v0, v1, v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildContainers(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readEnd()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->readEnd()V

    :cond_2
    throw v0
.end method

.method private static makeClassStrings(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "L"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "class$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v3, 0x24

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    return-object v0
.end method

.method private static nameToPathString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static declared-synchronized nextBytes([B)V
    .locals 14

    const-class v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_random:Ljava/util/Random;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_4

    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v4, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->class$org$apache$xmlbeans$impl$schema$SchemaTypeSystemImpl:Ljava/lang/Class;

    if-nez v4, :cond_0

    const-string v4, "org.apache.xmlbeans.impl.schema.SchemaTypeSystemImpl"

    invoke-static {v4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->class$org$apache$xmlbeans$impl$schema$SchemaTypeSystemImpl:Ljava/lang/Class;

    :cond_0
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/16 v4, 0x9

    const-string v5, "user.name"

    const-string v6, "user.dir"

    const-string v7, "user.timezone"

    const-string v8, "user.country"

    const-string v9, "java.class.path"

    const-string v10, "java.home"

    const-string v11, "java.vendor"

    const-string v12, "java.version"

    const-string v13, "os.version"

    filled-new-array/range {v5 .. v13}, [Ljava/lang/String;

    move-result-object v5

    move v6, v2

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v5, v6

    invoke-static {v7}, Lorg/apache/xmlbeans/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    move v3, v2

    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_3

    sget-object v4, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_mask:[B

    array-length v5, v4

    rem-int v5, v3, v5

    aget-byte v6, v4, v5

    mul-int/lit8 v6, v6, 0x15

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    aget-byte v6, v4, v5

    add-int/2addr v6, v3

    int-to-byte v6, v6

    aput-byte v6, v4, v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->logException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_3
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Ljava/util/Random;-><init>(J)V

    sput-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_random:Ljava/util/Random;

    :cond_4
    sget-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_random:Ljava/util/Random;

    invoke-virtual {v1, p0}, Ljava/util/Random;->nextBytes([B)V

    :goto_2
    array-length v1, p0

    if-ge v2, v1, :cond_5

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_mask:[B

    array-length v3, v1

    and-int/2addr v3, v2

    aget-byte v4, p0, v2

    aget-byte v1, v1, v3

    xor-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, p0, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static repackageConstant(Ljava/lang/String;[Ljava/lang/String;Lrepackage/Repackager;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->HOLDER_TEMPLATE_NAMES:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object p0, p1, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lrepackage/Repackager;->repackage(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method


# virtual methods
.method public annotations()[Lorg/apache/xmlbeans/SchemaAnnotation;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_annotations:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_annotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaAnnotation;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_annotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/xmlbeans/SchemaAnnotation;

    return-object v0

    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_ANN_ARRAY:[Lorg/apache/xmlbeans/SchemaAnnotation;

    return-object v0
.end method

.method public attributeGroups()[Lorg/apache/xmlbeans/SchemaAttributeGroup;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_AG_ARRAY:[Lorg/apache/xmlbeans/SchemaAttributeGroup;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaAttributeGroup;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeGroups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;->get()Lorg/apache/xmlbeans/SchemaAttributeGroup;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public attributeTypes()[Lorg/apache/xmlbeans/SchemaType;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_ST_ARRAY:[Lorg/apache/xmlbeans/SchemaType;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaType;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeTypes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/SchemaType$Ref;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/SchemaType$Ref;->get()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public containers()[Lorg/apache/xmlbeans/impl/schema/SchemaContainer;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public documentTypes()[Lorg/apache/xmlbeans/SchemaType;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_documentTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_ST_ARRAY:[Lorg/apache/xmlbeans/SchemaType;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_documentTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaType;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_documentTypes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/SchemaType$Ref;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/SchemaType$Ref;->get()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public findAttributeGroupRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;

    return-object p1
.end method

.method public findAttributeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;

    return-object p1
.end method

.method public findAttributeTypeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType$Ref;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeTypes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/SchemaType$Ref;

    return-object p1
.end method

.method public findDocumentTypeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType$Ref;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_documentTypes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/SchemaType$Ref;

    return-object p1
.end method

.method public findElementRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalElements:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;

    return-object p1
.end method

.method public findIdentityConstraintRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_identityConstraints:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;

    return-object p1
.end method

.method public findModelGroupRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaModelGroup$Ref;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_modelGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/SchemaModelGroup$Ref;

    return-object p1
.end method

.method public findTypeRef(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType$Ref;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalTypes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/SchemaType$Ref;

    return-object p1
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_classloader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getDependencies()Lorg/apache/xmlbeans/impl/schema/SchemaDependencies;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_deps:Lorg/apache/xmlbeans/impl/schema/SchemaDependencies;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

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
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resourceLoader:Lorg/apache/xmlbeans/ResourceLoader;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "schema"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->METADATA_PACKAGE_GEN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "/src"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/ResourceLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public final getTypeSystem()Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;
    .locals 0

    return-object p0
.end method

.method public globalAttributes()[Lorg/apache/xmlbeans/SchemaGlobalAttribute;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalAttributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_GA_ARRAY:[Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalAttributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalAttributes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;->get()Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public globalElements()[Lorg/apache/xmlbeans/SchemaGlobalElement;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalElements:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_GE_ARRAY:[Lorg/apache/xmlbeans/SchemaGlobalElement;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalElements:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaGlobalElement;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalElements:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;->get()Lorg/apache/xmlbeans/SchemaGlobalElement;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public globalTypes()[Lorg/apache/xmlbeans/SchemaType;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_ST_ARRAY:[Lorg/apache/xmlbeans/SchemaType;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaType;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalTypes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/SchemaType$Ref;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/SchemaType$Ref;->get()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public handleForType(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_localHandles:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->handleForType(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public identityConstraints()[Lorg/apache/xmlbeans/SchemaIdentityConstraint;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_identityConstraints:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_IC_ARRAY:[Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_identityConstraints:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_identityConstraints:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;->get()Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public isIncomplete()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    return v0
.end method

.method public isNamespaceDefined(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_namespaces:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public loadFromBuilder([Lorg/apache/xmlbeans/SchemaGlobalElement;[Lorg/apache/xmlbeans/SchemaGlobalAttribute;[Lorg/apache/xmlbeans/SchemaType;[Lorg/apache/xmlbeans/SchemaType;[Lorg/apache/xmlbeans/SchemaType;)V
    .locals 1

    sget-boolean v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_classloader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_localHandles:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefMap([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalElements:Ljava/util/Map;

    invoke-static {p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefMap([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalAttributes:Ljava/util/Map;

    invoke-static {p3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefMap([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalTypes:Ljava/util/Map;

    invoke-static {p4}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildDocumentMap([Lorg/apache/xmlbeans/SchemaType;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_documentTypes:Ljava/util/Map;

    invoke-static {p5}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildAttributeTypeMap([Lorg/apache/xmlbeans/SchemaType;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeTypes:Ljava/util/Map;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildTypeRefsByClassname()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_typeRefsByClassname:Ljava/util/Map;

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p0, p1, p1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildContainers(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_namespaces:Ljava/util/Set;

    return-void
.end method

.method public loadFromStscState(Lorg/apache/xmlbeans/impl/schema/StscState;)V
    .locals 2

    sget-boolean v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_classloader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_localHandles:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->globalElements()[Lorg/apache/xmlbeans/SchemaGlobalElement;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefMap([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalElements:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->globalAttributes()[Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefMap([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalAttributes:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->modelGroups()[Lorg/apache/xmlbeans/SchemaModelGroup;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefMap([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_modelGroups:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->redefinedModelGroups()[Lorg/apache/xmlbeans/SchemaModelGroup;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefList([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedModelGroups:Ljava/util/List;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->attributeGroups()[Lorg/apache/xmlbeans/SchemaAttributeGroup;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefMap([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeGroups:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->redefinedAttributeGroups()[Lorg/apache/xmlbeans/SchemaAttributeGroup;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefList([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedAttributeGroups:Ljava/util/List;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->globalTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefMap([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalTypes:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->redefinedGlobalTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefList([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedGlobalTypes:Ljava/util/List;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->documentTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildDocumentMap([Lorg/apache/xmlbeans/SchemaType;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_documentTypes:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->attributeTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildAttributeTypeMap([Lorg/apache/xmlbeans/SchemaType;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeTypes:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->typesByClassname()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildTypeRefsByClassname(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_typeRefsByClassname:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->idConstraints()[Lorg/apache/xmlbeans/impl/schema/SchemaIdentityConstraintImpl;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->buildComponentRefMap([Lorg/apache/xmlbeans/SchemaComponent;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_identityConstraints:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->annotations()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_annotations:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->getNamespaces()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_namespaces:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->getContainerMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_containers:Ljava/util/Map;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->fixupContainers()V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->assertContainersSynchronized()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->getDependencies()Lorg/apache/xmlbeans/impl/schema/SchemaDependencies;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->setDependencies(Lorg/apache/xmlbeans/impl/schema/SchemaDependencies;)V

    return-void
.end method

.method public modelGroups()[Lorg/apache/xmlbeans/SchemaModelGroup;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_modelGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_MG_ARRAY:[Lorg/apache/xmlbeans/SchemaModelGroup;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_modelGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaModelGroup;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_modelGroups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/SchemaModelGroup$Ref;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/SchemaModelGroup$Ref;->get()Lorg/apache/xmlbeans/SchemaModelGroup;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public redefinedAttributeGroups()[Lorg/apache/xmlbeans/SchemaAttributeGroup;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedAttributeGroups:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedAttributeGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaAttributeGroup;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedAttributeGroups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;->get()Lorg/apache/xmlbeans/SchemaAttributeGroup;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_AG_ARRAY:[Lorg/apache/xmlbeans/SchemaAttributeGroup;

    return-object v0
.end method

.method public redefinedGlobalTypes()[Lorg/apache/xmlbeans/SchemaType;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedGlobalTypes:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedGlobalTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaType;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedGlobalTypes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/SchemaType$Ref;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/SchemaType$Ref;->get()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_ST_ARRAY:[Lorg/apache/xmlbeans/SchemaType;

    return-object v0
.end method

.method public redefinedModelGroups()[Lorg/apache/xmlbeans/SchemaModelGroup;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedModelGroups:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedModelGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaModelGroup;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_redefinedModelGroups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/SchemaModelGroup$Ref;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/SchemaModelGroup$Ref;->get()Lorg/apache/xmlbeans/SchemaModelGroup;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->EMPTY_MG_ARRAY:[Lorg/apache/xmlbeans/SchemaModelGroup;

    return-object v0
.end method

.method public resolve()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Resolve called type system "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->trace(ILjava/lang/String;I)V

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_allNonGroupHandlesResolved:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Resolving all handles for type system "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v1}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->trace(ILjava/lang/String;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalElements:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalAttributes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_globalTypes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_documentTypes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_attributeTypes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_identityConstraints:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/SchemaComponent$Ref;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/SchemaComponent$Ref;->getComponent()Lorg/apache/xmlbeans/SchemaComponent;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Finished resolving type system "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->trace(ILjava/lang/String;I)V

    iput-boolean v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_allNonGroupHandlesResolved:Z

    return-void
.end method

.method public resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;
    .locals 5

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resolvedHandles:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resolvedHandles:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/SchemaComponent;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_7

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;

    const v1, 0xffff

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->getActualFiletype()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Resolving id constraint for handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v3}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->trace(ILjava/lang/String;I)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->finishLoadingIdentityConstraint()Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    move-result-object v0

    goto/16 :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Illegal handle type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Resolving attribute group for handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v3}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->trace(ILjava/lang/String;I)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->finishLoadingAttributeGroup()Lorg/apache/xmlbeans/SchemaAttributeGroup;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Resolving model group for handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v3}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->trace(ILjava/lang/String;I)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->finishLoadingModelGroup()Lorg/apache/xmlbeans/SchemaModelGroup;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Resolving attribute for handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v3}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->trace(ILjava/lang/String;I)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->finishLoadingAttribute()Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Resolving element for handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v3}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->trace(ILjava/lang/String;I)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->finishLoadingElement()Lorg/apache/xmlbeans/SchemaGlobalElement;

    move-result-object v0

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Resolving type for handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v3}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->trace(ILjava/lang/String;I)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->finishLoadingType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resolvedHandles:Ljava/util/Map;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resolvedHandles:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resolvedHandles:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resolvedHandles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/SchemaComponent;

    move-object v1, p1

    :goto_1
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_7
    :goto_2
    return-object v1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public save(Lorg/apache/xmlbeans/Filer;)V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_filer:Lorg/apache/xmlbeans/Filer;

    iget-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_localHandles:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->startWriteMode()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->globalTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveTypesRecursively([Lorg/apache/xmlbeans/SchemaType;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->documentTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveTypesRecursively([Lorg/apache/xmlbeans/SchemaType;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->attributeTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveTypesRecursively([Lorg/apache/xmlbeans/SchemaType;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->globalElements()[Lorg/apache/xmlbeans/SchemaGlobalElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveGlobalElements([Lorg/apache/xmlbeans/SchemaGlobalElement;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->globalAttributes()[Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveGlobalAttributes([Lorg/apache/xmlbeans/SchemaGlobalAttribute;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->modelGroups()[Lorg/apache/xmlbeans/SchemaModelGroup;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveModelGroups([Lorg/apache/xmlbeans/SchemaModelGroup;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->attributeGroups()[Lorg/apache/xmlbeans/SchemaAttributeGroup;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveAttributeGroups([Lorg/apache/xmlbeans/SchemaAttributeGroup;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->identityConstraints()[Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveIdentityConstraints([Lorg/apache/xmlbeans/SchemaIdentityConstraint;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->redefinedGlobalTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveTypesRecursively([Lorg/apache/xmlbeans/SchemaType;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->redefinedModelGroups()[Lorg/apache/xmlbeans/SchemaModelGroup;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveModelGroups([Lorg/apache/xmlbeans/SchemaModelGroup;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->redefinedAttributeGroups()[Lorg/apache/xmlbeans/SchemaAttributeGroup;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveAttributeGroups([Lorg/apache/xmlbeans/SchemaAttributeGroup;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveIndex()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointers()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveLoader()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "filer must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Incomplete SchemaTypeSystems cannot be saved."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveAttributeGroup(Lorg/apache/xmlbeans/SchemaAttributeGroup;)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_localHandles:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->handleForAttributeGroup(Lorg/apache/xmlbeans/SchemaAttributeGroup;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;

    invoke-direct {v1, p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeAttributeGroupData(Lorg/apache/xmlbeans/SchemaAttributeGroup;)V

    const/4 v2, 0x7

    invoke-virtual {v1, v0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeRealHeader(Ljava/lang/String;I)V

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeAttributeGroupData(Lorg/apache/xmlbeans/SchemaAttributeGroup;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeEnd()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This SchemaTypeSystem cannot be saved."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveAttributeGroups([Lorg/apache/xmlbeans/SchemaAttributeGroup;)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveAttributeGroup(Lorg/apache/xmlbeans/SchemaAttributeGroup;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This SchemaTypeSystem cannot be saved."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveGlobalAttribute(Lorg/apache/xmlbeans/SchemaGlobalAttribute;)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_localHandles:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->handleForAttribute(Lorg/apache/xmlbeans/SchemaGlobalAttribute;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;

    invoke-direct {v1, p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeAttributeData(Lorg/apache/xmlbeans/SchemaLocalAttribute;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaComponent;->getSourceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeRealHeader(Ljava/lang/String;I)V

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeAttributeData(Lorg/apache/xmlbeans/SchemaLocalAttribute;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaComponent;->getSourceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeEnd()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This SchemaTypeSystem cannot be saved."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveGlobalAttributes([Lorg/apache/xmlbeans/SchemaGlobalAttribute;)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveGlobalAttribute(Lorg/apache/xmlbeans/SchemaGlobalAttribute;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This SchemaTypeSystem cannot be saved."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveGlobalElement(Lorg/apache/xmlbeans/SchemaGlobalElement;)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_localHandles:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->handleForElement(Lorg/apache/xmlbeans/SchemaGlobalElement;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;

    invoke-direct {v1, p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, Lorg/apache/xmlbeans/SchemaParticle;

    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeParticleData(Lorg/apache/xmlbeans/SchemaParticle;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaComponent;->getSourceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeRealHeader(Ljava/lang/String;I)V

    move-object v0, p1

    check-cast v0, Lorg/apache/xmlbeans/SchemaParticle;

    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeParticleData(Lorg/apache/xmlbeans/SchemaParticle;)V

    invoke-interface {p1}, Lorg/apache/xmlbeans/SchemaComponent;->getSourceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeEnd()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This SchemaTypeSystem cannot be saved."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveGlobalElements([Lorg/apache/xmlbeans/SchemaGlobalElement;)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveGlobalElement(Lorg/apache/xmlbeans/SchemaGlobalElement;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This SchemaTypeSystem cannot be saved."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveIdentityConstraint(Lorg/apache/xmlbeans/SchemaIdentityConstraint;)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_localHandles:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->handleForIdentityConstraint(Lorg/apache/xmlbeans/SchemaIdentityConstraint;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;

    invoke-direct {v1, p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeIdConstraintData(Lorg/apache/xmlbeans/SchemaIdentityConstraint;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeRealHeader(Ljava/lang/String;I)V

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeIdConstraintData(Lorg/apache/xmlbeans/SchemaIdentityConstraint;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeEnd()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This SchemaTypeSystem cannot be saved."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveIdentityConstraints([Lorg/apache/xmlbeans/SchemaIdentityConstraint;)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveIdentityConstraint(Lorg/apache/xmlbeans/SchemaIdentityConstraint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This SchemaTypeSystem cannot be saved."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveIndex()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;

    const-string v1, "index"

    invoke-direct {v0, p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeIndexData()V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeRealHeader(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeIndexData()V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeEnd()V

    return-void
.end method

.method public saveLoader()V
    .locals 10

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->indexClassForSystem(Lorg/apache/xmlbeans/SchemaTypeSystem;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->makeClassStrings(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    array-length v2, v1

    sget-object v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->HOLDER_TEMPLATE_NAMES:[Ljava/lang/String;

    array-length v3, v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_filer:Lorg/apache/xmlbeans/Filer;

    instance-of v3, v2, Lorg/apache/xmlbeans/impl/util/FilerImpl;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    check-cast v2, Lorg/apache/xmlbeans/impl/util/FilerImpl;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/util/FilerImpl;->getRepackager()Lrepackage/Repackager;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v4

    :goto_1
    :try_start_0
    sget-object v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->class$org$apache$xmlbeans$impl$schema$SchemaTypeSystemImpl:Ljava/lang/Class;

    if-nez v3, :cond_3

    const-string v3, "org.apache.xmlbeans.impl.schema.SchemaTypeSystemImpl"

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->class$org$apache$xmlbeans$impl$schema$SchemaTypeSystemImpl:Ljava/lang/Class;

    :cond_3
    const-string v5, "TypeSystemHolder.template"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_5

    :try_start_1
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v6, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_filer:Lorg/apache/xmlbeans/Filer;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v8, 0x2e

    const/16 v9, 0x2f

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ".class"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lorg/apache/xmlbeans/Filer;->createBinaryFile(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v4

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v7, 0x1

    :goto_2
    if-ge v7, v6, :cond_4

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    goto :goto_6

    :pswitch_1
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v8

    :goto_3
    invoke-virtual {v0, v8}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_5

    :pswitch_2
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v8

    goto :goto_3

    :pswitch_3
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    :goto_4
    invoke-virtual {v0, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_5

    :pswitch_4
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    goto :goto_4

    :pswitch_5
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->repackageConstant(Ljava/lang/String;[Ljava/lang/String;Lrepackage/Repackager;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :goto_6
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unexpected constant type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_7
    :try_start_2
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    :catch_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    if-eqz v4, :cond_9

    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    goto :goto_a

    :catchall_0
    move-exception v0

    move-object v1, v4

    move-object v4, v3

    goto :goto_8

    :catch_2
    move-object v0, v4

    move-object v4, v3

    goto :goto_9

    :cond_5
    :try_start_5
    new-instance v0, Lorg/apache/xmlbeans/SchemaTypeLoaderException;

    const-string v1, "couldn\'t find resource: TypeSystemHolder.template"

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    const/16 v5, 0x9

    invoke-direct {v0, v1, v2, v4, v5}, Lorg/apache/xmlbeans/SchemaTypeLoaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_1
    move-exception v0

    move-object v1, v4

    :goto_8
    if-eqz v4, :cond_6

    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    :cond_6
    if-eqz v1, :cond_7

    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :catch_4
    :cond_7
    throw v0

    :catch_5
    move-object v0, v4

    :goto_9
    if-eqz v4, :cond_8

    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    :catch_6
    :cond_8
    if-eqz v0, :cond_9

    :try_start_9
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    :catch_7
    :cond_9
    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public saveModelGroup(Lorg/apache/xmlbeans/SchemaModelGroup;)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_localHandles:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->handleForModelGroup(Lorg/apache/xmlbeans/SchemaModelGroup;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;

    invoke-direct {v1, p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeModelGroupData(Lorg/apache/xmlbeans/SchemaModelGroup;)V

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeRealHeader(Ljava/lang/String;I)V

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeModelGroupData(Lorg/apache/xmlbeans/SchemaModelGroup;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeEnd()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This SchemaTypeSystem cannot be saved."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveModelGroups([Lorg/apache/xmlbeans/SchemaModelGroup;)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveModelGroup(Lorg/apache/xmlbeans/SchemaModelGroup;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This SchemaTypeSystem cannot be saved."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public savePointerFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;

    invoke-direct {v0, p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeRealHeader(Ljava/lang/String;I)V

    invoke-virtual {v0, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeEnd()V

    return-void
.end method

.method public savePointers()V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->globalElements()[Lorg/apache/xmlbeans/SchemaGlobalElement;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "schema"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->METADATA_PACKAGE_GEN:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "/element/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointersForComponents([Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->globalAttributes()[Lorg/apache/xmlbeans/SchemaGlobalAttribute;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->METADATA_PACKAGE_GEN:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "/attribute/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointersForComponents([Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->modelGroups()[Lorg/apache/xmlbeans/SchemaModelGroup;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->METADATA_PACKAGE_GEN:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "/modelgroup/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointersForComponents([Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->attributeGroups()[Lorg/apache/xmlbeans/SchemaAttributeGroup;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->METADATA_PACKAGE_GEN:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "/attributegroup/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointersForComponents([Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->globalTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->METADATA_PACKAGE_GEN:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "/type/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointersForComponents([Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->identityConstraints()[Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->METADATA_PACKAGE_GEN:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "/identityconstraint/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointersForComponents([Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_namespaces:Ljava/util/Set;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->METADATA_PACKAGE_GEN:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "/namespace/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointersForNamespaces(Ljava/util/Set;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_typeRefsByClassname:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->METADATA_PACKAGE_GEN:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "/javaname/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointersForClassnames(Ljava/util/Set;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->redefinedModelGroups()[Lorg/apache/xmlbeans/SchemaModelGroup;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->METADATA_PACKAGE_GEN:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "/redefinedmodelgroup/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointersForComponents([Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->redefinedAttributeGroups()[Lorg/apache/xmlbeans/SchemaAttributeGroup;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->METADATA_PACKAGE_GEN:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "/redefinedattributegroup/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointersForComponents([Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->redefinedGlobalTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->METADATA_PACKAGE_GEN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "/redefinedtype/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointersForComponents([Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)V

    return-void
.end method

.method public savePointersForClassnames(Ljava/util/Set;Ljava/lang/String;)V
    .locals 4

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointerFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public savePointersForComponents([Lorg/apache/xmlbeans/SchemaComponent;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v2, p1, v0

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaComponent;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->hexsafedir(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointerFile(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public savePointersForNamespaces(Ljava/util/Set;Ljava/lang/String;)V
    .locals 4

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v3, "xmlns"

    invoke-direct {v2, v0, v3}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->hexsafedir(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->savePointerFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public saveToDirectory(Ljava/io/File;)V
    .locals 7

    new-instance v6, Lorg/apache/xmlbeans/impl/util/FilerImpl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/util/FilerImpl;-><init>(Ljava/io/File;Ljava/io/File;Lrepackage/Repackager;ZZ)V

    invoke-virtual {p0, v6}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->save(Lorg/apache/xmlbeans/Filer;)V

    return-void
.end method

.method public saveType(Lorg/apache/xmlbeans/SchemaType;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_localHandles:Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$HandlePool;->handleForType(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;

    invoke-direct {v1, p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeTypeData(Lorg/apache/xmlbeans/SchemaType;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeRealHeader(Ljava/lang/String;I)V

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeTypeData(Lorg/apache/xmlbeans/SchemaType;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl$XsbReader;->writeEnd()V

    return-void
.end method

.method public saveTypesRecursively([Lorg/apache/xmlbeans/SchemaType;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getTypeSystem()Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveType(Lorg/apache/xmlbeans/SchemaType;)V

    aget-object v1, p1, v0

    invoke-interface {v1}, Lorg/apache/xmlbeans/SchemaType;->getAnonymousTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->saveTypesRecursively([Lorg/apache/xmlbeans/SchemaType;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setDependencies(Lorg/apache/xmlbeans/impl/schema/SchemaDependencies;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_deps:Lorg/apache/xmlbeans/impl/schema/SchemaDependencies;

    return-void
.end method

.method public setIncomplete(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_incomplete:Z

    return-void
.end method

.method public typeForClassname(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_typeRefsByClassname:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/SchemaType$Ref;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/SchemaType$Ref;->get()Lorg/apache/xmlbeans/SchemaType;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public typeForHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaType;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resolvedHandles:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_resolvedHandles:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlbeans/SchemaType;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public typeSystemForName(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->_name:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
