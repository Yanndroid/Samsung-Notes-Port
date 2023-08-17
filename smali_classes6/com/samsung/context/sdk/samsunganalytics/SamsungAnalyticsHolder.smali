.class public Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalyticsHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static customInstance:Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

.field private static diagnosticInstance:Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isEnableUseInAppLogging()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalyticsHolder;->customInstance:Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalyticsHolder;->diagnosticInstance:Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    :goto_0
    return-object p0
.end method

.method public static putInstance(Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isEnableUseInAppLogging()Z

    move-result p1

    if-eqz p1, :cond_1

    sput-object p0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalyticsHolder;->customInstance:Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    goto :goto_0

    :cond_1
    sput-object p0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalyticsHolder;->diagnosticInstance:Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    :goto_0
    return-void
.end method
