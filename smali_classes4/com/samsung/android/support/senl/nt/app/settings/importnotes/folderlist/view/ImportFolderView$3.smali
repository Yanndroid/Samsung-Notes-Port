.class Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView$3;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView$3;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->access$100(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;)Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method
