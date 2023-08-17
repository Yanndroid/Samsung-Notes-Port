.class Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector$1;->success()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector$1;->this$0:Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector;->b(Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector$1;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector$1;->this$0:Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector;->c(Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector;)I

    move-result v1

    const-string v2, "GalaxyAppsConnector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentVersionCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GalaxyAppsConnector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "marketVersionCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector$1;->this$0:Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector$1;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector$1;->this$0:Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector;->a(Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector;)Lcom/samsung/android/support/senl/nt/app/updater/connector/INewVersionCheckResetListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector$1;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector$1;->this$0:Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector;->a(Lcom/samsung/android/support/senl/nt/app/updater/connector/GalaxyAppsConnector;)Lcom/samsung/android/support/senl/nt/app/updater/connector/INewVersionCheckResetListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/samsung/android/support/senl/nt/app/updater/connector/INewVersionCheckResetListener;->getResult(I)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
