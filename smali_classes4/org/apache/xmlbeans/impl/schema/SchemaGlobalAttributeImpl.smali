.class public Lorg/apache/xmlbeans/impl/schema/SchemaGlobalAttributeImpl;
.super Lorg/apache/xmlbeans/impl/schema/SchemaLocalAttributeImpl;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/SchemaGlobalAttribute;


# instance fields
.field private _chameleon:Z

.field public _container:Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

.field public _filename:Ljava/lang/String;

.field private _parseTNS:Ljava/lang/String;

.field private _selfref:Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaLocalAttributeImpl;-><init>()V

    new-instance v0, Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;-><init>(Lorg/apache/xmlbeans/SchemaGlobalAttribute;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalAttributeImpl;->_selfref:Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalAttributeImpl;->_container:Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    return-void
.end method


# virtual methods
.method public getChameleonNamespace()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalAttributeImpl;->_chameleon:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalAttributeImpl;->_parseTNS:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getComponentRef()Lorg/apache/xmlbeans/SchemaComponent$Ref;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalAttributeImpl;->getRef()Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;

    move-result-object v0

    return-object v0
.end method

.method public getComponentType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getContainer()Lorg/apache/xmlbeans/impl/schema/SchemaContainer;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalAttributeImpl;->_container:Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    return-object v0
.end method

.method public getParseObject()Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaLocalAttributeImpl;->_parseObject:Lorg/apache/xmlbeans/XmlObject;

    return-object v0
.end method

.method public getRef()Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalAttributeImpl;->_selfref:Lorg/apache/xmlbeans/SchemaGlobalAttribute$Ref;

    return-object v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalAttributeImpl;->_filename:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalAttributeImpl;->_parseTNS:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalAttributeImpl;->_container:Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->getTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    return-object v0
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalAttributeImpl;->_filename:Ljava/lang/String;

    return-void
.end method

.method public setParseContext(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaLocalAttributeImpl;->_parseObject:Lorg/apache/xmlbeans/XmlObject;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalAttributeImpl;->_parseTNS:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaGlobalAttributeImpl;->_chameleon:Z

    return-void
.end method
