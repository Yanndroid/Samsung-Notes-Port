.class Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->updateFolderLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView$5;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView$5;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->e(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView$5;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->setAllItemChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView$5;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->b(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;)Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;->getItemCount()I

    move-result v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->access$200(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView$5;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->access$300(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;)Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method
