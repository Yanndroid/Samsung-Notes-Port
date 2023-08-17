.class public final Lcom/microsoft/identity/common/java/telemetry/TelemetryEventStrings$Device;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/java/telemetry/TelemetryEventStrings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Device"
.end annotation


# static fields
.field public static final ID:Ljava/lang/String; = "Microsoft.MSAL.device_guid"

.field public static final MANUFACTURER:Ljava/lang/String; = "Microsoft.MSAL.device_manufacturer"

.field public static final MODEL:Ljava/lang/String; = "Microsoft.MSAL.device_model"

.field public static final NAME:Ljava/lang/String; = "Microsoft.MSAL.device_name"

.field public static final TIMEZONE:Ljava/lang/String; = "Microsoft.MSAL.time_zone"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
