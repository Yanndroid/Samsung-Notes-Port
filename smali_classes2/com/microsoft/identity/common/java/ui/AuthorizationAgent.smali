.class public final enum Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

.field public static final enum BROWSER:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

.field public static final enum DEFAULT:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

.field public static final enum WEBVIEW:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;->DEFAULT:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    new-instance v1, Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    const-string v3, "WEBVIEW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;->WEBVIEW:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    new-instance v3, Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    const-string v5, "BROWSER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;->BROWSER:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;->$VALUES:[Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;
    .locals 1

    const-class v0, Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;->$VALUES:[Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    invoke-virtual {v0}, [Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    return-object v0
.end method
