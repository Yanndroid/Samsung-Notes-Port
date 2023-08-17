.class public final enum Lcom/nimbusds/jose/Payload$Origin;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/Payload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Origin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nimbusds/jose/Payload$Origin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nimbusds/jose/Payload$Origin;

.field public static final enum BASE64URL:Lcom/nimbusds/jose/Payload$Origin;

.field public static final enum BYTE_ARRAY:Lcom/nimbusds/jose/Payload$Origin;

.field public static final enum JSON:Lcom/nimbusds/jose/Payload$Origin;

.field public static final enum JWS_OBJECT:Lcom/nimbusds/jose/Payload$Origin;

.field public static final enum SIGNED_JWT:Lcom/nimbusds/jose/Payload$Origin;

.field public static final enum STRING:Lcom/nimbusds/jose/Payload$Origin;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/nimbusds/jose/Payload$Origin;

    const-string v1, "JSON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nimbusds/jose/Payload$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nimbusds/jose/Payload$Origin;->JSON:Lcom/nimbusds/jose/Payload$Origin;

    new-instance v1, Lcom/nimbusds/jose/Payload$Origin;

    const-string v3, "STRING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/nimbusds/jose/Payload$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/nimbusds/jose/Payload$Origin;->STRING:Lcom/nimbusds/jose/Payload$Origin;

    new-instance v3, Lcom/nimbusds/jose/Payload$Origin;

    const-string v5, "BYTE_ARRAY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/nimbusds/jose/Payload$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/nimbusds/jose/Payload$Origin;->BYTE_ARRAY:Lcom/nimbusds/jose/Payload$Origin;

    new-instance v5, Lcom/nimbusds/jose/Payload$Origin;

    const-string v7, "BASE64URL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/nimbusds/jose/Payload$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/nimbusds/jose/Payload$Origin;->BASE64URL:Lcom/nimbusds/jose/Payload$Origin;

    new-instance v7, Lcom/nimbusds/jose/Payload$Origin;

    const-string v9, "JWS_OBJECT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/nimbusds/jose/Payload$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/nimbusds/jose/Payload$Origin;->JWS_OBJECT:Lcom/nimbusds/jose/Payload$Origin;

    new-instance v9, Lcom/nimbusds/jose/Payload$Origin;

    const-string v11, "SIGNED_JWT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/nimbusds/jose/Payload$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/nimbusds/jose/Payload$Origin;->SIGNED_JWT:Lcom/nimbusds/jose/Payload$Origin;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/nimbusds/jose/Payload$Origin;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/nimbusds/jose/Payload$Origin;->$VALUES:[Lcom/nimbusds/jose/Payload$Origin;

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

.method public static valueOf(Ljava/lang/String;)Lcom/nimbusds/jose/Payload$Origin;
    .locals 1

    const-class v0, Lcom/nimbusds/jose/Payload$Origin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nimbusds/jose/Payload$Origin;

    return-object p0
.end method

.method public static values()[Lcom/nimbusds/jose/Payload$Origin;
    .locals 1

    sget-object v0, Lcom/nimbusds/jose/Payload$Origin;->$VALUES:[Lcom/nimbusds/jose/Payload$Origin;

    invoke-virtual {v0}, [Lcom/nimbusds/jose/Payload$Origin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nimbusds/jose/Payload$Origin;

    return-object v0
.end method
