.class Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->setNotifChannel(Landroid/content/Context;Ljava/util/Map;Lcom/samsung/android/sdk/smp/SmpCallback$Success;Lcom/samsung/android/sdk/smp/SmpCallback$Error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$channels:Ljava/util/Map;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$errorCallback:Lcom/samsung/android/sdk/smp/SmpCallback$Error;

.field public final synthetic val$successCallback:Lcom/samsung/android/sdk/smp/SmpCallback$Success;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;Lcom/samsung/android/sdk/smp/SmpCallback$Success;Lcom/samsung/android/sdk/smp/SmpCallback$Error;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$17;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$17;->val$channels:Ljava/util/Map;

    iput-object p3, p0, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$17;->val$successCallback:Lcom/samsung/android/sdk/smp/SmpCallback$Success;

    iput-object p4, p0, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$17;->val$errorCallback:Lcom/samsung/android/sdk/smp/SmpCallback$Error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$17;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$17;->val$channels:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl;->setNotifChannel(Landroid/content/Context;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$17;->val$successCallback:Lcom/samsung/android/sdk/smp/SmpCallback$Success;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/smp/SmpCallback$Success;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/smp/SmpException$IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/interfaceimpl/SmpInterfaceImpl$17;->val$errorCallback:Lcom/samsung/android/sdk/smp/SmpCallback$Error;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/smp/SmpCallback$Error;->onError(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
