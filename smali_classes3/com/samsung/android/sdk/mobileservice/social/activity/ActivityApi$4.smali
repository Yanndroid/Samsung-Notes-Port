.class Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi$4;
.super Lcom/samsung/android/sdk/mobileservice/social/common/IBundleProgressResultCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi;->requestActivityImageList(Ljava/util/List;Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi$ActivityImageListResultCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi;

.field public final synthetic val$callback:Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi$ActivityImageListResultCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi;Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi$ActivityImageListResultCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi$4;->this$0:Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi$4;->val$callback:Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi$ActivityImageListResultCallback;

    invoke-direct {p0}, Lcom/samsung/android/sdk/mobileservice/social/common/IBundleProgressResultCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(JLjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi$4;->this$0:Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestActivityImageList onFailure : code=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "], message=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi;->access$1300(Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi$4;->val$callback:Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi$ActivityImageListResultCallback;

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/mobileservice/common/ErrorCodeConvertor;->convertErrorcode(J)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi$4;->val$callback:Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi$ActivityImageListResultCallback;

    new-instance v2, Lcom/samsung/android/sdk/mobileservice/social/activity/result/ActivityResult;

    new-instance v3, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v0, p3, p1}, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {v2, v3, p1}, Lcom/samsung/android/sdk/mobileservice/social/activity/result/ActivityResult;-><init>(Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi$ActivityImageListResultCallback;->onResult(Lcom/samsung/android/sdk/mobileservice/social/activity/result/ActivityResult;)V

    :cond_0
    return-void
.end method

.method public onProgress(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi$4;->this$0:Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi;

    const-string v1, "requestActivityImageList onProgress"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi;->access$1400(Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi$4;->val$callback:Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi$ActivityImageListResultCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi$4;->this$0:Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi;

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi;->access$1500(Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi;Landroid/os/Bundle;)Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityImage;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi$ActivityImageListResultCallback;->onProgress(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi$4;->this$0:Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi;

    const-string v1, "requestActivityImageList onSuccess"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi;->access$1100(Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi$4;->val$callback:Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi$ActivityImageListResultCallback;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/mobileservice/social/activity/result/ActivityResult;

    new-instance v2, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;-><init>(I)V

    iget-object v3, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi$4;->this$0:Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi;

    invoke-static {v3, p1}, Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi;->access$1200(Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/samsung/android/sdk/mobileservice/social/activity/result/ActivityResult;-><init>(Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityApi$ActivityImageListResultCallback;->onResult(Lcom/samsung/android/sdk/mobileservice/social/activity/result/ActivityResult;)V

    :cond_0
    return-void
.end method
