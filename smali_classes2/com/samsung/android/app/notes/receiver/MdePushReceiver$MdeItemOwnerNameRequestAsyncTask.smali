.class Lcom/samsung/android/app/notes/receiver/MdePushReceiver$MdeItemOwnerNameRequestAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/receiver/MdePushReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MdeItemOwnerNameRequestAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field public mGroupId:Ljava/lang/String;

.field public mItemId:Ljava/lang/String;

.field public mItemNumber:I

.field public mSpaceId:Ljava/lang/String;

.field public mSpaceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/notes/receiver/MdePushReceiver$MdeItemOwnerNameRequestAsyncTask;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/samsung/android/app/notes/receiver/MdePushReceiver$MdeItemOwnerNameRequestAsyncTask;->mItemId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/notes/receiver/MdePushReceiver$MdeItemOwnerNameRequestAsyncTask;->mSpaceId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/notes/receiver/MdePushReceiver$MdeItemOwnerNameRequestAsyncTask;->mGroupId:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/app/notes/receiver/MdePushReceiver$MdeItemOwnerNameRequestAsyncTask;->mSpaceName:Ljava/lang/String;

    iput p6, p0, Lcom/samsung/android/app/notes/receiver/MdePushReceiver$MdeItemOwnerNameRequestAsyncTask;->mItemNumber:I

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/receiver/MdePushReceiver$MdeItemOwnerNameRequestAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 6

    const-string p1, "MdePushReceiver"

    const/4 v0, 0x3

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->m(I)V

    iget-object v2, p0, Lcom/samsung/android/app/notes/receiver/MdePushReceiver$MdeItemOwnerNameRequestAsyncTask;->mSpaceId:Ljava/lang/String;

    invoke-static {v2, v1}, Lu/h;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/notes/receiver/MdePushReceiver$MdeItemOwnerNameRequestAsyncTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/app/notes/receiver/MdePushReceiver$MdeItemOwnerNameRequestAsyncTask;->mSpaceId:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/app/notes/receiver/MdePushReceiver$MdeItemOwnerNameRequestAsyncTask;->mItemId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareBaseReadResolver;->getSharedItemByItemId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "doInBackground, no item!"

    invoke-static {p1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ly1/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->n(ILcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)V

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getLeaderId()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/d;->b()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/d;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/notes/receiver/MdePushReceiver$MdeItemOwnerNameRequestAsyncTask;->mGroupId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/d;->a(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/c;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ly1/b; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_2

    :goto_1
    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->n(ILcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doInBackground, e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ly1/b;->a()Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    move-result-object p1

    sget-object v2, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->FAIL_WIFI_ONLY_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    if-ne p1, v2, :cond_2

    const-string p1, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    :goto_2
    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->n(ILcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)V

    return-object v1

    :goto_3
    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->n(ILcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)V

    throw p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/receiver/MdePushReceiver$MdeItemOwnerNameRequestAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/receiver/MdePushReceiver$MdeItemOwnerNameRequestAsyncTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/notes/receiver/MdePushReceiver$MdeItemOwnerNameRequestAsyncTask;->mSpaceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/notes/receiver/MdePushReceiver$MdeItemOwnerNameRequestAsyncTask;->mGroupId:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/notes/receiver/MdePushReceiver$MdeItemOwnerNameRequestAsyncTask;->mSpaceName:Ljava/lang/String;

    iget v5, p0, Lcom/samsung/android/app/notes/receiver/MdePushReceiver$MdeItemOwnerNameRequestAsyncTask;->mItemNumber:I

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/notes/receiver/MdePushReceiver;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method
