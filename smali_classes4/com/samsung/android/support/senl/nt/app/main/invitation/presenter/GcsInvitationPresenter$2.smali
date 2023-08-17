.class Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;->initInvitationList(Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;->a(Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;)Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;->c(Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;)Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/ViewContract$IView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;->a(Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;)Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;->getItemCount()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/ViewContract$IView;->setNoInvitationViewVisibility(Z)V

    return-void
.end method
