.class abstract enum Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/javax/imageio/ImageIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "SpiInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;

.field public static final enum FILE_SUFFIXES:Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;

.field public static final enum FORMAT_NAMES:Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;

.field public static final enum MIME_TYPES:Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo$1;

    const-string v1, "FORMAT_NAMES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;->FORMAT_NAMES:Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;

    new-instance v1, Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo$2;

    const-string v3, "MIME_TYPES"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;->MIME_TYPES:Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;

    new-instance v3, Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo$3;

    const-string v5, "FILE_SUFFIXES"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;->FILE_SUFFIXES:Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;->$VALUES:[Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILorg/apache/poi/javax/imageio/ImageIO$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;
    .locals 1

    const-class v0, Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;
    .locals 1

    sget-object v0, Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;->$VALUES:[Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;

    invoke-virtual {v0}, [Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;

    return-object v0
.end method


# virtual methods
.method public abstract info(Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;)[Ljava/lang/String;
.end method
