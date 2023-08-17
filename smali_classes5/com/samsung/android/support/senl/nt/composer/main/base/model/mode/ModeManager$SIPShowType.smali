.class public final enum Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SIPShowType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SIPShowType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SIPShowType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SIPShowType;

.field public static final enum DELAY:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SIPShowType;

.field public static final enum FORCE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SIPShowType;

.field public static final enum NONE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SIPShowType;

.field public static final enum NOT:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SIPShowType;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SIPShowType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SIPShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SIPShowType;->NONE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SIPShowType;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SIPShowType;

    const-string v3, "FORCE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SIPShowType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SIPShowType;->FORCE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SIPShowType;

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SIPShowType;

    const-string v5, "DELAY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SIPShowType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SIPShowType;->DELAY:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SIPShowType;

    new-instance v5, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SIPShowType;

    const-string v7, "NOT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SIPShowType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SIPShowType;->NOT:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SIPShowType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SIPShowType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SIPShowType;->$VALUES:[Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SIPShowType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SIPShowType;
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SIPShowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SIPShowType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SIPShowType;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SIPShowType;->$VALUES:[Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SIPShowType;

    invoke-virtual {v0}, [Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SIPShowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SIPShowType;

    return-object v0
.end method
