.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctind4b93type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTInd;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getFirstLine()Ljava/math/BigInteger;
.end method

.method public abstract getFirstLineChars()Ljava/math/BigInteger;
.end method

.method public abstract getHanging()Ljava/math/BigInteger;
.end method

.method public abstract getHangingChars()Ljava/math/BigInteger;
.end method

.method public abstract getLeft()Ljava/math/BigInteger;
.end method

.method public abstract getLeftChars()Ljava/math/BigInteger;
.end method

.method public abstract getRight()Ljava/math/BigInteger;
.end method

.method public abstract getRightChars()Ljava/math/BigInteger;
.end method

.method public abstract isSetFirstLine()Z
.end method

.method public abstract isSetFirstLineChars()Z
.end method

.method public abstract isSetHanging()Z
.end method

.method public abstract isSetHangingChars()Z
.end method

.method public abstract isSetLeft()Z
.end method

.method public abstract isSetLeftChars()Z
.end method

.method public abstract isSetRight()Z
.end method

.method public abstract isSetRightChars()Z
.end method

.method public abstract setFirstLine(Ljava/math/BigInteger;)V
.end method

.method public abstract setFirstLineChars(Ljava/math/BigInteger;)V
.end method

.method public abstract setHanging(Ljava/math/BigInteger;)V
.end method

.method public abstract setHangingChars(Ljava/math/BigInteger;)V
.end method

.method public abstract setLeft(Ljava/math/BigInteger;)V
.end method

.method public abstract setLeftChars(Ljava/math/BigInteger;)V
.end method

.method public abstract setRight(Ljava/math/BigInteger;)V
.end method

.method public abstract setRightChars(Ljava/math/BigInteger;)V
.end method

.method public abstract unsetFirstLine()V
.end method

.method public abstract unsetFirstLineChars()V
.end method

.method public abstract unsetHanging()V
.end method

.method public abstract unsetHangingChars()V
.end method

.method public abstract unsetLeft()V
.end method

.method public abstract unsetLeftChars()V
.end method

.method public abstract unsetRight()V
.end method

.method public abstract unsetRightChars()V
.end method

.method public abstract xgetFirstLine()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTwipsMeasure;
.end method

.method public abstract xgetFirstLineChars()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xgetHanging()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTwipsMeasure;
.end method

.method public abstract xgetHangingChars()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xgetLeft()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;
.end method

.method public abstract xgetLeftChars()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xgetRight()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;
.end method

.method public abstract xgetRightChars()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xsetFirstLine(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTwipsMeasure;)V
.end method

.method public abstract xsetFirstLineChars(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method

.method public abstract xsetHanging(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTwipsMeasure;)V
.end method

.method public abstract xsetHangingChars(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method

.method public abstract xsetLeft(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;)V
.end method

.method public abstract xsetLeftChars(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method

.method public abstract xsetRight(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;)V
.end method

.method public abstract xsetRightChars(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method
