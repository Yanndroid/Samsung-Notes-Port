.class Lorg/apache/xmlbeans/impl/schema/SchemaContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _annotations:Ljava/util/List;

.field private _attributeGroups:Ljava/util/List;

.field private _attributeTypes:Ljava/util/List;

.field private _documentTypes:Ljava/util/List;

.field private _globalAttributes:Ljava/util/List;

.field private _globalElements:Ljava/util/List;

.field private _globalTypes:Ljava/util/List;

.field private _identityConstraints:Ljava/util/List;

.field public _immutable:Z

.field private _modelGroups:Ljava/util/List;

.field private _namespace:Ljava/lang/String;

.field private _redefinedAttributeGroups:Ljava/util/List;

.field private _redefinedGlobalTypes:Ljava/util/List;

.field private _redefinedModelGroups:Ljava/util/List;

.field private _typeSystem:Lorg/apache/xmlbeans/SchemaTypeSystem;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->_globalElements:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->_globalAttributes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->_modelGroups:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->_redefinedModelGroups:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->_attributeGroups:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->_redefinedAttributeGroups:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->_globalTypes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->_redefinedGlobalTypes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->_documentTypes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->_attributeTypes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->_identityConstraints:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->_annotations:Ljava/util/List;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->_namespace:Ljava/lang/String;

    return-void
.end method

.method private check_immutable()V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->_immutable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add components to immutable SchemaContainer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getComponentList(Ljava/util/List;)Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/SchemaComponent$Ref;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/SchemaComponent$Ref;->getComponent()Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addAnnotation(Lorg/apache/xmlbeans/SchemaAnnotation;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->check_immutable()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->_annotations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAttributeGroup(Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->check_immutable()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->_attributeGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAttributeType(Lorg/apache/xmlbeans/SchemaType$Ref;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->check_immutable()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->_attributeTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addDocumentType(Lorg/apache/xmlbeans/SchemaType$Ref;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->check_immutable()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->_documentTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addGlobalAttribute(Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->check_immutable()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->_globalAttributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addGlobalElement(Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->check_immutable()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->_globalElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addGlobalType(Lorg/apache/xmlbeans/SchemaType$Ref;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->check_immutable()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->_globalTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addIdentityConstraint(Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->check_immutable()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->_identityConstraints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addModelGroup(Lorg/apache/xmlbeans/SchemaModelGroup$Ref;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->check_immutable()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->_modelGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRedefinedAttributeGroup(Lorg/apache/xmlbeans/SchemaAttributeGroup$Ref;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->check_immutable()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->_redefinedAttributeGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRedefinedModelGroup(Lorg/apache/xmlbeans/SchemaModelGroup$Ref;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->check_immutable()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->_redefinedModelGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRedefinedType(Lorg/apache/xmlbeans/SchemaType$Ref;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->check_immutable()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->_redefinedGlobalTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public annotations()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->_annotations:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public attributeGroups()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->_attributeGroups:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->getComponentList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public attributeTypes()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->_attributeTypes:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->getComponentList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public documentTypes()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->_documentTypes:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->getComponentList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->_namespace:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->_typeSystem:Lorg/apache/xmlbeans/SchemaTypeSystem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public globalAttributes()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->_globalAttributes:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->getComponentList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public globalElements()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->_globalElements:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->getComponentList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public globalTypes()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->_globalTypes:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->getComponentList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public identityConstraints()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->_identityConstraints:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->getComponentList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public modelGroups()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->_modelGroups:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->getComponentList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public redefinedAttributeGroups()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->_redefinedAttributeGroups:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->getComponentList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public redefinedGlobalTypes()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->_redefinedGlobalTypes:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->getComponentList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public redefinedModelGroups()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->_redefinedModelGroups:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->getComponentList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized setImmutable()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->_immutable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTypeSystem(Lorg/apache/xmlbeans/SchemaTypeSystem;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->_typeSystem:Lorg/apache/xmlbeans/SchemaTypeSystem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unsetImmutable()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->_immutable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
