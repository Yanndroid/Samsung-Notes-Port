.class Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/addons/AddonsStubManager$IStubPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1;->build()Lcom/samsung/android/support/senl/nt/app/addons/stub/IStubManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private openNote()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->c(Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "addons_document_uuid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->c(Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;)Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "addons_document_path"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1;

    iget-object v3, v3, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->c(Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "highlighttext"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1;

    iget-object v3, v3, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->c(Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "addons_key_start_mode"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1;

    iget-object v4, v4, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->startAddonComposer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public convertNote()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->b(Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->c(Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->d(Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;)Lcom/samsung/android/support/senl/nt/app/addons/IAddonsListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/app/addons/IAddonsListener;->getLockHelper()Lcom/samsung/android/support/senl/nt/app/lock/helper/ILockHelper;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsSdocHelper;->isLockedDocument(Landroid/content/Context;Landroid/os/Bundle;ILcom/samsung/android/support/senl/nt/app/lock/helper/ILockHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->c(Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "addons_document_uuid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->c(Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;)Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "addons_document_path"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

    invoke-static {v2, v0, v1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->e(Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStubUpdateTaskFinished(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1$1;->openNote()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->d(Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;)Lcom/samsung/android/support/senl/nt/app/addons/IAddonsListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1$1;->this$1:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->d(Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;)Lcom/samsung/android/support/senl/nt/app/addons/IAddonsListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/addons/IAddonsListener;->onStubUpdateTaskFinished()V

    :cond_1
    :goto_0
    return-void
.end method
