.class public Lcom/microsoft/identity/common/internal/telemetry/AndroidTelemetryPropertiesCache;
.super Lcom/microsoft/identity/common/java/telemetry/TelemetryPropertiesCache;
.source "SourceFile"


# static fields
.field private static final SHARED_PREFS_NAME:Ljava/lang/String; = "com.microsoft.common.telemetry-properties"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "RCN_REDUNDANT_NULLCHECK_WOULD_HAVE_BEEN_A_NPE"
        }
    .end annotation

    new-instance v0, Lcom/microsoft/identity/common/SharedPreferenceStringStorage;

    const-string v1, "com.microsoft.common.telemetry-properties"

    invoke-direct {v0, p1, v1}, Lcom/microsoft/identity/common/SharedPreferenceStringStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/microsoft/identity/common/java/telemetry/TelemetryPropertiesCache;-><init>(Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;)V

    const-string v0, "context is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
