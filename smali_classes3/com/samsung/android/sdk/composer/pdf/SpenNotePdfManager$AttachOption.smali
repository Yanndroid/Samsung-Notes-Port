.class public final enum Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$AttachOption;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AttachOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$AttachOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$AttachOption;

.field public static final enum APPLY_BACKGROUND_COLOR:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$AttachOption;

.field public static final enum APPLY_TEMPLATE:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$AttachOption;

.field public static final enum NONE:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$AttachOption;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$AttachOption;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$AttachOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$AttachOption;->NONE:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$AttachOption;

    new-instance v1, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$AttachOption;

    const-string v3, "APPLY_TEMPLATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$AttachOption;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$AttachOption;->APPLY_TEMPLATE:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$AttachOption;

    new-instance v3, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$AttachOption;

    const-string v5, "APPLY_BACKGROUND_COLOR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$AttachOption;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$AttachOption;->APPLY_BACKGROUND_COLOR:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$AttachOption;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$AttachOption;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$AttachOption;->$VALUES:[Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$AttachOption;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$AttachOption;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$AttachOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$AttachOption;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$AttachOption;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$AttachOption;->$VALUES:[Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$AttachOption;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$AttachOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$AttachOption;

    return-object v0
.end method
