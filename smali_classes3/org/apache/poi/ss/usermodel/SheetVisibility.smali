.class public final enum Lorg/apache/poi/ss/usermodel/SheetVisibility;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/usermodel/SheetVisibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/usermodel/SheetVisibility;

.field public static final enum HIDDEN:Lorg/apache/poi/ss/usermodel/SheetVisibility;

.field public static final enum VERY_HIDDEN:Lorg/apache/poi/ss/usermodel/SheetVisibility;

.field public static final enum VISIBLE:Lorg/apache/poi/ss/usermodel/SheetVisibility;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/apache/poi/ss/usermodel/SheetVisibility;

    const-string v1, "VISIBLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/SheetVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/SheetVisibility;->VISIBLE:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    new-instance v1, Lorg/apache/poi/ss/usermodel/SheetVisibility;

    const-string v3, "HIDDEN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/poi/ss/usermodel/SheetVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/ss/usermodel/SheetVisibility;->HIDDEN:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    new-instance v3, Lorg/apache/poi/ss/usermodel/SheetVisibility;

    const-string v5, "VERY_HIDDEN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/poi/ss/usermodel/SheetVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/ss/usermodel/SheetVisibility;->VERY_HIDDEN:Lorg/apache/poi/ss/usermodel/SheetVisibility;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/apache/poi/ss/usermodel/SheetVisibility;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/apache/poi/ss/usermodel/SheetVisibility;->$VALUES:[Lorg/apache/poi/ss/usermodel/SheetVisibility;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/SheetVisibility;
    .locals 1

    const-class v0, Lorg/apache/poi/ss/usermodel/SheetVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/usermodel/SheetVisibility;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/ss/usermodel/SheetVisibility;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/usermodel/SheetVisibility;->$VALUES:[Lorg/apache/poi/ss/usermodel/SheetVisibility;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/usermodel/SheetVisibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/usermodel/SheetVisibility;

    return-object v0
.end method
