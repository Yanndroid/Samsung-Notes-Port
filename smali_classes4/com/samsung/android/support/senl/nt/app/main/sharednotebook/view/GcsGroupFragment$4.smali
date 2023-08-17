.class Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupHolder$GcsGroupHolderContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongPressed(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupHolder;)Z
    .locals 6

    const-string v0, "GcsGroupFragment"

    const-string v1, "GcsGroupHolder# onItemLongPressed"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    sget-object v2, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->Default:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->isValidEvent([Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    const-wide/16 v3, 0x12c

    invoke-static {v3, v4, v2}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->setHoldingEventTime(JLcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupHolder;->isOwnedByMe()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesGroupReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesGroupReadResolver;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupHolder;->getGroupID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesGroupBaseReadResolver;->isLocalGroupType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_group_edit_menu_block_toast_message:I

    invoke-static {p1, v1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupHolder;->getSpaceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->g(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupHolder;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->h(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupEditMenuDialog;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->f(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupHolder;->isOwnedByMe()Z

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->b(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;)Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupEditMenuDialog$IGroupEditMenuDialog;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupEditMenuDialog;-><init>(Landroid/content/Context;Ljava/lang/String;ZLcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupEditMenuDialog$IGroupEditMenuDialog;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupEditMenuDialog;->show()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->isDexMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupHolder;->initLongClick()V

    :cond_2
    return v0
.end method

.method public onItemSelected(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupHolder;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->Drawer:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->isValidEvent([Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->setHoldingEventTime(JLcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->a(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;)Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$Contract;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$Contract;->onSpaceSelected(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupHolder;)V

    return-void
.end method
