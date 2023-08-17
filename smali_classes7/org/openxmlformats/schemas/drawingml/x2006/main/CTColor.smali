.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctcolorb114type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColor;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewHslClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;
.end method

.method public abstract addNewPrstClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;
.end method

.method public abstract addNewSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;
.end method

.method public abstract addNewScrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;
.end method

.method public abstract addNewSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;
.end method

.method public abstract addNewSysClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;
.end method

.method public abstract getHslClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;
.end method

.method public abstract getPrstClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;
.end method

.method public abstract getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;
.end method

.method public abstract getScrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;
.end method

.method public abstract getSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;
.end method

.method public abstract getSysClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;
.end method

.method public abstract isSetHslClr()Z
.end method

.method public abstract isSetPrstClr()Z
.end method

.method public abstract isSetSchemeClr()Z
.end method

.method public abstract isSetScrgbClr()Z
.end method

.method public abstract isSetSrgbClr()Z
.end method

.method public abstract isSetSysClr()Z
.end method

.method public abstract setHslClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;)V
.end method

.method public abstract setPrstClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;)V
.end method

.method public abstract setSchemeClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;)V
.end method

.method public abstract setScrgbClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;)V
.end method

.method public abstract setSrgbClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;)V
.end method

.method public abstract setSysClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;)V
.end method

.method public abstract unsetHslClr()V
.end method

.method public abstract unsetPrstClr()V
.end method

.method public abstract unsetSchemeClr()V
.end method

.method public abstract unsetScrgbClr()V
.end method

.method public abstract unsetSrgbClr()V
.end method

.method public abstract unsetSysClr()V
.end method
