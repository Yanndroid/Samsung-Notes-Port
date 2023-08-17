.class public Lcom/samsung/android/support/senl/nt/app/updater/connector/MarketConnectorFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMarketConnector()Lcom/samsung/android/support/senl/nt/app/updater/connector/IMarketConnector;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector;-><init>()V

    return-object v0
.end method
