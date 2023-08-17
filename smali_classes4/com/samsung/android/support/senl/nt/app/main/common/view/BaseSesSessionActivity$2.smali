.class Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->requestSync(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;

.field public final synthetic val$log:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$2;->val$log:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    const-string v0, "BaseSesSessionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CS1] requestSync# caller : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$2;->val$log:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$RequestSyncCallback;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$RequestSyncCallback;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;)V

    invoke-static {v0}, Lu/h;->o(Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareSyncResultCallback;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BaseSesSessionActivity;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CS1-2] requestSync Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
