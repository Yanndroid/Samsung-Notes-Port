.class Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting$1;
.super Lcom/samsung/android/scloud/rpc/ISamsungCloudRPCCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;->start(Ljava/lang/String;Lcom/samsung/android/scloud/rpc/SamsungCloudRPCCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;

.field public final synthetic val$samsungCloudRPCCallback:Lcom/samsung/android/scloud/rpc/SamsungCloudRPCCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;Lcom/samsung/android/scloud/rpc/SamsungCloudRPCCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting$1;->this$0:Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;

    iput-object p2, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting$1;->val$samsungCloudRPCCallback:Lcom/samsung/android/scloud/rpc/SamsungCloudRPCCallback;

    invoke-direct {p0}, Lcom/samsung/android/scloud/rpc/ISamsungCloudRPCCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting$1;->val$samsungCloudRPCCallback:Lcom/samsung/android/scloud/rpc/SamsungCloudRPCCallback;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCCallback;->onComplete(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onProgress(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting$1;->val$samsungCloudRPCCallback:Lcom/samsung/android/scloud/rpc/SamsungCloudRPCCallback;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCCallback;->onProgress(Ljava/lang/String;I)V

    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting$1;->val$samsungCloudRPCCallback:Lcom/samsung/android/scloud/rpc/SamsungCloudRPCCallback;

    invoke-interface {v0, p1}, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCCallback;->onStart(Ljava/lang/String;)V

    return-void
.end method
