.class public Lorg/apache/xmlbeans/XmlOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BASE_URI:Ljava/lang/String; = "BASE_URI"

.field public static final CHARACTER_ENCODING:Ljava/lang/String; = "CHARACTER_ENCODING"

.field public static final COMPILE_DOWNLOAD_URLS:Ljava/lang/String; = "COMPILE_DOWNLOAD_URLS"

.field public static final COMPILE_MDEF_NAMESPACES:Ljava/lang/String; = "COMPILE_MDEF_NAMESPACES"

.field public static final COMPILE_NO_ANNOTATIONS:Ljava/lang/String; = "COMPILE_NO_ANNOTATIONS"

.field public static final COMPILE_NO_PVR_RULE:Ljava/lang/String; = "COMPILE_NO_PVR_RULE"

.field public static final COMPILE_NO_UPA_RULE:Ljava/lang/String; = "COMPILE_NO_UPA_RULE"

.field public static final COMPILE_NO_VALIDATION:Ljava/lang/String; = "COMPILE_NO_VALIDATION"

.field public static final COMPILE_SUBSTITUTE_NAMES:Ljava/lang/String; = "COMPILE_SUBSTITUTE_NAMES"

.field public static final COPY_USE_NEW_SYNC_DOMAIN:Ljava/lang/String; = "COPY_USE_NEW_LOCALE"

.field public static final DOCUMENT_SOURCE_NAME:Ljava/lang/String; = "DOCUMENT_SOURCE_NAME"

.field public static final DOCUMENT_TYPE:Ljava/lang/String; = "DOCUMENT_TYPE"

.field private static final EMPTY_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

.field public static final ENTITY_RESOLVER:Ljava/lang/String; = "ENTITY_RESOLVER"

.field public static final ERROR_LISTENER:Ljava/lang/String; = "ERROR_LISTENER"

.field public static final GENERATE_JAVA_14:Ljava/lang/String; = "1.4"

.field public static final GENERATE_JAVA_15:Ljava/lang/String; = "1.5"

.field public static final GENERATE_JAVA_VERSION:Ljava/lang/String; = "GENERATE_JAVA_VERSION"

.field public static final LOAD_ADDITIONAL_NAMESPACES:Ljava/lang/String; = "LOAD_ADDITIONAL_NAMESPACES"

.field public static final LOAD_ENTITY_BYTES_LIMIT:Ljava/lang/String; = "LOAD_ENTITY_BYTES_LIMIT"

.field public static final LOAD_LINE_NUMBERS:Ljava/lang/String; = "LOAD_LINE_NUMBERS"

.field public static final LOAD_LINE_NUMBERS_END_ELEMENT:Ljava/lang/String; = "LOAD_LINE_NUMBERS_END_ELEMENT"

.field public static final LOAD_MESSAGE_DIGEST:Ljava/lang/String; = "LOAD_MESSAGE_DIGEST"

.field public static final LOAD_REPLACE_DOCUMENT_ELEMENT:Ljava/lang/String; = "LOAD_REPLACE_DOCUMENT_ELEMENT"

.field public static final LOAD_SAVE_CDATA_BOOKMARKS:Ljava/lang/String; = "LOAD_SAVE_CDATA_BOOKMARKS"

.field public static final LOAD_STRIP_COMMENTS:Ljava/lang/String; = "LOAD_STRIP_COMMENTS"

.field public static final LOAD_STRIP_PROCINSTS:Ljava/lang/String; = "LOAD_STRIP_PROCINSTS"

.field public static final LOAD_STRIP_WHITESPACE:Ljava/lang/String; = "LOAD_STRIP_WHITESPACE"

.field public static final LOAD_SUBSTITUTE_NAMESPACES:Ljava/lang/String; = "LOAD_SUBSTITUTE_NAMESPACES"

.field public static final LOAD_TRIM_TEXT_BUFFER:Ljava/lang/String; = "LOAD_TRIM_TEXT_BUFFER"

.field public static final LOAD_USE_DEFAULT_RESOLVER:Ljava/lang/String; = "LOAD_USE_DEFAULT_RESOLVER"

.field public static final LOAD_USE_XMLREADER:Ljava/lang/String; = "LOAD_USE_XMLREADER"

