.class final enum Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/auth/NTLMSchemeHC4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CHALLENGE_RECEIVED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

.field private static final synthetic ENUM$VALUES:[Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

.field public static final enum FAILED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

.field public static final enum MSG_TYPE1_GENERATED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

.field public static final enum MSG_TYPE2_RECEVIED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

.field public static final enum MSG_TYPE3_GENERATED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

.field public static final enum UNINITIATED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    const-string v1, "UNINITIATED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;->UNINITIATED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    new-instance v1, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    const-string v3, "CHALLENGE_RECEIVED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;->CHALLENGE_RECEIVED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    new-instance v3, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    const-string v5, "MSG_TYPE1_GENERATED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;->MSG_TYPE1_GENERATED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    new-instance v5, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    const-string v7, "MSG_TYPE2_RECEVIED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;->MSG_TYPE2_RECEVIED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    new-instance v7, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    const-string v9, "MSG_TYPE3_GENERATED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;->MSG_TYPE3_GENERATED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    new-instance v9, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    const-string v11, "FAILED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;->FAILED:Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    const/4 v11, 0x6

    new-array v11, v11, [Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;->ENUM$VALUES:[Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;
    .locals 1

    const-class v0, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    return-object p0
.end method

.method public static values()[Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;
    .locals 4

    sget-object v0, Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;->ENUM$VALUES:[Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    array-length v1, v0

    new-array v2, v1, [Lorg/apache/http/impl/auth/NTLMSchemeHC4$State;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
