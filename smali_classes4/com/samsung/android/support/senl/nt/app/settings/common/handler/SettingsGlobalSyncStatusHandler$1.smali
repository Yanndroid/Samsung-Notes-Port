.class Lcom/samsung/android/support/senl/nt/app/settings/common/handler/SettingsGlobalSyncStatusHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/common/handler/SettingsGlobalSyncStatusHandler;->initSyncStatusObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/common/handler/SettingsGlobalSyncStatusHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/common/handler/SettingsGlobalSyncStatusHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/handler/SettingsGlobalSyncStatusHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/common/handler/SettingsGlobalSyncStatusHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/handler/SettingsGlobalSyncStatusHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/common/handler/SettingsGlobalSyncStatusHandler;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/common/handler/SettingsGlobalSyncStatusHandler$1$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/common/handler/SettingsGlobalSyncStatusHandler$1$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/common/handler/SettingsGlobalSyncStatusHandler$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
