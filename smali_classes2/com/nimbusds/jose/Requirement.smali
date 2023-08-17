.class public final enum Lcom/nimbusds/jose/Requirement;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nimbusds/jose/Requirement;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nimbusds/jose/Requirement;

.field public static final enum OPTIONAL:Lcom/nimbusds/jose/Requirement;

.field public static final enum RECOMMENDED:Lcom/nimbusds/jose/Requirement;

.field public static final enum REQUIRED:Lcom/nimbusds/jose/Requirement;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/nimbusds/jose/Requirement;

    const-string v1, "REQUIRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nimbusds/jose/Requirement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nimbusds/jose/Requirement;->REQUIRED:Lcom/nimbusds/jose/Requirement;

    new-instance v1, Lcom/nimbusds/jose/Requirement;

    const-string v3, "RECOMMENDED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/nimbusds/jose/Requirement;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/nimbusds/jose/Requirement;->RECOMMENDED:Lcom/nimbusds/jose/Requirement;

    new-instance v3, Lcom/nimbusds/jose/Requirement;

    const-string v5, "OPTIONAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/nimbusds/jose/Requirement;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/nimbusds/jose/Requirement;->OPTIONAL:Lcom/nimbusds/jose/Requirement;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/nimbusds/jose/Requirement;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/nimbusds/jose/Requirement;->$VALUES:[Lcom/nimbusds/jose/Requirement;

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

.method public static valueOf(Ljava/lang/String;)Lcom/nimbusds/jose/Requirement;
    .locals 1

    const-class v0, Lcom/nimbusds/jose/Requirement;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nimbusds/jose/Requirement;

    return-object p0
.end method

.method public static values()[Lcom/nimbusds/jose/Requirement;
    .locals 1

    sget-object v0, Lcom/nimbusds/jose/Requirement;->$VALUES:[Lcom/nimbusds/jose/Requirement;

    invoke-virtual {v0}, [Lcom/nimbusds/jose/Requirement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nimbusds/jose/Requirement;

    return-object v0
.end method
