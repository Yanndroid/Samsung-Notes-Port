.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Factory;,
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;
    }
.end annotation


# static fields
.field public static final FALSE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

.field public static final INT_FALSE:I = 0x2

.field public static final INT_OFF:I = 0x4

.field public static final INT_ON:I = 0x3

.field public static final INT_TRUE:I = 0x1

.field public static final INT_X_0:I = 0x5

.field public static final INT_X_1:I = 0x6

.field public static final OFF:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

.field public static final ON:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

.field public static final TRUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

.field public static final X_0:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

.field public static final X_1:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "stonofffcd2type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "true"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->TRUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    const-string v0, "false"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->FALSE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    const-string v0, "on"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->ON:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    const-string v0, "off"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->OFF:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    const-string v0, "0"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->X_0:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    const-string v0, "1"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->X_1:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    return-void
.end method


# virtual methods
.method public abstract enumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract set(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
