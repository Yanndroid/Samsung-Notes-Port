.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctcolormapping5bc6type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getAccent1()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;
.end method

.method public abstract getAccent2()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;
.end method

.method public abstract getAccent3()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;
.end method

.method public abstract getAccent4()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;
.end method

.method public abstract getAccent5()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;
.end method

.method public abstract getAccent6()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;
.end method

.method public abstract getBg1()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;
.end method

.method public abstract getBg2()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getFolHlink()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;
.end method

.method public abstract getHlink()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;
.end method

.method public abstract getTx1()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;
.end method

.method public abstract getTx2()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract setAccent1(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;)V
.end method

.method public abstract setAccent2(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;)V
.end method

.method public abstract setAccent3(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;)V
.end method

.method public abstract setAccent4(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;)V
.end method

.method public abstract setAccent5(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;)V
.end method

.method public abstract setAccent6(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;)V
.end method

.method public abstract setBg1(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;)V
.end method

.method public abstract setBg2(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setFolHlink(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;)V
.end method

.method public abstract setHlink(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;)V
.end method

.method public abstract setTx1(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;)V
.end method

.method public abstract setTx2(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;)V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract xgetAccent1()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;
.end method

.method public abstract xgetAccent2()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;
.end method

.method public abstract xgetAccent3()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;
.end method

.method public abstract xgetAccent4()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;
.end method

.method public abstract xgetAccent5()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;
.end method

.method public abstract xgetAccent6()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;
.end method

.method public abstract xgetBg1()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;
.end method

.method public abstract xgetBg2()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;
.end method

.method public abstract xgetFolHlink()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;
.end method

.method public abstract xgetHlink()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;
.end method

.method public abstract xgetTx1()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;
.end method

.method public abstract xgetTx2()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;
.end method

.method public abstract xsetAccent1(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;)V
.end method

.method public abstract xsetAccent2(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;)V
.end method

.method public abstract xsetAccent3(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;)V
.end method

.method public abstract xsetAccent4(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;)V
.end method

.method public abstract xsetAccent5(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;)V
.end method

.method public abstract xsetAccent6(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;)V
.end method

.method public abstract xsetBg1(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;)V
.end method

.method public abstract xsetBg2(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;)V
.end method

.method public abstract xsetFolHlink(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;)V
.end method

.method public abstract xsetHlink(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;)V
.end method

.method public abstract xsetTx1(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;)V
.end method

.method public abstract xsetTx2(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;)V
.end method
