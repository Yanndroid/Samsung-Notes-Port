.class Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageMode$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageMode;->showPopupMenu(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageMode;

.field public final synthetic val$anchorView:Landroid/view/View;

.field public final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageMode;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageMode$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageMode;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageMode$1;->val$uuid:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageMode$1;->val$anchorView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->create:I

    const/4 v1, 0x0

    const-string v2, "111"

    if-ne p1, v0, :cond_0

    const-string p1, "1301"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageMode$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageMode;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageMode$1;->val$uuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageMode$1;->val$anchorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageMode$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageMode;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageMode;->getModeIndex()I

    move-result v3

    invoke-virtual {p1, v0, v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->showAddFolderDialog(Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->rename:I

    if-ne p1, v0, :cond_1

    const-string p1, "1302"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageMode$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageMode;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageMode$1;->val$uuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageMode$1;->val$anchorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->showRenameFolderDialog(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->delete:I

    if-ne p1, v0, :cond_2

    const-string p1, "1303"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageMode$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageMode;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageMode$1;->val$uuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageMode$1;->val$anchorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->showDeleteFolderDialog(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->change_color:I

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageMode$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageMode;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageMode$1;->val$uuid:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/mode/ManageMode$1;->val$anchorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;->showChangeColorDialog(Ljava/util/ArrayList;I)V

    :cond_3
    :goto_0
    return v1
.end method
