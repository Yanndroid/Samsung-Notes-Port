.class Lcom/samsung/android/app/notes/MemoApplication$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/MemoApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/MemoApplication;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/MemoApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/MemoApplication$3;->this$0:Lcom/samsung/android/app/notes/MemoApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "MemoApplication"

    const-string v1, "init TAG_SYNC_SETUP"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/MemoApplication$3;->this$0:Lcom/samsung/android/app/notes/MemoApplication;

    invoke-static {v0}, Lcom/samsung/android/app/notes/MemoApplication;->a(Lcom/samsung/android/app/notes/MemoApplication;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/sync/SyncInitializer;->lazyInitialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/model/contractimpl/RequestSyncContractImpl;

    invoke-direct {v1}, Lcom/samsung/android/model/contractimpl/RequestSyncContractImpl;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->setRequestSyncContract(Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    new-instance v1, Lt/b;

    invoke-direct {v1}, Lt/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->setGcsResolver(Lcom/samsung/android/support/senl/nt/base/common/sync/GcsResolverContract;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object v0

    new-instance v1, Lt/a;

    invoke-direct {v1}, Lt/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->setCoeditResolver(Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/model/contractimpl/RequestSamsungAccountContractImpl;

    invoke-direct {v1}, Lcom/samsung/android/model/contractimpl/RequestSamsungAccountContractImpl;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSamsungAccountManager;->setRequestSamsungAccountContract(Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSamsungAccountContract;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSCloudManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSCloudManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/model/contractimpl/RequestSCloudContractImpl;

    invoke-direct {v1}, Lcom/samsung/android/model/contractimpl/RequestSCloudContractImpl;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSCloudManager;->setRequestSCloudContract(Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSCloudContract;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;->getInstance()Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/model/contractimpl/RequestCollectContractImpl;

    invoke-direct {v1}, Lcom/samsung/android/model/contractimpl/RequestCollectContractImpl;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;->setRequestCollectContract(Lcom/samsung/android/support/senl/nt/data/contract/RequestCollectContract;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/contract/DataToComposerManager;->getInstance()Lcom/samsung/android/support/senl/nt/data/contract/DataToComposerManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/model/contractimpl/ParseHyperTextContractImpl;

    invoke-direct {v1}, Lcom/samsung/android/model/contractimpl/ParseHyperTextContractImpl;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/contract/DataToComposerManager;->setParseHyperTextContract(Lcom/samsung/android/support/senl/nt/data/contract/ParseHyperTextContract;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/MemoApplication$3;->this$0:Lcom/samsung/android/app/notes/MemoApplication;

    new-instance v1, Lcom/samsung/android/sdk/smp/SmpActivityLifecycleCallbacks;

    invoke-direct {v1}, Lcom/samsung/android/sdk/smp/SmpActivityLifecycleCallbacks;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->isChinaModel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->isAutoInitEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->setAutoInitEnabled(Z)V

    :cond_0
    return-void
.end method
