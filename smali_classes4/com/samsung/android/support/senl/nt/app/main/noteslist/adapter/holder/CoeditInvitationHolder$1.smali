.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditInvitationHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditInvitationHolder;->initButtons(Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditInvitationHolder;

.field public final synthetic val$invitation:Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditInvitationHolder;Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditInvitationHolder$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditInvitationHolder;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditInvitationHolder$1;->val$invitation:Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string p1, "680"

    const-string v0, "7592"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditInvitationHolder$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditInvitationHolder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditInvitationHolder;->access$000(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditInvitationHolder;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditInvitationHolder$1;->val$invitation:Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->getGroupId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditInvitationHolder$1;->val$invitation:Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->getGroupName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;->onCoeditInvitationSelected(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
