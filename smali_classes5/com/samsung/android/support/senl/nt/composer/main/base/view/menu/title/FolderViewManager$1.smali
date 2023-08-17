.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;->init(Landroid/view/View;Landroidx/appcompat/app/AlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;

.field public final synthetic val$parentDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$1;->val$parentDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$Contract;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$Contract;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;->isMde()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$Contract;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$Contract;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;->isMovableFolder()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$Contract;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$Contract;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "folder_picker_dialog"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;)Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialog;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$1;->val$parentDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialog;->setAnchorViewId(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialog;->setAnchorViewId(Landroidx/appcompat/app/AlertDialog;I)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$Contract;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$Contract;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$Contract;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$Contract;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "401"

    const-string v0, "4007"

    goto :goto_1

    :cond_2
    const-string p1, "301"

    const-string v0, "3006"

    :goto_1
    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method
