.class public final enum Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SubMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SubMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SubMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SubMode;

.field public static final enum DELETE_ONLY:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SubMode;

.field public static final enum NONE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SubMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SubMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SubMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SubMode;->NONE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SubMode;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SubMode;

    const-string v3, "DELETE_ONLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SubMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SubMode;->DELETE_ONLY:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SubMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SubMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SubMode;->$VALUES:[Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SubMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SubMode;
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SubMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SubMode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SubMode;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SubMode;->$VALUES:[Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SubMode;

    invoke-virtual {v0}, [Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SubMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager$SubMode;

    return-object v0
.end method
