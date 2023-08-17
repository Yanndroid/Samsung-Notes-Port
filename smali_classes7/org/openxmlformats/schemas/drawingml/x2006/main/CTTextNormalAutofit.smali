.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "cttextnormalautofitbbdftype"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextNormalAutofit;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getFontScale()I
.end method

.method public abstract getLnSpcReduction()I
.end method

.method public abstract isSetFontScale()Z
.end method

.method public abstract isSetLnSpcReduction()Z
.end method

.method public abstract setFontScale(I)V
.end method

.method public abstract setLnSpcReduction(I)V
.end method

.method public abstract unsetFontScale()V
.end method

.method public abstract unsetLnSpcReduction()V
.end method

.method public abstract xgetFontScale()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontScalePercent;
.end method

.method public abstract xgetLnSpcReduction()Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextSpacingPercent;
.end method

.method public abstract xsetFontScale(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextFontScalePercent;)V
.end method

.method public abstract xsetLnSpcReduction(Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextSpacingPercent;)V
.end method
