.class public Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;
.super Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/SchemaGlobalElement;


# static fields
.field private static final _namearray:[Lorg/apache/poi/javax/xml/namespace/QName;


# instance fields
.field private _chameleon:Z

.field private _container:Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

.field private _filename:Ljava/lang/String;

.field private _finalExt:Z

.field private _finalRest:Z

.field private _parseTNS:Ljava/lang/String;

.field private _selfref:Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;

.field private _sg:Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;

.field private _sgMembers:Ljava/util/Set;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/poi/javax/xml/namespace/QName;

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;->_namearray:[Lorg/apache/poi/javax/xml/namespace/QName;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;->_sgMembers:Ljava/util/Set;

    new-instance v0, Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;-><init>(Lorg/apache/xmlbeans/SchemaGlobalElement;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;->_selfref:Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;->_container:Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    return-void
.end method


# virtual methods
.method public addSubstitutionGroupMember(Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->mutate()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;->_sgMembers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public finalExtension()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;->_finalExt:Z

    return v0
.end method

.method public finalRestriction()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;->_finalRest:Z

    return v0
.end method

.method public getChameleonNamespace()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;->_chameleon:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;->_parseTNS:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getComponentRef()Lorg/apache/xmlbeans/SchemaComponent$Ref;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;->getRef()Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;

    move-result-object v0

    return-object v0
.end method

.method public getComponentType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getContainer()Lorg/apache/xmlbeans/impl/schema/SchemaContainer;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;->_container:Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    return-object v0
.end method

.method public getParseObject()Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_parseObject:Lorg/apache/xmlbeans/XmlObject;

    return-object v0
.end method

.method public getRef()Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;->_selfref:Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;

    return-object v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;->_filename:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;->_parseTNS:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;->_container:Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->getTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    return-object v0
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;->_filename:Ljava/lang/String;

    return-void
.end method

.method public setFinal(ZZ)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->mutate()V

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;->_finalExt:Z

    iput-boolean p2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;->_finalRest:Z

    return-void
.end method

.method public setParseContext(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->_parseObject:Lorg/apache/xmlbeans/XmlObject;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;->_parseTNS:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;->_chameleon:Z

    return-void
.end method

.method public setSubstitutionGroup(Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;->_sg:Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;

    return-void
.end method

.method public substitutionGroup()Lorg/apache/xmlbeans/SchemaGlobalElement;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;->_sg:Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/SchemaGlobalElement$Ref;->get()Lorg/apache/xmlbeans/SchemaGlobalElement;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public substitutionGroupMembers()[Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;->_sgMembers:Ljava/util/Set;

    sget-object v1, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalElementImpl;->_namearray:[Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/javax/xml/namespace/QName;

    return-object v0
.end method
