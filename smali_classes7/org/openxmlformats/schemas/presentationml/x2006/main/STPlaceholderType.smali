.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Factory;,
        Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;
    }
.end annotation


# static fields
.field public static final BODY:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final CHART:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final CLIP_ART:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final CTR_TITLE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final DGM:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final DT:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final FTR:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final HDR:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final INT_BODY:I = 0x2

.field public static final INT_CHART:I = 0xa

.field public static final INT_CLIP_ART:I = 0xc

.field public static final INT_CTR_TITLE:I = 0x3

.field public static final INT_DGM:I = 0xd

.field public static final INT_DT:I = 0x5

.field public static final INT_FTR:I = 0x7

.field public static final INT_HDR:I = 0x8

.field public static final INT_MEDIA:I = 0xe

.field public static final INT_OBJ:I = 0x9

.field public static final INT_PIC:I = 0x10

.field public static final INT_SLD_IMG:I = 0xf

.field public static final INT_SLD_NUM:I = 0x6

.field public static final INT_SUB_TITLE:I = 0x4

.field public static final INT_TBL:I = 0xb

.field public static final INT_TITLE:I = 0x1

.field public static final MEDIA:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final OBJ:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final PIC:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final SLD_IMG:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final SLD_NUM:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final SUB_TITLE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final TBL:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final TITLE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "stplaceholdertypeca72type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "title"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->TITLE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    const-string v0, "body"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->BODY:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    const-string v0, "ctrTitle"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->CTR_TITLE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    const-string v0, "subTitle"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->SUB_TITLE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    const-string v0, "dt"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->DT:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    const-string v0, "sldNum"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->SLD_NUM:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    const-string v0, "ftr"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->FTR:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    const-string v0, "hdr"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->HDR:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    const-string v0, "obj"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->OBJ:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    const-string v0, "chart"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->CHART:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    const-string v0, "tbl"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->TBL:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    const-string v0, "clipArt"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->CLIP_ART:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    const-string v0, "dgm"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->DGM:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    const-string v0, "media"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->MEDIA:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    const-string v0, "sldImg"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->SLD_IMG:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    const-string v0, "pic"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType;->PIC:Lorg/openxmlformats/schemas/presentationml/x2006/main/STPlaceholderType$Enum;

    return-void
.end method


# virtual methods
.method public abstract enumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract set(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
