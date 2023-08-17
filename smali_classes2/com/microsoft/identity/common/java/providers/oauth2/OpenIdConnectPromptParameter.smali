.class public final enum Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

.field public static final enum CONSENT:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

.field public static final enum CREATE:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

.field public static final enum LOGIN:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

.field public static final enum NONE:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

.field public static final enum SELECT_ACCOUNT:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

.field public static final enum UNSET:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    const-string v1, "UNSET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;->UNSET:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    new-instance v1, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    const-string v3, "NONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;->NONE:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    new-instance v3, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    const-string v5, "SELECT_ACCOUNT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;->SELECT_ACCOUNT:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    new-instance v5, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    const-string v7, "LOGIN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;->LOGIN:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    new-instance v7, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    const-string v9, "CONSENT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;->CONSENT:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    new-instance v9, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    const-string v11, "CREATE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;->CREATE:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;->$VALUES:[Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

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

.method public static _fromPromptBehavior(Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    const-string v0, "FORCE_PROMPT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;->LOGIN:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;->UNSET:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;
    .locals 1

    const-class v0, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;->$VALUES:[Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    invoke-virtual {v0}, [Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;->UNSET:Lcom/microsoft/identity/common/java/providers/oauth2/OpenIdConnectPromptParameter;

    if-ne p0, v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
