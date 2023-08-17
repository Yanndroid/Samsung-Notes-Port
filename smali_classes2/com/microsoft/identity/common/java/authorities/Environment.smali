.class public final enum Lcom/microsoft/identity/common/java/authorities/Environment;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/identity/common/java/authorities/Environment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/identity/common/java/authorities/Environment;

.field public static final enum PreProduction:Lcom/microsoft/identity/common/java/authorities/Environment;

.field public static final enum Production:Lcom/microsoft/identity/common/java/authorities/Environment;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/microsoft/identity/common/java/authorities/Environment;

    const-string v1, "PreProduction"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/identity/common/java/authorities/Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/common/java/authorities/Environment;->PreProduction:Lcom/microsoft/identity/common/java/authorities/Environment;

    new-instance v1, Lcom/microsoft/identity/common/java/authorities/Environment;

    const-string v3, "Production"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/microsoft/identity/common/java/authorities/Environment;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/identity/common/java/authorities/Environment;->Production:Lcom/microsoft/identity/common/java/authorities/Environment;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/microsoft/identity/common/java/authorities/Environment;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/microsoft/identity/common/java/authorities/Environment;->$VALUES:[Lcom/microsoft/identity/common/java/authorities/Environment;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/identity/common/java/authorities/Environment;
    .locals 1

    const-class v0, Lcom/microsoft/identity/common/java/authorities/Environment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/common/java/authorities/Environment;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/identity/common/java/authorities/Environment;
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/java/authorities/Environment;->$VALUES:[Lcom/microsoft/identity/common/java/authorities/Environment;

    invoke-virtual {v0}, [Lcom/microsoft/identity/common/java/authorities/Environment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/identity/common/java/authorities/Environment;

    return-object v0
.end method
