.class public final enum Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsPromptBehavior;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsPromptBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsPromptBehavior;

.field public static final enum CONSENT:Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsPromptBehavior;

.field public static final enum FORCE_LOGIN:Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsPromptBehavior;

.field public static final enum SELECT_ACCOUNT:Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsPromptBehavior;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsPromptBehavior;

    const-string v1, "SELECT_ACCOUNT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsPromptBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsPromptBehavior;->SELECT_ACCOUNT:Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsPromptBehavior;

    new-instance v1, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsPromptBehavior;

    const-string v3, "FORCE_LOGIN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsPromptBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsPromptBehavior;->FORCE_LOGIN:Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsPromptBehavior;

    new-instance v3, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsPromptBehavior;

    const-string v5, "CONSENT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsPromptBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsPromptBehavior;->CONSENT:Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsPromptBehavior;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsPromptBehavior;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsPromptBehavior;->$VALUES:[Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsPromptBehavior;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsPromptBehavior;
    .locals 1

    const-class v0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsPromptBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsPromptBehavior;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsPromptBehavior;
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsPromptBehavior;->$VALUES:[Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsPromptBehavior;

    invoke-virtual {v0}, [Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsPromptBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsPromptBehavior;

    return-object v0
.end method
