.class Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment;->c(Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment;)Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment$IInvitationJoinDialogResultListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment;->c(Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment;)Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment$IInvitationJoinDialogResultListener;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment;->a(Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment;)I

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment;->b(Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/dialog/InvitationJoinDialogFragment$IInvitationJoinDialogResultListener;->onDecline(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
