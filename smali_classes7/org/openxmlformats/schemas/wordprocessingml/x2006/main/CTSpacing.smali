.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctspacingff2ftype"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSpacing;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getAfter()Ljava/math/BigInteger;
.end method

.method public abstract getAfterAutospacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;
.end method

.method public abstract getAfterLines()Ljava/math/BigInteger;
.end method

.method public abstract getBefore()Ljava/math/BigInteger;
.end method

.method public abstract getBeforeAutospacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;
.end method

.method public abstract getBeforeLines()Ljava/math/BigInteger;
.end method

.method public abstract getLine()Ljava/math/BigInteger;
.end method

.method public abstract getLineRule()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;
.end method

.method public abstract isSetAfter()Z
.end method

.method public abstract isSetAfterAutospacing()Z
.end method

.method public abstract isSetAfterLines()Z
.end method

.method public abstract isSetBefore()Z
.end method

.method public abstract isSetBeforeAutospacing()Z
.end method

.method public abstract isSetBeforeLines()Z
.end method

.method public abstract isSetLine()Z
.end method

.method public abstract isSetLineRule()Z
.end method

.method public abstract setAfter(Ljava/math/BigInteger;)V
.end method

.method public abstract setAfterAutospacing(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V
.end method

.method public abstract setAfterLines(Ljava/math/BigInteger;)V
.end method

.method public abstract setBefore(Ljava/math/BigInteger;)V
.end method

.method public abstract setBeforeAutospacing(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V
.end method

.method public abstract setBeforeLines(Ljava/math/BigInteger;)V
.end method

.method public abstract setLine(Ljava/math/BigInteger;)V
.end method

.method public abstract setLineRule(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule$Enum;)V
.end method

.method public abstract unsetAfter()V
.end method

.method public abstract unsetAfterAutospacing()V
.end method

.method public abstract unsetAfterLines()V
.end method

.method public abstract unsetBefore()V
.end method

.method public abstract unsetBeforeAutospacing()V
.end method

.method public abstract unsetBeforeLines()V
.end method

.method public abstract unsetLine()V
.end method

.method public abstract unsetLineRule()V
.end method

.method public abstract xgetAfter()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTwipsMeasure;
.end method

.method public abstract xgetAfterAutospacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;
.end method

.method public abstract xgetAfterLines()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xgetBefore()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTwipsMeasure;
.end method

.method public abstract xgetBeforeAutospacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;
.end method

.method public abstract xgetBeforeLines()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xgetLine()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;
.end method

.method public abstract xgetLineRule()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule;
.end method

.method public abstract xsetAfter(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTwipsMeasure;)V
.end method

.method public abstract xsetAfterAutospacing(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;)V
.end method

.method public abstract xsetAfterLines(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method

.method public abstract xsetBefore(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTwipsMeasure;)V
.end method

.method public abstract xsetBeforeAutospacing(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;)V
.end method

.method public abstract xsetBeforeLines(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method

.method public abstract xsetLine(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STSignedTwipsMeasure;)V
.end method

.method public abstract xsetLineRule(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STLineSpacingRule;)V
.end method
