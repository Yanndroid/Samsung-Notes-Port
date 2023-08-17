.class Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment$IInvitationJoinDialogResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;->initInvitationJoinDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccept(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;->b(Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;)Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;->requestInvitationAcceptance(ILjava/lang/String;)V

    return-void
.end method

.method public onDecline(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;->b(Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;)Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/invitation/presenter/GcsInvitationPresenter;->requestInvitationRejection(ILjava/lang/String;)V

    return-void
.end method
