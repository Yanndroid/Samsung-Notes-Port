.class public final enum Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sl/usermodel/StrokeStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LineCompound"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

.field public static final enum DOUBLE:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

.field public static final enum SINGLE:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

.field public static final enum THICK_THIN:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

.field public static final enum THIN_THICK:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

.field public static final enum TRIPLE:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;


# instance fields
.field public final nativeId:I

.field public final ooxmlId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    const-string v1, "SINGLE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;->SINGLE:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    new-instance v1, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    const-string v4, "DOUBLE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v3, v5}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;->DOUBLE:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    new-instance v4, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    const-string v6, "THICK_THIN"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v5, v7}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;->THICK_THIN:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    new-instance v6, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    const-string v8, "THIN_THICK"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v7, v9}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;-><init>(Ljava/lang/String;III)V

    sput-object v6, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;->THIN_THICK:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    new-instance v8, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    const-string v10, "TRIPLE"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v9, v11}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;-><init>(Ljava/lang/String;III)V

    sput-object v8, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;->TRIPLE:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    new-array v10, v11, [Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    aput-object v0, v10, v2

    aput-object v1, v10, v3

    aput-object v4, v10, v5

    aput-object v6, v10, v7

    aput-object v8, v10, v9

    sput-object v10, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;->$VALUES:[Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;->nativeId:I

    iput p4, p0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;->ooxmlId:I

    return-void
.end method

.method public static fromNativeId(I)Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;
    .locals 5

    invoke-static {}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;->values()[Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;->nativeId:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static fromOoxmlId(I)Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;
    .locals 5

    invoke-static {}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;->values()[Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;->ooxmlId:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;
    .locals 1

    const-class v0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;->$VALUES:[Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    invoke-virtual {v0}, [Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    return-object v0
.end method
