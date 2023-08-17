.class public interface abstract Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession$ConnectionResultCallback;,
        Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession$ServiceConnectionListener;,
        Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession$OnAgentUpdatedListener;
    }
.end annotation


# static fields
.field public static final API_STATUS_BLOCKED_BY_POLICY:I = -0x4

.field public static final API_STATUS_FORCE_UPDATE_REQUIRED:I = -0x2

.field public static final API_STATUS_MIN:I = -0x4

.field public static final API_STATUS_NOT_SUPPORTED:I = -0x1

.field public static final API_STATUS_NOT_SUPPORT_SDK_VERSION:I = -0x3

.field public static final API_STATUS_SUPPORTED:I = 0x1

.field public static final API_STATUS_UNDEFINED:I = -0x63

.field public static final INVALID_PACKAGE_VERSION:J = 0x0L

.field public static final MIN_AGENT_SUPPORT_VERSION:I = 0x0

.field public static final SERVICE_STATUS_BLOCKED_BY_POLICY:I = 0x4

.field public static final SERVICE_STATUS_FORCE_UPDATE_REQUIRED:I = 0x2

.field public static final SERVICE_STATUS_MAX:I = 0x4

.field public static final SERVICE_STATUS_NOT_SUPPORTED:I = 0x1

.field public static final SERVICE_STATUS_NOT_SUPPORT_SDK_VERSION:I = 0x3

.field public static final SERVICE_STATUS_OK:I = 0x0

.field public static final SERVICE_STATUS_UNDEFINED:I = 0x63


# virtual methods
.method public abstract connect()V
.end method

.method public abstract disconnect()V
.end method

.method public abstract getLatestAgentVersionInGalaxyApps()J
.end method

.method public abstract getLatestSaAgentVersionInGalaxyApps()J
.end method

.method public abstract getSamsungAccountAgentVersion()J
.end method

.method public abstract getSamsungExperienceServiceAgentVersion()J
.end method

.method public abstract getServiceStatus(Ljava/lang/String;)I
.end method

.method public abstract isAddedService(Ljava/lang/String;)Z
.end method

.method public abstract isServiceConnected(Ljava/lang/String;)Z
.end method

.method public abstract isSessionConnected()Z
.end method

.method public abstract isSupportedApi(Ljava/lang/String;)Z
.end method

.method public abstract reconnect()V
.end method

.method public abstract setOnAgentUpdatedListener(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession$OnAgentUpdatedListener;)V
.end method

.method public abstract setSessionListener(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession$ServiceConnectionListener;)V
.end method
