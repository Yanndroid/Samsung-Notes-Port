.class public final enum Lorg/apache/poi/common/usermodel/fonts/FontPitch;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/common/usermodel/fonts/FontPitch;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/common/usermodel/fonts/FontPitch;

.field public static final enum DEFAULT:Lorg/apache/poi/common/usermodel/fonts/FontPitch;

.field public static final enum FIXED:Lorg/apache/poi/common/usermodel/fonts/FontPitch;

.field public static final enum VARIABLE:Lorg/apache/poi/common/usermodel/fonts/FontPitch;


# instance fields
.field private nativeId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/poi/common/usermodel/fonts/FontPitch;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->DEFAULT:Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    new-instance v1, Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    const-string v3, "FIXED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lorg/apache/poi/common/usermodel/fonts/FontPitch;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->FIXED:Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    new-instance v3, Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    const-string v5, "VARIABLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lorg/apache/poi/common/usermodel/fonts/FontPitch;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->VARIABLE:Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->$VALUES:[Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->nativeId:I

    return-void
.end method

.method public static getNativeId(Lorg/apache/poi/common/usermodel/fonts/FontPitch;Lorg/apache/poi/common/usermodel/fonts/FontFamily;)B
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->getNativeId()I

    move-result p0

    invoke-virtual {p1}, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->getFlag()I

    move-result p1

    shl-int/lit8 p1, p1, 0x4

    or-int/2addr p0, p1

    int-to-byte p0, p0

    return p0
.end method

.method public static valueOf(I)Lorg/apache/poi/common/usermodel/fonts/FontPitch;
    .locals 5

    invoke-static {}, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->values()[Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->nativeId:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/common/usermodel/fonts/FontPitch;
    .locals 1

    const-class v0, Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    return-object p0
.end method

.method public static valueOfPitchFamily(B)Lorg/apache/poi/common/usermodel/fonts/FontPitch;
    .locals 0

    and-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->valueOf(I)Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    move-result-object p0

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/common/usermodel/fonts/FontPitch;
    .locals 1

    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->$VALUES:[Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    invoke-virtual {v0}, [Lorg/apache/poi/common/usermodel/fonts/FontPitch;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    return-object v0
.end method


# virtual methods
.method public getNativeId()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->nativeId:I

    return v0
.end method
