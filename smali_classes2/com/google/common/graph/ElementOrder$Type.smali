.class public final enum Lcom/google/common/graph/ElementOrder$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/ElementOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/graph/ElementOrder$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/graph/ElementOrder$Type;

.field public static final enum INSERTION:Lcom/google/common/graph/ElementOrder$Type;

.field public static final enum SORTED:Lcom/google/common/graph/ElementOrder$Type;

.field public static final enum STABLE:Lcom/google/common/graph/ElementOrder$Type;

.field public static final enum UNORDERED:Lcom/google/common/graph/ElementOrder$Type;


# direct methods
.method private static synthetic $values()[Lcom/google/common/graph/ElementOrder$Type;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/common/graph/ElementOrder$Type;

    sget-object v1, Lcom/google/common/graph/ElementOrder$Type;->UNORDERED:Lcom/google/common/graph/ElementOrder$Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/graph/ElementOrder$Type;->STABLE:Lcom/google/common/graph/ElementOrder$Type;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/graph/ElementOrder$Type;->INSERTION:Lcom/google/common/graph/ElementOrder$Type;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/graph/ElementOrder$Type;->SORTED:Lcom/google/common/graph/ElementOrder$Type;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/common/graph/ElementOrder$Type;

    const-string v1, "UNORDERED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/graph/ElementOrder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/graph/ElementOrder$Type;->UNORDERED:Lcom/google/common/graph/ElementOrder$Type;

    new-instance v0, Lcom/google/common/graph/ElementOrder$Type;

    const-string v1, "STABLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/graph/ElementOrder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/graph/ElementOrder$Type;->STABLE:Lcom/google/common/graph/ElementOrder$Type;

    new-instance v0, Lcom/google/common/graph/ElementOrder$Type;

    const-string v1, "INSERTION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/common/graph/ElementOrder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/graph/ElementOrder$Type;->INSERTION:Lcom/google/common/graph/ElementOrder$Type;

    new-instance v0, Lcom/google/common/graph/ElementOrder$Type;

    const-string v1, "SORTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/common/graph/ElementOrder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/graph/ElementOrder$Type;->SORTED:Lcom/google/common/graph/ElementOrder$Type;

    invoke-static {}, Lcom/google/common/graph/ElementOrder$Type;->$values()[Lcom/google/common/graph/ElementOrder$Type;

    move-result-object v0

    sput-object v0, Lcom/google/common/graph/ElementOrder$Type;->$VALUES:[Lcom/google/common/graph/ElementOrder$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/graph/ElementOrder$Type;
    .locals 1

    const-class v0, Lcom/google/common/graph/ElementOrder$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/graph/ElementOrder$Type;

    return-object p0
.end method

.method public static values()[Lcom/google/common/graph/ElementOrder$Type;
    .locals 1

    sget-object v0, Lcom/google/common/graph/ElementOrder$Type;->$VALUES:[Lcom/google/common/graph/ElementOrder$Type;

    invoke-virtual {v0}, [Lcom/google/common/graph/ElementOrder$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/graph/ElementOrder$Type;

    return-object v0
.end method
