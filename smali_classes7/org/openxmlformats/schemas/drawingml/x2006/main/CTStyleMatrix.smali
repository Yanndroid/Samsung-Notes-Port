.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrix;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrix$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrix;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctstylematrix1903type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrix;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBgFillStyleLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBackgroundFillStyleList;
.end method

.method public abstract addNewEffectStyleLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectStyleList;
.end method

.method public abstract addNewFillStyleLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillStyleList;
.end method

.method public abstract addNewLnStyleLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineStyleList;
.end method

.method public abstract getBgFillStyleLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBackgroundFillStyleList;
.end method

.method public abstract getEffectStyleLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectStyleList;
.end method

.method public abstract getFillStyleLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillStyleList;
.end method

.method public abstract getLnStyleLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineStyleList;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract isSetName()Z
.end method

.method public abstract setBgFillStyleLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBackgroundFillStyleList;)V
.end method

.method public abstract setEffectStyleLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTEffectStyleList;)V
.end method

.method public abstract setFillStyleLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillStyleList;)V
.end method

.method public abstract setLnStyleLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineStyleList;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract unsetName()V
.end method

.method public abstract xgetName()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetName(Lorg/apache/xmlbeans/XmlString;)V
.end method
