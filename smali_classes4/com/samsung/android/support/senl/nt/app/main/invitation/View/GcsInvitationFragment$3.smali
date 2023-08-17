.class Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment$3;
.super Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesInviteReceivedReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesInviteReceivedReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupInvitationReceived()V
    .locals 2

    const-string v0, "GcsInvitationFragment"

    const-string v1, "[CS2] onGcsInvitationReceived"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;->c(Lcom/samsung/android/support/senl/nt/app/main/invitation/View/GcsInvitationFragment;)V

    return-void
.end method
