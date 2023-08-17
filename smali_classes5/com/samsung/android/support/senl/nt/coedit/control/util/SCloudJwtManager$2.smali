.class Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;->handleAccessToken()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;

.field public final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager$2;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager$2;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[CS3-2] requestAuthInfo fail : errCode = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , errMsg = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NT/SCloudJwtManager"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager$2;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "NT/SCloudJwtManager"

    const-string v1, "[CS3-1] requestAuthInfo onReceived()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager$2;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;->a(Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager$2;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;->b(Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/util/SCloudJwtManager$2;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
