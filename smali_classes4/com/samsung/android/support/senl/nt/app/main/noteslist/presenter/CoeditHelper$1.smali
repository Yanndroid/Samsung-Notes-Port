.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper$1;
.super Lcom/samsung/android/support/senl/nt/app/sync/receiver/CoeditInviteReceivedReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/sync/receiver/CoeditInviteReceivedReceiver;-><init>()V

    return-void
.end method

.method private notifyAcceptInviteNotification(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "group_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "group_name"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "group_requester_name"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "CoeditHelper"

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "notifyAcceptInviteNotification#"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/app/common/CoeditInvitationMenuBadgeUpdater;->setInvitationListHasBadgePref(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getAbsFragment()Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$id;->toolbar:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/Toolbar;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper;->updateDrawerIconWithBadge(Landroidx/appcompat/widget/Toolbar;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;

    invoke-direct {v2, p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0, v1, p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/CoeditLaunchNotification;->launchInvitationNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyAcceptInviteNotification# Null "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onGroupInvitationReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "CoeditHelper"

    const-string v1, "onGroupInvitationReceived"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;->getSpaceImpl()Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/CoeditSpaceImpl;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/CoeditSpaceImpl;->onGroupInvitationReceived()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper$1;->notifyAcceptInviteNotification(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onNotificationOperated(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNotificationOperated# groupId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoeditHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper$IPresenter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper$IPresenter;->removeCoeditInvitation(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/CoeditInvitationMenuBadgeUpdater;->setInvitationListHasBadgePref(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;->d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/CoeditHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getAbsFragment()Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->toolbar:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper;->updateDrawerIconWithBadge(Landroidx/appcompat/widget/Toolbar;)V

    return-void
.end method
