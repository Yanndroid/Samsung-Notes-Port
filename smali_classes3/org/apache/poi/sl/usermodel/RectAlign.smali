.class public final enum Lorg/apache/poi/sl/usermodel/RectAlign;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/sl/usermodel/RectAlign;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/sl/usermodel/RectAlign;

.field public static final enum BOTTOM:Lorg/apache/poi/sl/usermodel/RectAlign;

.field public static final enum BOTTOM_LEFT:Lorg/apache/poi/sl/usermodel/RectAlign;

.field public static final enum BOTTOM_RIGHT:Lorg/apache/poi/sl/usermodel/RectAlign;

.field public static final enum CENTER:Lorg/apache/poi/sl/usermodel/RectAlign;

.field public static final enum LEFT:Lorg/apache/poi/sl/usermodel/RectAlign;

.field public static final enum RIGHT:Lorg/apache/poi/sl/usermodel/RectAlign;

.field public static final enum TOP:Lorg/apache/poi/sl/usermodel/RectAlign;

.field public static final enum TOP_LEFT:Lorg/apache/poi/sl/usermodel/RectAlign;

.field public static final enum TOP_RIGHT:Lorg/apache/poi/sl/usermodel/RectAlign;


# instance fields
.field private final dir:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lorg/apache/poi/sl/usermodel/RectAlign;

    const-string v1, "TOP_LEFT"

    const/4 v2, 0x0

    const-string/jumbo v3, "tl"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/sl/usermodel/RectAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/RectAlign;->TOP_LEFT:Lorg/apache/poi/sl/usermodel/RectAlign;

    new-instance v1, Lorg/apache/poi/sl/usermodel/RectAlign;

    const-string v3, "TOP"

    const/4 v4, 0x1

    const-string/jumbo v5, "t"

    invoke-direct {v1, v3, v4, v5}, Lorg/apache/poi/sl/usermodel/RectAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/poi/sl/usermodel/RectAlign;->TOP:Lorg/apache/poi/sl/usermodel/RectAlign;

    new-instance v3, Lorg/apache/poi/sl/usermodel/RectAlign;

    const-string v5, "TOP_RIGHT"

    const/4 v6, 0x2

    const-string/jumbo v7, "tr"

    invoke-direct {v3, v5, v6, v7}, Lorg/apache/poi/sl/usermodel/RectAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/apache/poi/sl/usermodel/RectAlign;->TOP_RIGHT:Lorg/apache/poi/sl/usermodel/RectAlign;

    new-instance v5, Lorg/apache/poi/sl/usermodel/RectAlign;

    const-string v7, "LEFT"

    const/4 v8, 0x3

    const-string v9, "l"

    invoke-direct {v5, v7, v8, v9}, Lorg/apache/poi/sl/usermodel/RectAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/apache/poi/sl/usermodel/RectAlign;->LEFT:Lorg/apache/poi/sl/usermodel/RectAlign;

    new-instance v7, Lorg/apache/poi/sl/usermodel/RectAlign;

    const-string v9, "CENTER"

    const/4 v10, 0x4

    const-string v11, "ctr"

    invoke-direct {v7, v9, v10, v11}, Lorg/apache/poi/sl/usermodel/RectAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/apache/poi/sl/usermodel/RectAlign;->CENTER:Lorg/apache/poi/sl/usermodel/RectAlign;

    new-instance v9, Lorg/apache/poi/sl/usermodel/RectAlign;

    const-string v11, "RIGHT"

    const/4 v12, 0x5

    const-string v13, "r"

    invoke-direct {v9, v11, v12, v13}, Lorg/apache/poi/sl/usermodel/RectAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lorg/apache/poi/sl/usermodel/RectAlign;->RIGHT:Lorg/apache/poi/sl/usermodel/RectAlign;

    new-instance v11, Lorg/apache/poi/sl/usermodel/RectAlign;

    const-string v13, "BOTTOM_LEFT"

    const/4 v14, 0x6

    const-string v15, "bl"

    invoke-direct {v11, v13, v14, v15}, Lorg/apache/poi/sl/usermodel/RectAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lorg/apache/poi/sl/usermodel/RectAlign;->BOTTOM_LEFT:Lorg/apache/poi/sl/usermodel/RectAlign;

    new-instance v13, Lorg/apache/poi/sl/usermodel/RectAlign;

    const-string v15, "BOTTOM"

    const/4 v14, 0x7

    const-string v12, "b"

    invoke-direct {v13, v15, v14, v12}, Lorg/apache/poi/sl/usermodel/RectAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lorg/apache/poi/sl/usermodel/RectAlign;->BOTTOM:Lorg/apache/poi/sl/usermodel/RectAlign;

    new-instance v12, Lorg/apache/poi/sl/usermodel/RectAlign;

    const-string v15, "BOTTOM_RIGHT"

    const/16 v14, 0x8

    const-string v10, "br"

    invoke-direct {v12, v15, v14, v10}, Lorg/apache/poi/sl/usermodel/RectAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lorg/apache/poi/sl/usermodel/RectAlign;->BOTTOM_RIGHT:Lorg/apache/poi/sl/usermodel/RectAlign;

    const/16 v10, 0x9

    new-array v10, v10, [Lorg/apache/poi/sl/usermodel/RectAlign;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    aput-object v12, v10, v14

    sput-object v10, Lorg/apache/poi/sl/usermodel/RectAlign;->$VALUES:[Lorg/apache/poi/sl/usermodel/RectAlign;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/sl/usermodel/RectAlign;->dir:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/RectAlign;
    .locals 1

    const-class v0, Lorg/apache/poi/sl/usermodel/RectAlign;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/usermodel/RectAlign;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/sl/usermodel/RectAlign;
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/usermodel/RectAlign;->$VALUES:[Lorg/apache/poi/sl/usermodel/RectAlign;

    invoke-virtual {v0}, [Lorg/apache/poi/sl/usermodel/RectAlign;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/sl/usermodel/RectAlign;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/usermodel/RectAlign;->dir:Ljava/lang/String;

    return-object v0
.end method
