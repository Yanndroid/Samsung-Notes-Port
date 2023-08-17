.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Factory;,
        Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;
    }
.end annotation


# static fields
.field public static final ACCENT_1:Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

.field public static final ACCENT_2:Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

.field public static final ACCENT_3:Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

.field public static final ACCENT_4:Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

.field public static final ACCENT_5:Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

.field public static final ACCENT_6:Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

.field public static final DK_1:Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

.field public static final DK_2:Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

.field public static final FOL_HLINK:Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

.field public static final HLINK:Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

.field public static final INT_ACCENT_1:I = 0x5

.field public static final INT_ACCENT_2:I = 0x6

.field public static final INT_ACCENT_3:I = 0x7

.field public static final INT_ACCENT_4:I = 0x8

.field public static final INT_ACCENT_5:I = 0x9

.field public static final INT_ACCENT_6:I = 0xa

.field public static final INT_DK_1:I = 0x1

.field public static final INT_DK_2:I = 0x3

.field public static final INT_FOL_HLINK:I = 0xc

.field public static final INT_HLINK:I = 0xb

.field public static final INT_LT_1:I = 0x2

.field public static final INT_LT_2:I = 0x4

.field public static final LT_1:Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

.field public static final LT_2:Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "stcolorschemeindexe6f5type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "dk1"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;->DK_1:Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    const-string v0, "lt1"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;->LT_1:Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    const-string v0, "dk2"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;->DK_2:Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    const-string v0, "lt2"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;->LT_2:Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    const-string v0, "accent1"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;->ACCENT_1:Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    const-string v0, "accent2"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;->ACCENT_2:Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    const-string v0, "accent3"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;->ACCENT_3:Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    const-string v0, "accent4"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;->ACCENT_4:Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    const-string v0, "accent5"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;->ACCENT_5:Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    const-string v0, "accent6"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;->ACCENT_6:Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    const-string v0, "hlink"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;->HLINK:Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    const-string v0, "folHlink"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;->FOL_HLINK:Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;

    return-void
.end method


# virtual methods
.method public abstract enumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract set(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
