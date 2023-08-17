.class Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/AdapterContract$IPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/ViewContract$IView;Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/ViewContract$IRecyclerView;)V
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;->e(Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;ILcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;)V

    return-void
.end method
