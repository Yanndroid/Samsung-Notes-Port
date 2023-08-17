.class Lcom/samsung/android/sdk/mobileservice/social/SocialApi$1;
.super Lcom/samsung/android/sdk/mobileservice/social/buddy/IServiceActivationResultCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/mobileservice/social/SocialApi;->requestServiceActivation(ILcom/samsung/android/sdk/mobileservice/social/SocialApi$ServiceActivationResultCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/mobileservice/social/SocialApi;

.field public final synthetic val$callback:Lcom/samsung/android/sdk/mobileservice/social/SocialApi$ServiceActivationResultCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/mobileservice/social/SocialApi;Lcom/samsung/android/sdk/mobileservice/social/SocialApi$ServiceActivationResultCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/SocialApi$1;->this$0:Lcom/samsung/android/sdk/mobileservice/social/SocialApi;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/SocialApi$1;->val$callback:Lcom/samsung/android/sdk/mobileservice/social/SocialApi$ServiceActivationResultCallback;

    invoke-direct {p0}, Lcom/samsung/android/sdk/mobileservice/social/buddy/IServiceActivationResultCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/SocialApi$1;->this$0:Lcom/samsung/android/sdk/mobileservice/social/SocialApi;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestServiceActivation onFailure : code=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], message=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/mobileservice/social/SocialApi;->access$100(Lcom/samsung/android/sdk/mobileservice/social/SocialApi;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/SocialApi$1;->val$callback:Lcom/samsung/android/sdk/mobileservice/social/SocialApi$ServiceActivationResultCallback;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/sdk/mobileservice/common/ErrorCodeConvertor;->convertErrorcode(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/SocialApi$1;->val$callback:Lcom/samsung/android/sdk/mobileservice/social/SocialApi$ServiceActivationResultCallback;

    new-instance v2, Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;

    new-instance v3, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v0, p2, p1}, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {v2, v3, p1}, Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;-><init>(Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;Z)V

    const/4 p1, -0x1

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/sdk/mobileservice/social/SocialApi$ServiceActivationResultCallback;->onResult(Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;I)V

    :cond_0
    return-void
.end method

.method public onSuccess(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/SocialApi$1;->this$0:Lcom/samsung/android/sdk/mobileservice/social/SocialApi;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestServiceActivation serviceId=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] onSuccess "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/mobileservice/social/SocialApi;->access$000(Lcom/samsung/android/sdk/mobileservice/social/SocialApi;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/SocialApi$1;->val$callback:Lcom/samsung/android/sdk/mobileservice/social/SocialApi$ServiceActivationResultCallback;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;

    new-instance v2, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;-><init>(I)V

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;-><init>(Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;Z)V

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/sdk/mobileservice/social/SocialApi$ServiceActivationResultCallback;->onResult(Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;I)V

    :cond_0
    return-void
.end method
