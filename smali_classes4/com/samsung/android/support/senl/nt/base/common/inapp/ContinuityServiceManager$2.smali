.class Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$2;
.super Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$2;->this$0:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$SessionStatusListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionStatusChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$2;->this$0:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionStatusChanged# sessionStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$2;->this$0:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->onSessionStatusChanged(I)V

    return-void
.end method
