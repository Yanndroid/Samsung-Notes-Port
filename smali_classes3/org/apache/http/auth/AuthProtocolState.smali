.class public final enum Lorg/apache/http/auth/AuthProtocolState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/http/auth/AuthProtocolState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CHALLENGED:Lorg/apache/http/auth/AuthProtocolState;

.field private static final synthetic ENUM$VALUES:[Lorg/apache/http/auth/AuthProtocolState;

.field public static final enum FAILURE:Lorg/apache/http/auth/AuthProtocolState;

.field public static final enum HANDSHAKE:Lorg/apache/http/auth/AuthProtocolState;

.field public static final enum SUCCESS:Lorg/apache/http/auth/AuthProtocolState;

.field public static final enum UNCHALLENGED:Lorg/apache/http/auth/AuthProtocolState;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lorg/apache/http/auth/AuthProtocolState;

    const-string v1, "UNCHALLENGED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/http/auth/AuthProtocolState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/auth/AuthProtocolState;->UNCHALLENGED:Lorg/apache/http/auth/AuthProtocolState;

    new-instance v1, Lorg/apache/http/auth/AuthProtocolState;

    const-string v3, "CHALLENGED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/http/auth/AuthProtocolState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/http/auth/AuthProtocolState;->CHALLENGED:Lorg/apache/http/auth/AuthProtocolState;

    new-instance v3, Lorg/apache/http/auth/AuthProtocolState;

    const-string v5, "HANDSHAKE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/http/auth/AuthProtocolState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/http/auth/AuthProtocolState;->HANDSHAKE:Lorg/apache/http/auth/AuthProtocolState;

    new-instance v5, Lorg/apache/http/auth/AuthProtocolState;

    const-string v7, "FAILURE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/http/auth/AuthProtocolState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/http/auth/AuthProtocolState;->FAILURE:Lorg/apache/http/auth/AuthProtocolState;

    new-instance v7, Lorg/apache/http/auth/AuthProtocolState;

    const-string v9, "SUCCESS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/apache/http/auth/AuthProtocolState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/http/auth/AuthProtocolState;->SUCCESS:Lorg/apache/http/auth/AuthProtocolState;

    const/4 v9, 0x5

    new-array v9, v9, [Lorg/apache/http/auth/AuthProtocolState;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lorg/apache/http/auth/AuthProtocolState;->ENUM$VALUES:[Lorg/apache/http/auth/AuthProtocolState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/http/auth/AuthProtocolState;
    .locals 1

    const-class v0, Lorg/apache/http/auth/AuthProtocolState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/http/auth/AuthProtocolState;

    return-object p0
.end method

.method public static values()[Lorg/apache/http/auth/AuthProtocolState;
    .locals 4

    sget-object v0, Lorg/apache/http/auth/AuthProtocolState;->ENUM$VALUES:[Lorg/apache/http/auth/AuthProtocolState;

    array-length v1, v0

    new-array v2, v1, [Lorg/apache/http/auth/AuthProtocolState;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
