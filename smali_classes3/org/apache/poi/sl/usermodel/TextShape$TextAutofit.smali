.class public final enum Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sl/usermodel/TextShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextAutofit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;

.field public static final enum NONE:Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;

.field public static final enum NORMAL:Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;

.field public static final enum SHAPE:Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;->NONE:Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;

    new-instance v1, Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;

    const-string v3, "NORMAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;->NORMAL:Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;

    new-instance v3, Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;

    const-string v5, "SHAPE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;->SHAPE:Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;->$VALUES:[Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;
    .locals 1

    const-class v0, Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;->$VALUES:[Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;

    invoke-virtual {v0}, [Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/sl/usermodel/TextShape$TextAutofit;

    return-object v0
.end method