.field public static final SAVE_AGGRESSIVE_NAMESPACES:Ljava/lang/String; = "SAVE_AGGRESSIVE_NAMESPACES"

.field public static final SAVE_CDATA_ENTITY_COUNT_THRESHOLD:Ljava/lang/String; = "SAVE_CDATA_ENTITY_COUNT_THRESHOLD"

.field public static final SAVE_CDATA_LENGTH_THRESHOLD:Ljava/lang/String; = "SAVE_CDATA_LENGTH_THRESHOLD"

.field public static final SAVE_FILTER_PROCINST:Ljava/lang/String; = "SAVE_FILTER_PROCINST"

.field public static final SAVE_IMPLICIT_NAMESPACES:Ljava/lang/String; = "SAVE_IMPLICIT_NAMESPACES"

.field public static final SAVE_INNER:Ljava/lang/String; = "SAVE_INNER"

.field public static final SAVE_NAMESPACES_FIRST:Ljava/lang/String; = "SAVE_NAMESPACES_FIRST"

.field public static final SAVE_NO_XML_DECL:Ljava/lang/String; = "SAVE_NO_XML_DECL"

.field public static final SAVE_OPTIMIZE_FOR_SPEED:Ljava/lang/String; = "SAVE_OPTIMIZE_FOR_SPEED"

.field public static final SAVE_OUTER:Ljava/lang/String; = "SAVE_OUTER"

.field public static final SAVE_PRETTY_PRINT:Ljava/lang/String; = "SAVE_PRETTY_PRINT"

.field public static final SAVE_PRETTY_PRINT_INDENT:Ljava/lang/String; = "SAVE_PRETTY_PRINT_INDENT"

.field public static final SAVE_PRETTY_PRINT_OFFSET:Ljava/lang/String; = "SAVE_PRETTY_PRINT_OFFSET"

.field public static final SAVE_SAX_NO_NSDECLS_IN_ATTRIBUTES:Ljava/lang/String; = "SAVE_SAX_NO_NSDECLS_IN_ATTRIBUTES"

.field public static final SAVE_SUBSTITUTE_CHARACTERS:Ljava/lang/String; = "SAVE_SUBSTITUTE_CHARACTERS"

.field public static final SAVE_SUGGESTED_PREFIXES:Ljava/lang/String; = "SAVE_SUGGESTED_PREFIXES"

.field public static final SAVE_SYNTHETIC_DOCUMENT_ELEMENT:Ljava/lang/String; = "SAVE_SYNTHETIC_DOCUMENT_ELEMENT"

.field public static final SAVE_USE_DEFAULT_NAMESPACE:Ljava/lang/String; = "SAVE_USE_DEFAULT_NAMESPACE"

.field public static final SAVE_USE_OPEN_FRAGMENT:Ljava/lang/String; = "SAVE_USE_OPEN_FRAGMENT"

.field public static final SCHEMA_CODE_PRINTER:Ljava/lang/String; = "SCHEMA_CODE_PRINTER"

.field public static final UNSYNCHRONIZED:Ljava/lang/String; = "UNSYNCHRONIZED"

.field public static final VALIDATE_ON_SET:Ljava/lang/String; = "VALIDATE_ON_SET"

.field public static final VALIDATE_STRICT:Ljava/lang/String; = "VALIDATE_STRICT"

.field public static final VALIDATE_TEXT_ONLY:Ljava/lang/String; = "VALIDATE_TEXT_ONLY"

.field public static final VALIDATE_TREAT_LAX_AS_SKIP:Ljava/lang/String; = "VALIDATE_TREAT_LAX_AS_SKIP"

.field public static final XQUERY_CURRENT_NODE_VAR:Ljava/lang/String; = "XQUERY_CURRENT_NODE_VAR"

