.class public interface abstract Lorg/apache/xmlbeans/SchemaParticle;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALL:I = 0x1

.field public static final CHOICE:I = 0x2

.field public static final ELEMENT:I = 0x4

.field public static final LAX:I = 0x2

.field public static final SEQUENCE:I = 0x3

.field public static final SKIP:I = 0x3

.field public static final STRICT:I = 0x1

.field public static final WILDCARD:I = 0x5


# virtual methods
.method public abstract acceptedStartNames()Lorg/apache/xmlbeans/QNameSet;
.end method

.method public abstract canStartWithElement(Lorg/apache/poi/javax/xml/namespace/QName;)Z
.end method

.method public abstract countOfParticleChild()I
.end method

.method public abstract getDefaultText()Ljava/lang/String;
.end method

.method public abstract getDefaultValue()Lorg/apache/xmlbeans/XmlAnySimpleType;
.end method

.method public abstract getIntMaxOccurs()I
.end method

.method public abstract getIntMinOccurs()I
.end method

.method public abstract getMaxOccurs()Ljava/math/BigInteger;
.end method

.method public abstract getMinOccurs()Ljava/math/BigInteger;
.end method

.method public abstract getName()Lorg/apache/poi/javax/xml/namespace/QName;
.end method

.method public abstract getParticleChild(I)Lorg/apache/xmlbeans/SchemaParticle;
.end method

.method public abstract getParticleChildren()[Lorg/apache/xmlbeans/SchemaParticle;
.end method

.method public abstract getParticleType()I
.end method

.method public abstract getType()Lorg/apache/xmlbeans/SchemaType;
.end method

.method public abstract getWildcardProcess()I
.end method

.method public abstract getWildcardSet()Lorg/apache/xmlbeans/QNameSet;
.end method

.method public abstract isDefault()Z
.end method

.method public abstract isFixed()Z
.end method

.method public abstract isNillable()Z
.end method

.method public abstract isSingleton()Z
.end method

.method public abstract isSkippable()Z
.end method
