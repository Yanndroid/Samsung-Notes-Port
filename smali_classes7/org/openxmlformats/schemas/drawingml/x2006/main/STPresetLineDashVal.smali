.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Factory;,
        Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;
    }
.end annotation


# static fields
.field public static final DASH:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

.field public static final DASH_DOT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

.field public static final DOT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

.field public static final INT_DASH:I = 0x3

.field public static final INT_DASH_DOT:I = 0x5

.field public static final INT_DOT:I = 0x2

.field public static final INT_LG_DASH:I = 0x4

.field public static final INT_LG_DASH_DOT:I = 0x6

.field public static final INT_LG_DASH_DOT_DOT:I = 0x7

.field public static final INT_SOLID:I = 0x1

.field public static final INT_SYS_DASH:I = 0x8

.field public static final INT_SYS_DASH_DOT:I = 0xa

.field public static final INT_SYS_DASH_DOT_DOT:I = 0xb

.field public static final INT_SYS_DOT:I = 0x9

.field public static final LG_DASH:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

.field public static final LG_DASH_DOT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

.field public static final LG_DASH_DOT_DOT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

.field public static final SOLID:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

.field public static final SYS_DASH:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

.field public static final SYS_DASH_DOT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

.field public static final SYS_DASH_DOT_DOT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

.field public static final SYS_DOT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "stpresetlinedashval159dtype"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "solid"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal;->SOLID:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    const-string v0, "dot"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal;->DOT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    const-string v0, "dash"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal;->DASH:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    const-string v0, "lgDash"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal;->LG_DASH:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    const-string v0, "dashDot"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal;->DASH_DOT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    const-string v0, "lgDashDot"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal;->LG_DASH_DOT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    const-string v0, "lgDashDotDot"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal;->LG_DASH_DOT_DOT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    const-string v0, "sysDash"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal;->SYS_DASH:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    const-string v0, "sysDot"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal;->SYS_DOT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    const-string v0, "sysDashDot"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal;->SYS_DASH_DOT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    const-string v0, "sysDashDotDot"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal;->SYS_DASH_DOT_DOT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetLineDashVal$Enum;

    return-void
.end method


# virtual methods
.method public abstract enumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract set(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
