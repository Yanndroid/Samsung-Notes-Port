.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctproperties2c18type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperties;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewProperty()Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;
.end method

.method public abstract getPropertyArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;
.end method

.method public abstract getPropertyArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;
.end method

.method public abstract getPropertyList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewProperty(I)Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;
.end method

.method public abstract removeProperty(I)V
.end method

.method public abstract setPropertyArray(ILorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;)V
.end method

.method public abstract setPropertyArray([Lorg/openxmlformats/schemas/officeDocument/x2006/customProperties/CTProperty;)V
.end method

.method public abstract sizeOfPropertyArray()I
.end method
