.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMappingOverride;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMappingOverride$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMappingOverride;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctcolormappingoverridea2b2type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMappingOverride;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewMasterClrMapping()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEmptyElement;
.end method

.method public abstract addNewOverrideClrMapping()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;
.end method

.method public abstract getMasterClrMapping()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEmptyElement;
.end method

.method public abstract getOverrideClrMapping()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;
.end method

.method public abstract isSetMasterClrMapping()Z
.end method

.method public abstract isSetOverrideClrMapping()Z
.end method

.method public abstract setMasterClrMapping(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEmptyElement;)V
.end method

.method public abstract setOverrideClrMapping(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;)V
.end method

.method public abstract unsetMasterClrMapping()V
.end method

.method public abstract unsetOverrideClrMapping()V
.end method
