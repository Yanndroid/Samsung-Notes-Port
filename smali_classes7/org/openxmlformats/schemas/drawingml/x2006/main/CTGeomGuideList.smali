.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctgeomguidelist364ftype"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewGd()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;
.end method

.method public abstract getGdArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;
.end method

.method public abstract getGdArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;
.end method

.method public abstract getGdList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewGd(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;
.end method

.method public abstract removeGd(I)V
.end method

.method public abstract setGdArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;)V
.end method

.method public abstract setGdArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuide;)V
.end method

.method public abstract sizeOfGdArray()I
.end method
