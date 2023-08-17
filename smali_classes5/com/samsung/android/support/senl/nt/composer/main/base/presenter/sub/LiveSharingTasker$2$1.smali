.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker$2;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker$2$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x3

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker$2$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker$2;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker$2;->val$subManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerLifeState()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker$2$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker$2;

    iget-boolean v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker$2;->val$isHost:Z

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, v0, p2}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->runLiveSharingActivity(Landroid/app/Activity;ZZ)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker$2$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker$2;

    iget-object p2, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker$2;->val$composerCloser:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker$2;->val$subManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerLifeState()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;->closeComposer(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method
