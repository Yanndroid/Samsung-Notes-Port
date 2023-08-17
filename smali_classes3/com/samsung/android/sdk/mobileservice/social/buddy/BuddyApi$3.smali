.class Lcom/samsung/android/sdk/mobileservice/social/buddy/BuddyApi$3;
.super Lcom/samsung/android/sdk/mobileservice/social/buddy/IBuddyInfoResultCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/mobileservice/social/buddy/BuddyApi;->getBuddyInfo(Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest;Lcom/samsung/android/sdk/mobileservice/social/buddy/BuddyApi$BuddyInfoCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/mobileservice/social/buddy/BuddyApi;

.field public final synthetic val$callback:Lcom/samsung/android/sdk/mobileservice/social/buddy/BuddyApi$BuddyInfoCallback;

.field public final synthetic val$request:Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/mobileservice/social/buddy/BuddyApi;Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest;Lcom/samsung/android/sdk/mobileservice/social/buddy/BuddyApi$BuddyInfoCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/BuddyApi$3;->this$0:Lcom/samsung/android/sdk/mobileservice/social/buddy/BuddyApi;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/BuddyApi$3;->val$request:Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest;

    iput-object p3, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/BuddyApi$3;->val$callback:Lcom/samsung/android/sdk/mobileservice/social/buddy/BuddyApi$BuddyInfoCallback;

    invoke-direct {p0}, Lcom/samsung/android/sdk/mobileservice/social/buddy/IBuddyInfoResultCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/BuddyApi$3;->this$0:Lcom/samsung/android/sdk/mobileservice/social/buddy/BuddyApi;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBuddyInfo onFailure : code=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], message=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/mobileservice/social/buddy/BuddyApi;->access$700(Lcom/samsung/android/sdk/mobileservice/social/buddy/BuddyApi;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;

    invoke-static {p1}, Lcom/samsung/android/sdk/mobileservice/common/ErrorCodeConvertor;->convertErrorcode(I)I

    move-result v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p2, p1}, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/BuddyApi$3;->val$callback:Lcom/samsung/android/sdk/mobileservice/social/buddy/BuddyApi$BuddyInfoCallback;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/samsung/android/sdk/mobileservice/social/buddy/result/BuddyResult;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lcom/samsung/android/sdk/mobileservice/social/buddy/result/BuddyResult;-><init>(Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/mobileservice/social/buddy/BuddyApi$BuddyInfoCallback;->onResult(Lcom/samsung/android/sdk/mobileservice/social/buddy/result/BuddyResult;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "QUERY_RESULT"

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    new-instance v2, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/mobileservice/common/ErrorCodeConvertor;->convertErrorcode(J)I

    move-result v0

    :goto_0
    invoke-direct {v2, v0}, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;-><init>(I)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;->getCode()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v4, :cond_3

    const-string v0, "contact_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/BuddyApi$3;->this$0:Lcom/samsung/android/sdk/mobileservice/social/buddy/BuddyApi;

    iget-object v5, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/BuddyApi$3;->val$request:Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest;->getItemFlags()I

    move-result v5

    invoke-static {v3, v5, v4}, Lcom/samsung/android/sdk/mobileservice/social/buddy/BuddyApi;->access$600(Lcom/samsung/android/sdk/mobileservice/social/buddy/BuddyApi;II)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/samsung/android/sdk/mobileservice/social/buddy/result/Certificate;

    const-string v4, "certificate"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/mobileservice/social/buddy/result/Certificate;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/BuddyApi$3;->this$0:Lcom/samsung/android/sdk/mobileservice/social/buddy/BuddyApi;

    iget-object v5, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/BuddyApi$3;->val$request:Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest;->getItemFlags()I

    move-result v5

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Lcom/samsung/android/sdk/mobileservice/social/buddy/BuddyApi;->access$600(Lcom/samsung/android/sdk/mobileservice/social/buddy/BuddyApi;II)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v1, Lcom/samsung/android/sdk/mobileservice/social/buddy/result/SyncedContact;

    const-string v4, "raw_contact_id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/mobileservice/social/buddy/result/SyncedContact;-><init>(Ljava/lang/String;)V

    :cond_2
    new-instance p1, Lcom/samsung/android/sdk/mobileservice/social/buddy/result/Buddy;

    invoke-direct {p1, v0, v3, v1}, Lcom/samsung/android/sdk/mobileservice/social/buddy/result/Buddy;-><init>(Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/buddy/result/Certificate;Lcom/samsung/android/sdk/mobileservice/social/buddy/result/SyncedContact;)V

    move-object v1, p1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/BuddyApi$3;->val$callback:Lcom/samsung/android/sdk/mobileservice/social/buddy/BuddyApi$BuddyInfoCallback;

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/social/buddy/result/BuddyResult;

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/sdk/mobileservice/social/buddy/result/BuddyResult;-><init>(Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/mobileservice/social/buddy/BuddyApi$BuddyInfoCallback;->onResult(Lcom/samsung/android/sdk/mobileservice/social/buddy/result/BuddyResult;)V

    return-void
.end method
