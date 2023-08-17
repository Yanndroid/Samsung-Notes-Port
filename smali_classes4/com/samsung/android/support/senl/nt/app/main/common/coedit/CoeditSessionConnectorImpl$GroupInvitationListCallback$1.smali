.class Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$GroupInvitationListCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$GroupInvitationListCallback;->onResult(Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$GroupInvitationListCallback;

.field public final synthetic val$appGroupResultList:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$GroupInvitationListCallback;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$GroupInvitationListCallback$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$GroupInvitationListCallback;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$GroupInvitationListCallback$1;->val$appGroupResultList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$GroupInvitationListCallback$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$GroupInvitationListCallback;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$GroupInvitationListCallback;->a(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$GroupInvitationListCallback;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$GroupInvitationListCallback$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$GroupInvitationListCallback;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$GroupInvitationListCallback;->a(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$GroupInvitationListCallback;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$InvitationResult;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$GroupInvitationListCallback$1;->val$appGroupResultList:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$InvitationResult;->onResult(Ljava/util/List;)V

    :cond_0
    return-void
.end method
