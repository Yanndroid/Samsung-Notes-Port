.class Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/settings/common/handler/SettingsGlobalSyncStatusHandler$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->initializeGlobalSyncStatusHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$12;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalSyncChanged()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment$12;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;->updateSamsungCloudSyncSummary()V

    return-void
.end method
