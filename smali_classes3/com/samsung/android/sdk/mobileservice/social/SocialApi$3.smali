.class Lcom/samsung/android/sdk/mobileservice/social/SocialApi$3;
.super Lcom/samsung/android/sdk/mobileservice/social/common/IBundleResultCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/mobileservice/social/SocialApi;->requestServiceNumber(Lcom/samsung/android/sdk/mobileservice/social/SocialApi$ServiceNumberResultCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/mobileservice/social/SocialApi;

.field public final synthetic val$callback:Lcom/samsung/android/sdk/mobileservice/social/SocialApi$ServiceNumberResultCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/mobileservice/social/SocialApi;Lcom/samsung/android/sdk/mobileservice/social/SocialApi$ServiceNumberResultCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/SocialApi$3;->this$0:Lcom/samsung/android/sdk/mobileservice/social/SocialApi;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/SocialApi$3;->val$callback:Lcom/samsung/android/sdk/mobileservice/social/SocialApi$ServiceNumberResultCallback;

    invoke-direct {p0}, Lcom/samsung/android/sdk/mobileservice/social/common/IBundleResultCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(JLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/SocialApi$3;->this$0:Lcom/samsung/android/sdk/mobileservice/social/SocialApi;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestServiceNumber onFailure : code=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "], message=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/mobileservice/social/SocialApi;->access$500(Lcom/samsung/android/sdk/mobileservice/social/SocialApi;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/mobileservice/common/ErrorCodeConvertor;->convertErrorcode(J)I

    move-result v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p3, p1}, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/SocialApi$3;->val$callback:Lcom/samsung/android/sdk/mobileservice/social/SocialApi$ServiceNumberResultCallback;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResult;

    const/4 p3, 0x0

    invoke-direct {p2, v0, p3}, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResult;-><init>(Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/mobileservice/social/SocialApi$ServiceNumberResultCallback;->onResult(Lcom/samsung/android/sdk/mobileservice/common/result/CommonResult;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/SocialApi$3;->this$0:Lcom/samsung/android/sdk/mobileservice/social/SocialApi;

    const-string v1, "requestServiceNumber onSuccess "

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/mobileservice/social/SocialApi;->access$400(Lcom/samsung/android/sdk/mobileservice/social/SocialApi;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/SocialApi$3;->val$callback:Lcom/samsung/android/sdk/mobileservice/social/SocialApi$ServiceNumberResultCallback;

    if-eqz v0, :cond_0

    const-string v0, "service_number_cnt"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "contains_my_number"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "service_number_list"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "my_phone_number"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/samsung/android/sdk/mobileservice/social/SocialApi$3;->val$callback:Lcom/samsung/android/sdk/mobileservice/social/SocialApi$ServiceNumberResultCallback;

    new-instance v4, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResult;

    new-instance v5, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;-><init>(I)V

    new-instance v6, Lcom/samsung/android/sdk/mobileservice/social/social/result/ServiceNumber;

    invoke-direct {v6, v0, v1, v2, p1}, Lcom/samsung/android/sdk/mobileservice/social/social/result/ServiceNumber;-><init>(IZLjava/util/List;Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResult;-><init>(Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Lcom/samsung/android/sdk/mobileservice/social/SocialApi$ServiceNumberResultCallback;->onResult(Lcom/samsung/android/sdk/mobileservice/common/result/CommonResult;)V

    :cond_0
    return-void
.end method
