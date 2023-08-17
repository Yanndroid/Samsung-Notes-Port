.class public final Lcom/microsoft/identity/common/java/telemetry/TelemetryEventStrings$Api;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/java/telemetry/TelemetryEventStrings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api"
.end annotation


# static fields
.field public static final BROKER_ACQUIRE_TOKEN_INTERACTIVE:Ljava/lang/String; = "201"

.field public static final BROKER_ACQUIRE_TOKEN_SILENT:Ljava/lang/String; = "203"

.field public static final BROKER_COMPLETE_ACQUIRE_TOKEN_INTERACTIVE:Ljava/lang/String; = "202"

.field public static final BROKER_GET_ACCOUNTS:Ljava/lang/String; = "206"

.field public static final BROKER_GET_CURRENT_ACCOUNT:Ljava/lang/String; = "205"

.field public static final BROKER_REMOVE_ACCOUNT:Ljava/lang/String; = "207"

.field public static final BROKER_REMOVE_ACCOUNT_FROM_SHARED_DEVICE:Ljava/lang/String; = "208"

.field public static final GET_BROKER_DEVICE_MODE:Ljava/lang/String; = "204"

.field public static final LOCAL_ACQUIRE_TOKEN_INTERACTIVE:Ljava/lang/String; = "101"

.field public static final LOCAL_ACQUIRE_TOKEN_SILENT:Ljava/lang/String; = "103"

.field public static final LOCAL_COMPLETE_ACQUIRE_TOKEN_INTERACTIVE:Ljava/lang/String; = "1032"

.field public static final LOCAL_DEVICE_CODE_FLOW_ACQUIRE_URL_AND_CODE:Ljava/lang/String; = "108"

.field public static final LOCAL_DEVICE_CODE_FLOW_POLLING:Ljava/lang/String; = "109"

.field public static final LOCAL_GET_ACCOUNTS:Ljava/lang/String; = "106"

.field public static final LOCAL_REMOVE_ACCOUNT:Ljava/lang/String; = "107"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
