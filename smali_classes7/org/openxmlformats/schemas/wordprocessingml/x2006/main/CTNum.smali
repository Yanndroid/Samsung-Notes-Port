.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctnume94ctype"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewAbstractNumId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract addNewLvlOverride()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumLvl;
.end method

.method public abstract getAbstractNumId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract getLvlOverrideArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumLvl;
.end method

.method public abstract getLvlOverrideArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumLvl;
.end method

.method public abstract getLvlOverrideList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumLvl;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNumId()Ljava/math/BigInteger;
.end method

.method public abstract insertNewLvlOverride(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumLvl;
.end method

.method public abstract removeLvlOverride(I)V
.end method

.method public abstract setAbstractNumId(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;)V
.end method

.method public abstract setLvlOverrideArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumLvl;)V
.end method

.method public abstract setLvlOverrideArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumLvl;)V
.end method

.method public abstract setNumId(Ljava/math/BigInteger;)V
.end method

.method public abstract sizeOfLvlOverrideArray()I
.end method

.method public abstract xgetNumId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xsetNumId(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method
