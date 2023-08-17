.class Lcom/samsung/android/scloud/lib/setting/SyncSetting$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/scloud/lib/setting/SyncSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/scloud/lib/setting/SyncSetting;


# direct methods
.method public constructor <init>(Lcom/samsung/android/scloud/lib/setting/SyncSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting$1;->this$0:Lcom/samsung/android/scloud/lib/setting/SyncSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting$1;->this$0:Lcom/samsung/android/scloud/lib/setting/SyncSetting;

    invoke-static {p2}, Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->access$002(Lcom/samsung/android/scloud/lib/setting/SyncSetting;Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC;)Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC;

    iget-object p1, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting$1;->this$0:Lcom/samsung/android/scloud/lib/setting/SyncSetting;

    invoke-static {p1}, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->access$100(Lcom/samsung/android/scloud/lib/setting/SyncSetting;)Lcom/samsung/android/scloud/rpc/SamsungCloudRPCStatus;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCStatus;->onBind(Z)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting$1;->this$0:Lcom/samsung/android/scloud/lib/setting/SyncSetting;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->access$002(Lcom/samsung/android/scloud/lib/setting/SyncSetting;Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC;)Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC;

    return-void
.end method
