.class public Lorg/apache/xmlbeans/XmlOptionsBean;
.super Lorg/apache/xmlbeans/XmlOptions;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/XmlOptions;-><init>(Lorg/apache/xmlbeans/XmlOptions;)V

    return-void
.end method


# virtual methods
.method public getCharacterEncoding()Ljava/lang/String;
    .locals 1

    const-string v0, "CHARACTER_ENCODING"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCompileMdefNamespaces()Ljava/util/Set;
    .locals 1

    const-string v0, "COMPILE_MDEF_NAMESPACES"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public getCompileSubstituteNames()Ljava/util/Map;
    .locals 1

    const-string v0, "COMPILE_SUBSTITUTE_NAMES"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getDocumentSourceName()Ljava/lang/String;
    .locals 1

    const-string v0, "DOCUMENT_SOURCE_NAME"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDocumentType()Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    const-string v0, "DOCUMENT_TYPE"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    return-object v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    const-string v0, "ENTITY_RESOLVER"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xml/sax/EntityResolver;

    return-object v0
.end method

.method public getGenerateJavaVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "GENERATE_JAVA_VERSION"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLoadAdditionalNamespaces()Ljava/util/Map;
    .locals 1

    const-string v0, "LOAD_ADDITIONAL_NAMESPACES"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getLoadReplaceDocumentElement()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 1

    const-string v0, "LOAD_REPLACE_DOCUMENT_ELEMENT"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/javax/xml/namespace/QName;

    return-object v0
.end method

.method public getLoadSubstituteNamespaces()Ljava/util/Map;
    .locals 1

    const-string v0, "LOAD_SUBSTITUTE_NAMESPACES"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getSaveCDataEntityCountThreshold()Ljava/lang/Integer;
    .locals 1

    const-string v0, "SAVE_CDATA_ENTITY_COUNT_THRESHOLD"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getSaveCDataLengthThreshold()Ljava/lang/Integer;
    .locals 1

    const-string v0, "SAVE_CDATA_LENGTH_THRESHOLD"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getSaveFilterProcinst()Ljava/lang/String;
    .locals 1

    const-string v0, "SAVE_FILTER_PROCINST"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSaveImplicitNamespaces()Ljava/util/Map;
    .locals 1

    const-string v0, "SAVE_IMPLICIT_NAMESPACES"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getSavePrettyPrintIndent()Ljava/lang/Integer;
    .locals 1

    const-string v0, "SAVE_PRETTY_PRINT_INDENT"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getSavePrettyPrintOffset()Ljava/lang/Integer;
    .locals 1

    const-string v0, "SAVE_PRETTY_PRINT_OFFSET"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getSaveSubstituteCharacters()Lorg/apache/xmlbeans/XmlOptionCharEscapeMap;
    .locals 1

    const-string v0, "SAVE_SUBSTITUTE_CHARACTERS"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/XmlOptionCharEscapeMap;

    return-object v0
.end method

.method public getSaveSuggestedPrefixes()Ljava/util/Map;
    .locals 1

    const-string v0, "SAVE_SUGGESTED_PREFIXES"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getSaveSyntheticDocumentElement()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 1

    const-string v0, "SAVE_SYNTHETIC_DOCUMENT_ELEMENT"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/javax/xml/namespace/QName;

    return-object v0
.end method

