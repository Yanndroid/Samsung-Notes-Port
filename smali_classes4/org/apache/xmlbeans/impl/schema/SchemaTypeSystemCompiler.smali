.class public Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemCompiler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemCompiler$Parameters;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compile(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemCompiler$Parameters;)Lorg/apache/xmlbeans/SchemaTypeSystem;
    .locals 11

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemCompiler$Parameters;->getExistingTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemCompiler$Parameters;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemCompiler$Parameters;->getSchemas()[Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemCompiler$Parameters;->getConfig()Lorg/apache/xmlbeans/BindingConfig;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemCompiler$Parameters;->getLinkTo()Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemCompiler$Parameters;->getOptions()Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemCompiler$Parameters;->getErrorListener()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemCompiler$Parameters;->isJavaize()Z

    move-result v7

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemCompiler$Parameters;->getBaseURI()Ljava/net/URI;

    move-result-object v8

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemCompiler$Parameters;->getSourcesToCopyMap()Ljava/util/Map;

    move-result-object v9

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemCompiler$Parameters;->getSchemasDir()Ljava/io/File;

    move-result-object v10

    invoke-static/range {v0 .. v10}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemCompiler;->compileImpl(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;[Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;Lorg/apache/xmlbeans/BindingConfig;Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;Ljava/util/Collection;ZLjava/net/URI;Ljava/util/Map;Ljava/io/File;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object p0

    return-object p0
.end method

.method public static compile(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaTypeSystem;[Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/BindingConfig;Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/Filer;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;
    .locals 15

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static/range {p6 .. p6}, Lorg/apache/xmlbeans/XmlOptions;->maskNull(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v13

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    move v4, v3

    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_2

    aget-object v5, v0, v4

    instance-of v5, v5, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    if-eqz v5, :cond_0

    aget-object v5, v0, v4

    :goto_1
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    aget-object v5, v0, v4

    instance-of v5, v5, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;

    if-eqz v5, :cond_1

    aget-object v5, v0, v4

    check-cast v5, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;

    invoke-interface {v5}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v5

    if-eqz v5, :cond_1

    aget-object v5, v0, v4

    check-cast v5, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;

    invoke-interface {v5}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v5

    goto :goto_1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/apache/xmlbeans/XmlException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ": The "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, "th supplied input is not a schema document: its type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v0, v0, v4

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlObject;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/xmlbeans/XmlException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "ERROR_LISTENER"

    invoke-virtual {v13, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    new-instance v14, Lorg/apache/xmlbeans/impl/common/XmlErrorWatcher;

    invoke-direct {v14, v0}, Lorg/apache/xmlbeans/impl/common/XmlErrorWatcher;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-object v4, v0

    check-cast v4, [Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    move v9, v0

    goto :goto_3

    :cond_3
    move v9, v3

    :goto_3
    const-string v0, "BASE_URI"

    invoke-virtual {v13, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/net/URI;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p1

    move-object v3, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v7, v13

    move-object v8, v14

    invoke-static/range {v2 .. v12}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemCompiler;->compileImpl(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;[Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;Lorg/apache/xmlbeans/BindingConfig;Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;Ljava/util/Collection;ZLjava/net/URI;Ljava/util/Map;Ljava/io/File;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object v0

    invoke-virtual {v14}, Lorg/apache/xmlbeans/impl/common/XmlErrorWatcher;->hasError()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    new-instance v0, Lorg/apache/xmlbeans/XmlException;

    invoke-virtual {v14}, Lorg/apache/xmlbeans/impl/common/XmlErrorWatcher;->firstError()Lorg/apache/xmlbeans/XmlError;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/XmlException;-><init>(Lorg/apache/xmlbeans/XmlError;)V

    throw v0

    :cond_5
    :goto_4
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->isIncomplete()Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz v1, :cond_6

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->save(Lorg/apache/xmlbeans/Filer;)V

    invoke-static {v0, v1, v13}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemCompiler;->generateTypes(Lorg/apache/xmlbeans/SchemaTypeSystem;Lorg/apache/xmlbeans/Filer;Lorg/apache/xmlbeans/XmlOptions;)Z

    :cond_6
    return-object v0
.end method

.method public static compileImpl(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;[Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;Lorg/apache/xmlbeans/BindingConfig;Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;Ljava/util/Collection;ZLjava/net/URI;Ljava/util/Map;Ljava/io/File;)Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;
    .locals 5

    if-eqz p4, :cond_d

    new-instance v0, Lorg/apache/xmlbeans/impl/common/XmlErrorWatcher;

    invoke-direct {v0, p6}, Lorg/apache/xmlbeans/impl/common/XmlErrorWatcher;-><init>(Ljava/util/Collection;)V

    const/4 p6, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, p6

    :goto_0
    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->start()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v3

    if-eqz p5, :cond_2

    const-string v4, "COMPILE_NO_VALIDATION"

    invoke-virtual {p5, v4}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, p6

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v1

    :goto_2
    :try_start_0
    invoke-virtual {v3, v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->setErrorListener(Ljava/util/Collection;)V

    invoke-virtual {v3, p3}, Lorg/apache/xmlbeans/impl/schema/StscState;->setBindingConfig(Lorg/apache/xmlbeans/BindingConfig;)V

    invoke-virtual {v3, p5}, Lorg/apache/xmlbeans/impl/schema/StscState;->setOptions(Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-virtual {v3, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->setGivenTypeSystemName(Ljava/lang/String;)V

    invoke-virtual {v3, p10}, Lorg/apache/xmlbeans/impl/schema/StscState;->setSchemasDir(Ljava/io/File;)V

    if-eqz p8, :cond_3

    invoke-virtual {v3, p8}, Lorg/apache/xmlbeans/impl/schema/StscState;->setBaseUri(Ljava/net/URI;)V

    :cond_3
    const/4 p1, 0x2

    new-array p1, p1, [Lorg/apache/xmlbeans/SchemaTypeLoader;

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/BuiltinSchemaTypeSystem;->get()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object p3

    aput-object p3, p1, p6

    aput-object p4, p1, v1

    const/4 p3, 0x0

    invoke-static {p1, p3, p3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeLoaderImpl;->build([Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/ResourceLoader;Ljava/lang/ClassLoader;)Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->setImportingTypeLoader(Lorg/apache/xmlbeans/SchemaTypeLoader;)V

    new-instance p1, Ljava/util/ArrayList;

    array-length p4, p2

    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v4, :cond_6

    new-instance p4, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {p4}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-virtual {p4, v0}, Lorg/apache/xmlbeans/XmlOptions;->setErrorListener(Ljava/util/Collection;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p4

    const-string p8, "VALIDATE_TREAT_LAX_AS_SKIP"

    invoke-virtual {p5, p8}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_4

    invoke-virtual {p4}, Lorg/apache/xmlbeans/XmlOptions;->setValidateTreatLaxAsSkip()Lorg/apache/xmlbeans/XmlOptions;

    :cond_4
    :goto_3
    array-length p5, p2

    if-ge p6, p5, :cond_7

    aget-object p5, p2, p6

    invoke-interface {p5, p4}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->validate(Lorg/apache/xmlbeans/XmlOptions;)Z

    move-result p5

    if-eqz p5, :cond_5

    aget-object p5, p2, p6

    invoke-interface {p1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 p6, p6, 0x1

    goto :goto_3

    :cond_6
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    check-cast p1, [Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    if-eqz v2, :cond_8

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    move-object p4, p0

    check-cast p4, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-static {p4, p1, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemCompiler;->getSchemasToRecompile(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;[Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;Ljava/util/Set;)[Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object p1

    move-object p4, p0

    check-cast p4, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-virtual {v3, p4, p2}, Lorg/apache/xmlbeans/impl/schema/StscState;->initFromTypeSystem(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;Ljava/util/Set;)V

    goto :goto_4

    :cond_8
    new-instance p2, Lorg/apache/xmlbeans/impl/schema/SchemaDependencies;

    invoke-direct {p2}, Lorg/apache/xmlbeans/impl/schema/SchemaDependencies;-><init>()V

    invoke-virtual {v3, p2}, Lorg/apache/xmlbeans/impl/schema/StscState;->setDependencies(Lorg/apache/xmlbeans/impl/schema/SchemaDependencies;)V

    :goto_4
    invoke-static {p1, v2}, Lorg/apache/xmlbeans/impl/schema/StscImporter;->resolveImportsAndIncludes([Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;Z)[Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/schema/StscTranslator;->addAllDefinitions([Lorg/apache/xmlbeans/impl/schema/StscImporter$SchemaToProcess;)V

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscResolver;->resolveAll()V

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscChecker;->checkAll()V

    invoke-static {p7}, Lorg/apache/xmlbeans/impl/schema/StscJavaizer;->javaizeAllTypes(Z)V

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->sts()Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->loadFromStscState(Lorg/apache/xmlbeans/impl/schema/StscState;)V

    if-eqz p9, :cond_9

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/StscState;->sourceCopyMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p9, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_9
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/common/XmlErrorWatcher;->hasError()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/StscState;->allowPartial()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/StscState;->getRecovered()I

    move-result p1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/common/XmlErrorWatcher;->size()I

    move-result p2

    if-ne p1, p2, :cond_a

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/StscState;->sts()Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->setIncomplete(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :cond_a
    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->end()V

    return-object p3

    :cond_b
    :goto_5
    if-eqz p0, :cond_c

    :try_start_1
    check-cast p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->setIncomplete(Z)V

    :cond_c
    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/StscState;->sts()Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->end()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->end()V

    throw p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must supply linkTo"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static generateTypes(Lorg/apache/xmlbeans/SchemaTypeSystem;Lorg/apache/xmlbeans/Filer;Lorg/apache/xmlbeans/XmlOptions;)Z
    .locals 7

    const-string v0, "IO Error "

    instance-of v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->isIncomplete()Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaTypeSystem;->globalTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaTypeSystem;->documentTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaTypeSystem;->attributeTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v3, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_0
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaType;->isBuiltinType()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :try_start_0
    invoke-interface {p1, v4}, Lorg/apache/xmlbeans/Filer;->createSourceFile(Ljava/lang/String;)Ljava/io/Writer;

    move-result-object v5

    invoke-static {v5, v3, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printType(Ljava/io/Writer;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_5

    :try_start_1
    invoke-virtual {v5}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception v1

    :try_start_2
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_4

    :try_start_3
    invoke-virtual {v5}, Ljava/io/Writer;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :cond_4
    move v1, v2

    :catch_3
    :cond_5
    :goto_1
    :try_start_4
    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaType;->getFullJavaImplName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Lorg/apache/xmlbeans/Filer;->createSourceFile(Ljava/lang/String;)Ljava/io/Writer;

    move-result-object v5

    invoke-static {v5, v3, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeCodePrinter;->printTypeImpl(Ljava/io/Writer;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v5, :cond_1

    :try_start_5
    invoke-virtual {v5}, Ljava/io/Writer;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_4
    move-exception v1

    :try_start_6
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v5, :cond_6

    :try_start_7
    invoke-virtual {v5}, Ljava/io/Writer;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :catch_5
    :cond_6
    move v1, v2

    goto :goto_0

    :goto_2
    if-eqz v5, :cond_7

    :try_start_8
    invoke-virtual {v5}, Ljava/io/Writer;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :catch_6
    :cond_7
    throw p0

    :goto_3
    if-eqz v5, :cond_8

    :try_start_9
    invoke-virtual {v5}, Ljava/io/Writer;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :catch_7
    :cond_8
    throw p0

    :cond_9
    return v1
.end method

.method private static getSchemasToRecompile(Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;[Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;Ljava/util/Set;)[Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;
    .locals 11

    const-string v0, "exception.loading.url"

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    array-length v6, p1

    if-ge v5, v6, :cond_1

    aget-object v6, p1, v5

    invoke-interface {v6}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;->documentProperties()Lorg/apache/xmlbeans/XmlDocumentProperties;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/xmlbeans/XmlDocumentProperties;->getSourceName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    aget-object v7, p1, v5

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v6, p1, v5

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "One of the Schema files passed in doesn\'t have the source set, which prevents it to be incrementally compiled"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeSystemImpl;->getDependencies()Lorg/apache/xmlbeans/impl/schema/SchemaDependencies;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/SchemaDependencies;->getNamespacesTouched(Ljava/util/Set;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/schema/SchemaDependencies;->computeTransitiveClosure(Ljava/util/List;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaDependencies;->getFilesTouched(Ljava/util/Set;)Ljava/util/List;

    move-result-object p1

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v1

    new-instance v5, Lorg/apache/xmlbeans/impl/schema/SchemaDependencies;

    invoke-direct {v5, p0, p2}, Lorg/apache/xmlbeans/impl/schema/SchemaDependencies;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaDependencies;Ljava/util/Set;)V

    invoke-virtual {v1, v5}, Lorg/apache/xmlbeans/impl/schema/StscState;->setDependencies(Lorg/apache/xmlbeans/impl/schema/SchemaDependencies;)V

    move p0, v4

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge p0, p2, :cond_5

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    if-nez v1, :cond_4

    const/4 v1, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_0
    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/xmlbeans/impl/schema/StscState;->getS4SLoader()Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object v8

    invoke-static {v8, v6, p2}, Lorg/apache/xmlbeans/impl/schema/StscImporter$DownloadTable;->downloadDocument(Lorg/apache/xmlbeans/SchemaTypeLoader;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v8

    new-instance v9, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v9}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/xmlbeans/impl/schema/StscState;->getErrorListener()Ljava/util/Collection;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/apache/xmlbeans/XmlOptions;->setErrorListener(Ljava/util/Collection;)Lorg/apache/xmlbeans/XmlOptions;

    instance-of v10, v8, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;

    if-eqz v10, :cond_3

    invoke-interface {v8, v9}, Lorg/apache/xmlbeans/XmlObject;->validate(Lorg/apache/xmlbeans/XmlOptions;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_2

    :cond_2
    check-cast v8, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;

    invoke-interface {v8}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;->getSchema()Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    :goto_2
    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Referenced document is not a valid schema, URL = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x38

    invoke-virtual {v8, v9, v10, v6}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;ILorg/apache/xmlbeans/XmlObject;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v8

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v9

    new-array v5, v5, [Ljava/lang/Object;

    const-string v10, "XmlException"

    aput-object v10, v5, v4

    aput-object p2, v5, v7

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, v1

    invoke-virtual {v9, v0, v5, v6}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_3

    :catch_1
    move-exception v8

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v9

    new-array v5, v5, [Ljava/lang/Object;

    const-string v10, "IOException"

    aput-object v10, v5, v4

    aput-object p2, v5, v7

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, v1

    invoke-virtual {v9, v0, v5, v6}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    goto :goto_3

    :catch_2
    move-exception v8

    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v9

    new-array v5, v5, [Ljava/lang/Object;

    const-string v10, "MalformedURLException"

    aput-object v10, v5, v4

    aput-object p2, v5, v7

    invoke-virtual {v8}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, v1

    invoke-virtual {v9, v0, v5, v6}, Lorg/apache/xmlbeans/impl/schema/StscState;->error(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)V

    :cond_4
    :goto_3
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_1

    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    invoke-interface {v3, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    check-cast p0, [Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Schema;

    return-object p0
.end method
