.class public final Lcom/microsoft/identity/common/java/AuthenticationConstants$Broker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/java/AuthenticationConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Broker"
.end annotation


# static fields
.field public static final BROKER_ACCOUNT_TYPE:Ljava/lang/String; = "com.microsoft.workaccount"

.field public static final BROKER_CLIENT_ID:Ljava/lang/String; = "29d9ed98-a469-4536-ade2-f981bc1d605e"

.field public static final BROKER_TASK_DEFAULT_TIMEOUT_MILLISECONDS:J

.field public static final CHALLENGE_REQUEST_HEADER:Ljava/lang/String; = "WWW-Authenticate"

.field public static final CHALLENGE_RESPONSE_HEADER:Ljava/lang/String; = "Authorization"

.field public static final CHALLENGE_RESPONSE_TYPE:Ljava/lang/String; = "PKeyAuth"

.field public static final PKEYAUTH_HEADER:Ljava/lang/String; = "x-ms-PKeyAuth"

.field public static final PKEYAUTH_VERSION:Ljava/lang/String; = "1.0"


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/microsoft/identity/common/java/AuthenticationConstants$Broker;->BROKER_TASK_DEFAULT_TIMEOUT_MILLISECONDS:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
