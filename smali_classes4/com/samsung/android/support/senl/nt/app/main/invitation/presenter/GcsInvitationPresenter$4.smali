.class Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;->requestInvitationRejection(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupResultCallback<",
        "Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;

.field public final synthetic val$position:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;->getResult()Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestInvitationRejection() onResult "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GcsInvitationPresenter"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter$4$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter$4$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter$4;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter$4;->onResult(Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;)V

    return-void
.end method
