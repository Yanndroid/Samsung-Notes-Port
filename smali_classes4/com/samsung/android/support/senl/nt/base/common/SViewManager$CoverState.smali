.class final enum Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/common/SViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CoverState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;

.field public static final enum CLOSED:Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;

.field public static final enum NEED_TO_CHECK:Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;

.field public static final enum OPENED:Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;

    const-string v1, "NEED_TO_CHECK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;->NEED_TO_CHECK:Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;

    const-string v3, "CLOSED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;->CLOSED:Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;

    new-instance v3, Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;

    const-string v5, "OPENED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;->OPENED:Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;->$VALUES:[Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;->$VALUES:[Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;

    invoke-virtual {v0}, [Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/support/senl/nt/base/common/SViewManager$CoverState;

    return-object v0
.end method
