.class Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$2;->readyToInAppCollaboration()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$2;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$2$2;->this$1:Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$2$2;->this$1:Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$2;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;->d(Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;)Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->showCloseButton()V

    return-void
.end method