.field public static final XQUERY_VARIABLE_MAP:Ljava/lang/String; = "XQUERY_VARIABLE_MAP"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _map:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/XmlOptions;->EMPTY_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    iget-object v1, v0, Lorg/apache/xmlbeans/XmlOptions;->_map:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xmlbeans/XmlOptions;->_map:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/XmlOptions;->_map:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/XmlOptions;->_map:Ljava/util/Map;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/apache/xmlbeans/XmlOptions;->_map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static hasOption(Lorg/apache/xmlbeans/XmlOptions;Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static maskNull(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/xmlbeans/XmlOptions;->EMPTY_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    :cond_0
    return-object p0
.end method

.method public static safeGet(Lorg/apache/xmlbeans/XmlOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private set(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    return-object p1
.end method

.method private set(Ljava/lang/Object;I)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    return-object p1
.end method

.method private set(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/XmlOptions;->_map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/XmlOptions;->_map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hasOption(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/XmlOptions;->_map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public put(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/XmlOptions;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public put(Ljava/lang/Object;I)V
    .locals 1

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/XmlOptions;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/XmlOptions;->_map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/XmlOptions;->_map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setBaseURI(Ljava/net/URI;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "BASE_URI"

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    return-object p1
.end method

.method public setCharacterEncoding(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "CHARACTER_ENCODING"

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    return-object p1
.end method

.method public setCompileDownloadUrls()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "COMPILE_DOWNLOAD_URLS"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v0

    return-object v0
.end method

.method public setCompileMdefNamespaces(Ljava/util/Set;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "COMPILE_MDEF_NAMESPACES"

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    return-object p1
.end method

.method public setCompileNoAnnotations()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "COMPILE_NO_ANNOTATIONS"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v0

    return-object v0
.end method

.method public setCompileNoPvrRule()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "COMPILE_NO_PVR_RULE"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v0

    return-object v0
.end method

.method public setCompileNoUpaRule()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "COMPILE_NO_UPA_RULE"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v0

    return-object v0
.end method

.method public setCompileNoValidation()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "COMPILE_NO_VALIDATION"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v0

    return-object v0
.end method

.method public setCompileSubstituteNames(Ljava/util/Map;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "COMPILE_SUBSTITUTE_NAMES"

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    return-object p1
.end method

.method public setCopyUseNewSynchronizationDomain(Z)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    const-string v0, "COPY_USE_NEW_LOCALE"

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    return-object p1
.end method

.method public setDocumentSourceName(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "DOCUMENT_SOURCE_NAME"

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    return-object p1
.end method

.method public setDocumentType(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "DOCUMENT_TYPE"

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    return-object p1
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "ENTITY_RESOLVER"

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    return-object p1
.end method

.method public setErrorListener(Ljava/util/Collection;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "ERROR_LISTENER"

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    return-object p1
.end method

.method public setGenerateJavaVersion(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "GENERATE_JAVA_VERSION"

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    return-object p1
.end method

.method public setLoadAdditionalNamespaces(Ljava/util/Map;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "LOAD_ADDITIONAL_NAMESPACES"

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    return-object p1
.end method

.method public setLoadEntityBytesLimit(I)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "LOAD_ENTITY_BYTES_LIMIT"

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;I)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    return-object p1
.end method

.method public setLoadLineNumbers()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "LOAD_LINE_NUMBERS"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v0

    return-object v0
.end method

.method public setLoadLineNumbers(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/XmlOptions;->setLoadLineNumbers()Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v0

    invoke-direct {v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    return-object p1
.end method

.method public setLoadMessageDigest()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "LOAD_MESSAGE_DIGEST"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v0

    return-object v0
.end method

.method public setLoadReplaceDocumentElement(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "LOAD_REPLACE_DOCUMENT_ELEMENT"

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    return-object p1
.end method

.method public setLoadStripComments()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "LOAD_STRIP_COMMENTS"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v0

    return-object v0
.end method

.method public setLoadStripProcinsts()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "LOAD_STRIP_PROCINSTS"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v0

    return-object v0
.end method

.method public setLoadStripWhitespace()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "LOAD_STRIP_WHITESPACE"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v0

    return-object v0
.end method

.method public setLoadSubstituteNamespaces(Ljava/util/Map;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "LOAD_SUBSTITUTE_NAMESPACES"

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    return-object p1
.end method

.method public setLoadTrimTextBuffer()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "LOAD_TRIM_TEXT_BUFFER"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v0

    return-object v0
.end method

.method public setLoadUseDefaultResolver()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "LOAD_USE_DEFAULT_RESOLVER"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v0

    return-object v0
.end method

.method public setLoadUseXMLReader(Lorg/xml/sax/XMLReader;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "LOAD_USE_XMLREADER"

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    return-object p1
.end method

.method public setSaveAggresiveNamespaces()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/XmlOptions;->setSaveAggressiveNamespaces()Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v0

    return-object v0
.end method

.method public setSaveAggressiveNamespaces()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "SAVE_AGGRESSIVE_NAMESPACES"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v0

    return-object v0
.end method

.method public setSaveCDataEntityCountThreshold(I)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "SAVE_CDATA_ENTITY_COUNT_THRESHOLD"

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;I)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    return-object p1
.end method

.method public setSaveCDataLengthThreshold(I)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "SAVE_CDATA_LENGTH_THRESHOLD"

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;I)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    return-object p1
.end method

.method public setSaveFilterProcinst(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "SAVE_FILTER_PROCINST"

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    return-object p1
.end method

.method public setSaveImplicitNamespaces(Ljava/util/Map;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "SAVE_IMPLICIT_NAMESPACES"

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    return-object p1
.end method

.method public setSaveInner()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "SAVE_INNER"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v0

    return-object v0
.end method

.method public setSaveNamespacesFirst()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "SAVE_NAMESPACES_FIRST"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v0

    return-object v0
.end method

.method public setSaveNoXmlDecl()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "SAVE_NO_XML_DECL"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v0

    return-object v0
.end method

.method public setSaveOuter()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "SAVE_OUTER"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v0

    return-object v0
.end method

.method public setSavePrettyPrint()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "SAVE_PRETTY_PRINT"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v0

    return-object v0
.end method

.method public setSavePrettyPrintIndent(I)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "SAVE_PRETTY_PRINT_INDENT"

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;I)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    return-object p1
.end method

.method public setSavePrettyPrintOffset(I)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "SAVE_PRETTY_PRINT_OFFSET"

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;I)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    return-object p1
.end method

.method public setSaveSaxNoNSDeclsInAttributes()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "SAVE_SAX_NO_NSDECLS_IN_ATTRIBUTES"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v0

    return-object v0
.end method

.method public setSaveSubstituteCharacters(Lorg/apache/xmlbeans/XmlOptionCharEscapeMap;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "SAVE_SUBSTITUTE_CHARACTERS"

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    return-object p1
.end method

.method public setSaveSuggestedPrefixes(Ljava/util/Map;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "SAVE_SUGGESTED_PREFIXES"

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    return-object p1
.end method

.method public setSaveSyntheticDocumentElement(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "SAVE_SYNTHETIC_DOCUMENT_ELEMENT"

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    return-object p1
.end method

.method public setSaveUseOpenFrag()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "SAVE_USE_OPEN_FRAGMENT"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v0

    return-object v0
.end method

.method public setSchemaCodePrinter(Lorg/apache/xmlbeans/SchemaCodePrinter;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "SCHEMA_CODE_PRINTER"

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    return-object p1
.end method

.method public setUnsynchronized()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "UNSYNCHRONIZED"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v0

    return-object v0
.end method

.method public setUseCDataBookmarks()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "LOAD_SAVE_CDATA_BOOKMARKS"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v0

    return-object v0
.end method

.method public setUseDefaultNamespace()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "SAVE_USE_DEFAULT_NAMESPACE"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v0

    return-object v0
.end method

.method public setValidateOnSet()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "VALIDATE_ON_SET"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v0

    return-object v0
.end method

.method public setValidateStrict()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "VALIDATE_STRICT"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v0

    return-object v0
.end method

.method public setValidateTreatLaxAsSkip()Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "VALIDATE_TREAT_LAX_AS_SKIP"

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v0

    return-object v0
.end method

.method public setXqueryCurrentNodeVar(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "XQUERY_CURRENT_NODE_VAR"

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    return-object p1
.end method

.method public setXqueryVariables(Ljava/util/Map;)Lorg/apache/xmlbeans/XmlOptions;
    .locals 1

    const-string v0, "XQUERY_VARIABLE_MAP"

    invoke-direct {p0, v0, p1}, Lorg/apache/xmlbeans/XmlOptions;->set(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    return-object p1
.end method
