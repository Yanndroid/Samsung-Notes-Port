.class Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/common/widget/IFolderPathLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->initFolderPathLayout()V
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFolderUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->b(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;)Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;->getCurrentFolder()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onFolderLayoutSelected(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFolderLayoutSelected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ST$ImportFolderView"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->b(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;)Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;->setCurrentFolder(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;->updateFolderLayout()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/ImportFolderView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/view/ImportView;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    const-string p1, "552"

    const-string v0, "5513"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
