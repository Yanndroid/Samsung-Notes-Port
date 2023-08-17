.class Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$CopyThread$ICopyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;->copySdocToExternalDir(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$IAddonsCaller;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;

.field public final synthetic val$caller:Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$IAddonsCaller;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$IAddonsCaller;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$1;->val$caller:Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$IAddonsCaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 2

    const-string v0, "AddonsCopyController"

    const-string v1, "onFailed"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;->b(Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;)Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;->b(Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;)Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;->hideProgress()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;->c(Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$1;->val$caller:Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$IAddonsCaller;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$IAddonsCaller;->onFailed()V

    return-void
.end method

.method public onFinished(Ljava/io/File;Ljava/io/File;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCopyFinished : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AddonsCopyController"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$1;->val$caller:Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$IAddonsCaller;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$IAddonsCaller;->onAddonsCalled(Ljava/io/File;Ljava/io/File;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;->b(Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;)Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;->b(Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;)Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsProgressController;->hideProgress()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$1;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;->c(Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
