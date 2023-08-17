.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialog$OnFolderSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;->initFolderPickerDialog()Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFolderSelected(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$Contract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$Contract;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;->setFolderUuid(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/FolderViewManager;->updateFolderInfo()V

    return-void
.end method
