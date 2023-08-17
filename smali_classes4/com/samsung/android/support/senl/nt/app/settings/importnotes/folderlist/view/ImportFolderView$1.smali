.class Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/view/penrecyclerview/OnPenMultiSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->initLayout()V
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectedItemPosition(Ljava/util/ArrayList;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;III)V"
        }
    .end annotation

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->b(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;)Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;->toggleSelectedState(Ljava/util/List;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->updateSelectedItemCount()V

    return-void
.end method
