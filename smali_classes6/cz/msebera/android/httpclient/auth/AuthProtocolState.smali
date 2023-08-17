.class public final enum Lcz/msebera/android/httpclient/auth/AuthProtocolState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcz/msebera/android/httpclient/auth/AuthProtocolState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcz/msebera/android/httpclient/auth/AuthProtocolState;

.field public static final enum CHALLENGED:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

.field public static final enum FAILURE:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

.field public static final enum HANDSHAKE:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

.field public static final enum SUCCESS:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

.field public static final enum UNCHALLENGED:Lcz/msebera/android/httpclient/auth/AuthProtocolState;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    const-string v1, "UNCHALLENGED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/auth/AuthProtocolState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->UNCHALLENGED:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    new-instance v1, Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    const-string v3, "CHALLENGED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcz/msebera/android/httpclient/auth/AuthProtocolState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->CHALLENGED:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    new-instance v3, Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    const-string v5, "HANDSHAKE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcz/msebera/android/httpclient/auth/AuthProtocolState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->HANDSHAKE:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    new-instance v5, Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    const-string v7, "FAILURE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcz/msebera/android/httpclient/auth/AuthProtocolState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->FAILURE:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    new-instance v7, Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    const-string v9, "SUCCESS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcz/msebera/android/httpclient/auth/AuthProtocolState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->SUCCESS:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    const/4 v9, 0x5

    new-array v9, v9, [Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->$VALUES:[Lcz/msebera/android/httpclient/auth/AuthProtocolState;

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

.method public static valueOf(Ljava/lang/String;)Lcz/msebera/android/httpclient/auth/AuthProtocolState;
    .locals 1

    const-class v0, Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    return-object p0
.end method

.method public static values()[Lcz/msebera/android/httpclient/auth/AuthProtocolState;
    .locals 1

    sget-object v0, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->$VALUES:[Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    invoke-virtual {v0}, [Lcz/msebera/android/httpclient/auth/AuthProtocolState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    return-object v0
.end method
