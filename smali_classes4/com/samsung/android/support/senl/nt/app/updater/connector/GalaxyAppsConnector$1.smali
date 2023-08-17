.class Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/updater/connector/TargetInfo$OnDeviceIdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector;->checkNewVersionOnMarket(Lcom/samsung/android/support/senl/nt/app/updater/connector/INewVersionCheckResetListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector$1;->this$0:Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v1, "GalaxyAppsConnector"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector$1$1;-><init>(Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
