.class public final enum Lcom/microsoft/identity/client/configuration/AccountMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/identity/client/configuration/AccountMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/identity/client/configuration/AccountMode;

.field public static final enum MULTIPLE:Lcom/microsoft/identity/client/configuration/AccountMode;

.field public static final enum SINGLE:Lcom/microsoft/identity/client/configuration/AccountMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/microsoft/identity/client/configuration/AccountMode;

    const-string v1, "SINGLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/identity/client/configuration/AccountMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/client/configuration/AccountMode;->SINGLE:Lcom/microsoft/identity/client/configuration/AccountMode;

    new-instance v1, Lcom/microsoft/identity/client/configuration/AccountMode;

    const-string v3, "MULTIPLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/microsoft/identity/client/configuration/AccountMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/identity/client/configuration/AccountMode;->MULTIPLE:Lcom/microsoft/identity/client/configuration/AccountMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/microsoft/identity/client/configuration/AccountMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/microsoft/identity/client/configuration/AccountMode;->$VALUES:[Lcom/microsoft/identity/client/configuration/AccountMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/identity/client/configuration/AccountMode;
    .locals 1

    const-class v0, Lcom/microsoft/identity/client/configuration/AccountMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/client/configuration/AccountMode;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/identity/client/configuration/AccountMode;
    .locals 1

    sget-object v0, Lcom/microsoft/identity/client/configuration/AccountMode;->$VALUES:[Lcom/microsoft/identity/client/configuration/AccountMode;

    invoke-virtual {v0}, [Lcom/microsoft/identity/client/configuration/AccountMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/identity/client/configuration/AccountMode;

    return-object v0
.end method
