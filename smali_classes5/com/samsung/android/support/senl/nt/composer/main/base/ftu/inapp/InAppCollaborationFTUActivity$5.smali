.class Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;->dismissStartButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity$5;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity$5;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/ftu/inapp/InAppCollaborationFTUActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
