.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctnumberingfdf9type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumbering;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewAbstractNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;
.end method

.method public abstract addNewNum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;
.end method

.method public abstract addNewNumIdMacAtCleanup()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract addNewNumPicBullet()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPicBullet;
.end method

.method public abstract getAbstractNumArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;
.end method

.method public abstract getAbstractNumArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;
.end method

.method public abstract getAbstractNumList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNumArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;
.end method

.method public abstract getNumArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;
.end method

.method public abstract getNumIdMacAtCleanup()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract getNumList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNumPicBulletArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPicBullet;
.end method

.method public abstract getNumPicBulletArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPicBullet;
.end method

.method public abstract getNumPicBulletList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPicBullet;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewAbstractNum(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;
.end method

.method public abstract insertNewNum(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;
.end method

.method public abstract insertNewNumPicBullet(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPicBullet;
.end method

.method public abstract isSetNumIdMacAtCleanup()Z
.end method

.method public abstract removeAbstractNum(I)V
.end method

.method public abstract removeNum(I)V
.end method

.method public abstract removeNumPicBullet(I)V
.end method

.method public abstract setAbstractNumArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;)V
.end method

.method public abstract setAbstractNumArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAbstractNum;)V
.end method

.method public abstract setNumArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;)V
.end method

.method public abstract setNumArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNum;)V
.end method

.method public abstract setNumIdMacAtCleanup(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;)V
.end method

.method public abstract setNumPicBulletArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPicBullet;)V
.end method

.method public abstract setNumPicBulletArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTNumPicBullet;)V
.end method

.method public abstract sizeOfAbstractNumArray()I
.end method

.method public abstract sizeOfNumArray()I
.end method

.method public abstract sizeOfNumPicBulletArray()I
.end method

.method public abstract unsetNumIdMacAtCleanup()V
.end method
