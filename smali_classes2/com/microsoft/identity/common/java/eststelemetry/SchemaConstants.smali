.class public Lcom/microsoft/identity/common/java/eststelemetry/SchemaConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/java/eststelemetry/SchemaConstants$Value;,
        Lcom/microsoft/identity/common/java/eststelemetry/SchemaConstants$Key;
    }
.end annotation


# static fields
.field public static final CURRENT_REQUEST_HEADER_NAME:Ljava/lang/String; = "x-client-current-telemetry"

.field public static final CURRENT_SCHEMA_VERSION:Ljava/lang/String; = "2"

.field public static final HEADER_DATA_LIMIT:I = 0xed8

.field public static final LAST_REQUEST_HEADER_NAME:Ljava/lang/String; = "x-client-last-telemetry"

.field public static final SCHEMA_VERSION_KEY:Ljava/lang/String; = "schema_version"

.field public static final SEPARATOR_COMMA:Ljava/lang/String; = ","

.field public static final SEPARATOR_PIPE:Ljava/lang/String; = "|"

.field private static final currentRequestPlatformFields:[Ljava/lang/String;

.field private static final lastRequestPlatformFields:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-string v0, "Microsoft.MSAL.account_status"

    const-string v1, "Microsoft.MSAL.id_token_status"

    const-string v2, "Microsoft.MSAL.at_status"

    const-string v3, "Microsoft.MSAL.rt_status"

    const-string v4, "Microsoft.MSAL.frt_status"

    const-string v5, "Microsoft.MSAL.mrrt_status"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/common/java/eststelemetry/SchemaConstants;->currentRequestPlatformFields:[Ljava/lang/String;

    const-string v0, "is_all_telemetry_data_sent"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/common/java/eststelemetry/SchemaConstants;->lastRequestPlatformFields:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentRequestPlatformFields()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/java/eststelemetry/SchemaConstants;->currentRequestPlatformFields:[Ljava/lang/String;

    return-object v0
.end method

.method public static getLastRequestPlatformFields()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/java/eststelemetry/SchemaConstants;->lastRequestPlatformFields:[Ljava/lang/String;

    return-object v0
.end method

.method public static isCurrentPlatformField(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/java/eststelemetry/SchemaConstants;->currentRequestPlatformFields:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isLastPlatformField(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/java/eststelemetry/SchemaConstants;->lastRequestPlatformFields:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
