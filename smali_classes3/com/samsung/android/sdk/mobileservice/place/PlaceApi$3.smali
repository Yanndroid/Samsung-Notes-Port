.class Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$3;
.super Lcom/samsung/android/sdk/mobileservice/place/IPlaceResultCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/mobileservice/place/PlaceApi;->requestPlaceDeletion(Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceResultCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/mobileservice/place/PlaceApi;

.field public final synthetic val$callback:Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceResultCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/mobileservice/place/PlaceApi;Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceResultCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$3;->this$0:Lcom/samsung/android/sdk/mobileservice/place/PlaceApi;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$3;->val$callback:Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceResultCallback;

    invoke-direct {p0}, Lcom/samsung/android/sdk/mobileservice/place/IPlaceResultCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$3;->this$0:Lcom/samsung/android/sdk/mobileservice/place/PlaceApi;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestPlaceDeletion onFailure : code=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], message=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi;->access$500(Lcom/samsung/android/sdk/mobileservice/place/PlaceApi;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$3;->val$callback:Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceResultCallback;

    new-instance v1, Lcom/samsung/android/sdk/mobileservice/place/PlaceResult;

    new-instance v2, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;

    const/4 v3, -0x1

    invoke-direct {v2, v3, p2, p1}, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v2, p1}, Lcom/samsung/android/sdk/mobileservice/place/PlaceResult;-><init>(Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceResultCallback;->onResult(Lcom/samsung/android/sdk/mobileservice/place/PlaceResult;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$3;->this$0:Lcom/samsung/android/sdk/mobileservice/place/PlaceApi;

    const-string v0, "requestPlaceDeletion onSuccess "

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi;->access$400(Lcom/samsung/android/sdk/mobileservice/place/PlaceApi;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$3;->val$callback:Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceResultCallback;

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/place/PlaceResult;

    new-instance v1, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;-><init>(I)V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/mobileservice/place/PlaceResult;-><init>(Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceResultCallback;->onResult(Lcom/samsung/android/sdk/mobileservice/place/PlaceResult;)V

    return-void
.end method
