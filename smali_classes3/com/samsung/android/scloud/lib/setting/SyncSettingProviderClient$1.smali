.class Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->addSyncStatusObserver(Lcom/samsung/android/scloud/rpc/SamsungCloudRPCStatusObserver;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;

.field public final synthetic val$samsungCloudRPCStatusObserver:Lcom/samsung/android/scloud/rpc/SamsungCloudRPCStatusObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;Landroid/os/Handler;Lcom/samsung/android/scloud/rpc/SamsungCloudRPCStatusObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient$1;->this$0:Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;

    iput-object p3, p0, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient$1;->val$samsungCloudRPCStatusObserver:Lcom/samsung/android/scloud/rpc/SamsungCloudRPCStatusObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "syncStatusObserver : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "complete"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "rcode"

    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p2

    invoke-static {}, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->access$200()I

    move-result v1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient$1;->val$samsungCloudRPCStatusObserver:Lcom/samsung/android/scloud/rpc/SamsungCloudRPCStatusObserver;

    invoke-interface {p2, p1}, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCStatusObserver;->onComplete(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const-string p2, "progress"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient$1;->val$samsungCloudRPCStatusObserver:Lcom/samsung/android/scloud/rpc/SamsungCloudRPCStatusObserver;

    invoke-interface {p1}, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCStatusObserver;->onProgress()V

    goto :goto_0

    :cond_1
    const-string/jumbo p2, "start"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient$1;->val$samsungCloudRPCStatusObserver:Lcom/samsung/android/scloud/rpc/SamsungCloudRPCStatusObserver;

    invoke-interface {p1}, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCStatusObserver;->onStart()V

    goto :goto_0

    :cond_2
    const-string p2, "cancel"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient$1;->val$samsungCloudRPCStatusObserver:Lcom/samsung/android/scloud/rpc/SamsungCloudRPCStatusObserver;

    invoke-interface {p1}, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCStatusObserver;->onCancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->access$100()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method