.method public getXqueryCurrentNodeVar()Ljava/lang/String;
    .locals 1

    const-string v0, "XQUERY_CURRENT_NODE_VAR"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getXqueryVariables()Ljava/util/Map;
    .locals 1

    const-string v0, "XQUERY_VARIABLE_MAP"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public isCompileDownloadUrls()Z
    .locals 1

    const-string v0, "COMPILE_DOWNLOAD_URLS"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCompileNoAnnotations()Z
    .locals 1

    const-string v0, "COMPILE_NO_ANNOTATIONS"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCompileNoPvrRule()Z
    .locals 1

    const-string v0, "COMPILE_NO_PVR_RULE"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCompileNoUpaRule()Z
    .locals 1

    const-string v0, "COMPILE_NO_UPA_RULE"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isLoadLineNumbers()Z
    .locals 1

    const-string v0, "LOAD_LINE_NUMBERS"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isLoadMessageDigest()Z
    .locals 1

    const-string v0, "LOAD_MESSAGE_DIGEST"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isLoadStripComments()Z
    .locals 1

    const-string v0, "LOAD_STRIP_COMMENTS"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isLoadStripProcinsts()Z
    .locals 1

    const-string v0, "LOAD_STRIP_PROCINSTS"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isLoadTrimTextBuffer()Z
    .locals 1

    const-string v0, "LOAD_TRIM_TEXT_BUFFER"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isLoadUseDefaultResolver()Z
    .locals 1

    const-string v0, "LOAD_USE_DEFAULT_RESOLVER"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSaveAggressiveNamespaces()Z
    .locals 1

    const-string v0, "SAVE_AGGRESSIVE_NAMESPACES"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSaveInner()Z
    .locals 1

    const-string v0, "SAVE_INNER"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSaveNamespacesFirst()Z
    .locals 1

    const-string v0, "SAVE_NAMESPACES_FIRST"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSaveNoXmlDecl()Z
    .locals 1

    const-string v0, "SAVE_NO_XML_DECL"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSaveOuter()Z
    .locals 1

    const-string v0, "SAVE_OUTER"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSavePrettyPrint()Z
    .locals 1

    const-string v0, "SAVE_PRETTY_PRINT"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSaveSaxNoNSDeclsInAttributes()Z
    .locals 1

    const-string v0, "SAVE_SAX_NO_NSDECLS_IN_ATTRIBUTES"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSaveUseOpenFrag()Z
    .locals 1

    const-string v0, "SAVE_USE_OPEN_FRAGMENT"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSetLoadStripWhitespace()Z
    .locals 1

    const-string v0, "LOAD_STRIP_WHITESPACE"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isUnsynchronized()Z
    .locals 1

    const-string v0, "UNSYNCHRONIZED"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isUseDefaultNamespace()Z
    .locals 1

    const-string v0, "SAVE_USE_DEFAULT_NAMESPACE"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isValidateOnSet()Z
    .locals 1

    const-string v0, "VALIDATE_ON_SET"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isValidateStrict()Z
    .locals 1

    const-string v0, "VALIDATE_STRICT"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isValidateTreatLaxAsSkip()Z
    .locals 1

    const-string v0, "VALIDATE_TREAT_LAX_AS_SKIP"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setCompileDownloadUrls(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0}, Lorg/apache/xmlbeans/XmlOptions;->setCompileDownloadUrls()Lorg/apache/xmlbeans/XmlOptions;

    goto :goto_0

    :cond_0
    const-string p1, "COMPILE_DOWNLOAD_URLS"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/XmlOptions;->remove(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setCompileNoAnnotations(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0}, Lorg/apache/xmlbeans/XmlOptions;->setCompileNoAnnotations()Lorg/apache/xmlbeans/XmlOptions;

    goto :goto_0

    :cond_0
    const-string p1, "COMPILE_NO_ANNOTATIONS"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/XmlOptions;->remove(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setCompileNoPvrRule(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0}, Lorg/apache/xmlbeans/XmlOptions;->setCompileNoPvrRule()Lorg/apache/xmlbeans/XmlOptions;

    goto :goto_0

    :cond_0
    const-string p1, "COMPILE_NO_PVR_RULE"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/XmlOptions;->remove(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setCompileNoUpaRule(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0}, Lorg/apache/xmlbeans/XmlOptions;->setCompileNoUpaRule()Lorg/apache/xmlbeans/XmlOptions;

    goto :goto_0

    :cond_0
    const-string p1, "COMPILE_NO_UPA_RULE"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/XmlOptions;->remove(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setLoadLineNumbers(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0}, Lorg/apache/xmlbeans/XmlOptions;->setLoadLineNumbers()Lorg/apache/xmlbeans/XmlOptions;

    goto :goto_0

    :cond_0
    const-string p1, "LOAD_LINE_NUMBERS"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/XmlOptions;->remove(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setLoadMessageDigest(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0}, Lorg/apache/xmlbeans/XmlOptions;->setLoadMessageDigest()Lorg/apache/xmlbeans/XmlOptions;

    goto :goto_0

    :cond_0
    const-string p1, "LOAD_MESSAGE_DIGEST"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/XmlOptions;->remove(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setLoadStripComments(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0}, Lorg/apache/xmlbeans/XmlOptions;->setLoadStripComments()Lorg/apache/xmlbeans/XmlOptions;

    goto :goto_0

    :cond_0
    const-string p1, "LOAD_STRIP_COMMENTS"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/XmlOptions;->remove(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setLoadStripProcinsts(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0}, Lorg/apache/xmlbeans/XmlOptions;->setLoadStripProcinsts()Lorg/apache/xmlbeans/XmlOptions;

    goto :goto_0

    :cond_0
    const-string p1, "LOAD_STRIP_PROCINSTS"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/XmlOptions;->remove(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setLoadStripWhitespace(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0}, Lorg/apache/xmlbeans/XmlOptions;->setLoadStripWhitespace()Lorg/apache/xmlbeans/XmlOptions;

    goto :goto_0

    :cond_0
    const-string p1, "LOAD_STRIP_WHITESPACE"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/XmlOptions;->remove(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setLoadTrimTextBuffer(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0}, Lorg/apache/xmlbeans/XmlOptions;->setLoadTrimTextBuffer()Lorg/apache/xmlbeans/XmlOptions;

    goto :goto_0

    :cond_0
    const-string p1, "LOAD_TRIM_TEXT_BUFFER"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/XmlOptions;->remove(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setLoadUseDefaultResolver(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0}, Lorg/apache/xmlbeans/XmlOptions;->setLoadUseDefaultResolver()Lorg/apache/xmlbeans/XmlOptions;

    goto :goto_0

    :cond_0
    const-string p1, "LOAD_USE_DEFAULT_RESOLVER"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/XmlOptions;->remove(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setSaveAggressiveNamespaces(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0}, Lorg/apache/xmlbeans/XmlOptions;->setSaveAggressiveNamespaces()Lorg/apache/xmlbeans/XmlOptions;

    goto :goto_0

    :cond_0
    const-string p1, "SAVE_AGGRESSIVE_NAMESPACES"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/XmlOptions;->remove(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setSaveInner(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0}, Lorg/apache/xmlbeans/XmlOptions;->setSaveInner()Lorg/apache/xmlbeans/XmlOptions;

    goto :goto_0

    :cond_0
    const-string p1, "SAVE_INNER"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/XmlOptions;->remove(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setSaveNamespacesFirst(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0}, Lorg/apache/xmlbeans/XmlOptions;->setSaveNamespacesFirst()Lorg/apache/xmlbeans/XmlOptions;

    goto :goto_0

    :cond_0
    const-string p1, "SAVE_NAMESPACES_FIRST"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/XmlOptions;->remove(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setSaveNoXmlDecl(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0}, Lorg/apache/xmlbeans/XmlOptions;->setSaveNoXmlDecl()Lorg/apache/xmlbeans/XmlOptions;

    goto :goto_0

    :cond_0
    const-string p1, "SAVE_NO_XML_DECL"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/XmlOptions;->remove(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setSaveOuter(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0}, Lorg/apache/xmlbeans/XmlOptions;->setSaveOuter()Lorg/apache/xmlbeans/XmlOptions;

    goto :goto_0

    :cond_0
    const-string p1, "SAVE_OUTER"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/XmlOptions;->remove(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setSavePrettyPrint(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0}, Lorg/apache/xmlbeans/XmlOptions;->setSavePrettyPrint()Lorg/apache/xmlbeans/XmlOptions;

    goto :goto_0

    :cond_0
    const-string p1, "SAVE_PRETTY_PRINT"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/XmlOptions;->remove(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setSaveSaxNoNSDeclsInAttributes(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0}, Lorg/apache/xmlbeans/XmlOptions;->setSaveSaxNoNSDeclsInAttributes()Lorg/apache/xmlbeans/XmlOptions;

    goto :goto_0

    :cond_0
    const-string p1, "SAVE_SAX_NO_NSDECLS_IN_ATTRIBUTES"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/XmlOptions;->remove(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setSaveUseOpenFrag(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0}, Lorg/apache/xmlbeans/XmlOptions;->setSaveUseOpenFrag()Lorg/apache/xmlbeans/XmlOptions;

    goto :goto_0

    :cond_0
    const-string p1, "SAVE_USE_OPEN_FRAGMENT"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/XmlOptions;->remove(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setUnsynchronized(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0}, Lorg/apache/xmlbeans/XmlOptions;->setUnsynchronized()Lorg/apache/xmlbeans/XmlOptions;

    goto :goto_0

    :cond_0
    const-string p1, "UNSYNCHRONIZED"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/XmlOptions;->remove(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setUseDefaultNamespace(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0}, Lorg/apache/xmlbeans/XmlOptions;->setUseDefaultNamespace()Lorg/apache/xmlbeans/XmlOptions;

    goto :goto_0

    :cond_0
    const-string p1, "SAVE_USE_DEFAULT_NAMESPACE"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/XmlOptions;->remove(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setValidateOnSet(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0}, Lorg/apache/xmlbeans/XmlOptions;->setValidateOnSet()Lorg/apache/xmlbeans/XmlOptions;

    goto :goto_0

    :cond_0
    const-string p1, "VALIDATE_ON_SET"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/XmlOptions;->remove(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setValidateStrict(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0}, Lorg/apache/xmlbeans/XmlOptions;->setValidateStrict()Lorg/apache/xmlbeans/XmlOptions;

    goto :goto_0

    :cond_0
    const-string p1, "VALIDATE_STRICT"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/XmlOptions;->remove(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setValidateTreatLaxAsSkip(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0}, Lorg/apache/xmlbeans/XmlOptions;->setValidateTreatLaxAsSkip()Lorg/apache/xmlbeans/XmlOptions;

    goto :goto_0

    :cond_0
    const-string p1, "VALIDATE_TREAT_LAX_AS_SKIP"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/XmlOptions;->remove(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
