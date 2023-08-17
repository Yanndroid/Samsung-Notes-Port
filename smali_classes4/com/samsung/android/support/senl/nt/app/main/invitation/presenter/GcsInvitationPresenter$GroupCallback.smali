.class Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter$GroupCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupResultCallback<",
        "Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult;",
        ">;"
    }
.end annotation


# instance fields
.field private mPresenter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter$GroupCallback;->mPresenter:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onResult(Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter$GroupCallback;->mPresenter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;->d(Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter$GroupCallback;->mPresenter:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter$GroupCallback;->onResult(Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult;)V

    return-void
.end method
