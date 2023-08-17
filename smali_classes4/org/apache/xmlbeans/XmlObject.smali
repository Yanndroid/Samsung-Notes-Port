.class public interface abstract Lorg/apache/xmlbeans/XmlObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlTokenSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/XmlObject$Factory;
    }
.end annotation


# static fields
.field public static final EQUAL:I = 0x0

.field public static final GREATER_THAN:I = 0x1

.field public static final LESS_THAN:I = -0x1

.field public static final NOT_EQUAL:I = 0x2

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->getBuiltinTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "_BI_anyType"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->typeForHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/XmlObject;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract changeType(Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract compareTo(Ljava/lang/Object;)I
.end method

.method public abstract compareValue(Lorg/apache/xmlbeans/XmlObject;)I
.end method

.method public abstract copy()Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract copy(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract execQuery(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract execQuery(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract isImmutable()Z
.end method

.method public abstract isNil()Z
.end method

.method public abstract schemaType()Lorg/apache/xmlbeans/SchemaType;
.end method

.method public abstract selectAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract selectAttribute(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract selectAttributes(Lorg/apache/xmlbeans/QNameSet;)[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract selectChildren(Ljava/lang/String;Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract selectChildren(Lorg/apache/poi/javax/xml/namespace/QName;)[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract selectChildren(Lorg/apache/xmlbeans/QNameSet;)[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract selectPath(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract setNil()V
.end method

.method public abstract substitute(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/xmlbeans/SchemaType;)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract validate()Z
.end method

.method public abstract validate(Lorg/apache/xmlbeans/XmlOptions;)Z
.end method

.method public abstract valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public abstract valueHashCode()I
.end method
