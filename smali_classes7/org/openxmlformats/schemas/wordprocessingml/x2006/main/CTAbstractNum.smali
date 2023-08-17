.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctabstractnum588etype"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewLvl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;
.end method

.method public abstract addNewMultiLevelType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMultiLevelType;
.end method

.method public abstract addNewName()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract addNewNsid()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLongHexNumber;
.end method

.method public abstract addNewNumStyleLink()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract addNewStyleLink()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract addNewTmpl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLongHexNumber;
.end method

.method public abstract getAbstractNumId()Ljava/math/BigInteger;
.end method

.method public abstract getLvlArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;
.end method

.method public abstract getLvlArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;
.end method

.method public abstract getLvlList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMultiLevelType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMultiLevelType;
.end method

.method public abstract getName()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract getNsid()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLongHexNumber;
.end method

.method public abstract getNumStyleLink()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract getStyleLink()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract getTmpl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLongHexNumber;
.end method

.method public abstract insertNewLvl(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;
.end method

.method public abstract isSetMultiLevelType()Z
.end method

.method public abstract isSetName()Z
.end method

.method public abstract isSetNsid()Z
.end method

.method public abstract isSetNumStyleLink()Z
.end method

.method public abstract isSetStyleLink()Z
.end method

.method public abstract isSetTmpl()Z
.end method

.method public abstract removeLvl(I)V
.end method

.method public abstract setAbstractNumId(Ljava/math/BigInteger;)V
.end method

.method public abstract setLvlArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;)V
.end method

.method public abstract setLvlArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLvl;)V
.end method

.method public abstract setMultiLevelType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMultiLevelType;)V
.end method

.method public abstract setName(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;)V
.end method

.method public abstract setNsid(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLongHexNumber;)V
.end method

.method public abstract setNumStyleLink(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;)V
.end method

.method public abstract setStyleLink(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;)V
.end method

.method public abstract setTmpl(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLongHexNumber;)V
.end method

.method public abstract sizeOfLvlArray()I
.end method

.method public abstract unsetMultiLevelType()V
.end method

.method public abstract unsetName()V
.end method

.method public abstract unsetNsid()V
.end method

.method public abstract unsetNumStyleLink()V
.end method

.method public abstract unsetStyleLink()V
.end method

.method public abstract unsetTmpl()V
.end method

.method public abstract xgetAbstractNumId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xsetAbstractNumId(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method
