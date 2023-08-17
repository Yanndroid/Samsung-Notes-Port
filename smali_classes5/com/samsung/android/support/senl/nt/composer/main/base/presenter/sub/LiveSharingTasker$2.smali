.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;->createShowConfirmDialog(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;

.field public final synthetic val$composerCloser:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;

.field public final synthetic val$isHost:Z

.field public final synthetic val$subManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker$2;->val$subManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    iput-boolean p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker$2;->val$isHost:Z

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker$2;->val$composerCloser:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker;Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker$2;->val$subManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerLifeState()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker$2;->val$isHost:Z

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker$2$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker$2$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/LiveSharingTasker$2;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->showConfirmDialog(Landroid/app/Activity;ZLandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
