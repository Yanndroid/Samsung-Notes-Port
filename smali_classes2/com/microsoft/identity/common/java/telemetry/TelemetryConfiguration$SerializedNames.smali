.class public final Lcom/microsoft/identity/common/java/telemetry/TelemetryConfiguration$SerializedNames;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/java/telemetry/TelemetryConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SerializedNames"
.end annotation


# static fields
.field public static final DEBUG_ENABLED:Ljava/lang/String; = "debug_enabled"

.field public static final NOTIFY_ON_FAILTURE_ONLY:Ljava/lang/String; = "notify_on_failure_only"

.field public static final PII_ENABLED:Ljava/lang/String; = "pii_enabled"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
