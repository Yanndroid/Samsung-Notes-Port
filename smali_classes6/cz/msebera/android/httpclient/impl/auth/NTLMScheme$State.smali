.class final enum Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/msebera/android/httpclient/impl/auth/NTLMScheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

.field public static final enum CHALLENGE_RECEIVED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

.field public static final enum FAILED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

.field public static final enum MSG_TYPE1_GENERATED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

.field public static final enum MSG_TYPE2_RECEVIED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

.field public static final enum MSG_TYPE3_GENERATED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

.field public static final enum UNINITIATED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    const-string v1, "UNINITIATED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->UNINITIATED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    new-instance v1, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    const-string v3, "CHALLENGE_RECEIVED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->CHALLENGE_RECEIVED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    new-instance v3, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    const-string v5, "MSG_TYPE1_GENERATED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->MSG_TYPE1_GENERATED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    new-instance v5, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    const-string v7, "MSG_TYPE2_RECEVIED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->MSG_TYPE2_RECEVIED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    new-instance v7, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    const-string v9, "MSG_TYPE3_GENERATED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->MSG_TYPE3_GENERATED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    new-instance v9, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    const-string v11, "FAILED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->FAILED:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    const/4 v11, 0x6

    new-array v11, v11, [Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->$VALUES:[Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

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

.method public static valueOf(Ljava/lang/String;)Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;
    .locals 1

    const-class v0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    return-object p0
.end method

.method public static values()[Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;
    .locals 1

    sget-object v0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->$VALUES:[Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    invoke-virtual {v0}, [Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    return-object v0
.end method
