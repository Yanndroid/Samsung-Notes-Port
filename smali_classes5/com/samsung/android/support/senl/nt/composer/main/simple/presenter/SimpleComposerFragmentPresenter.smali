.class public Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter$DocumentLoadListenerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDocumentLoadManager:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadManager;

.field private final mFragment:Landroidx/fragment/app/Fragment;

.field private final mNoteInfoManager:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;

.field private final mSCVViewModel:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVViewModel;

.field private mSavedInstance:Landroid/os/Bundle;

.field private final mSimpleComposerViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;

.field private final mView:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentContract$IView;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "SimpleComposerFragmentPresenter"

    const-string v1, "SCV"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentContract$IView;Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoArgument;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/Fragment;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;->mFragment:Landroidx/fragment/app/Fragment;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentContract$IView;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;->mSavedInstance:Landroid/os/Bundle;

    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class p3, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVViewModel;

    invoke-virtual {p1, p3}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVViewModel;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;->mSCVViewModel:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVViewModel;

    new-instance p3, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter$1;

    invoke-direct {p3, p0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;)V

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVViewModel;->setOnClearedListener(Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVViewModel$OnClearedListener;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVViewModel;->getNoteInfoManager()Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;->mNoteInfoManager:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;->setNoteInfoArgument(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoArgument;)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadManager;

    invoke-direct {p2}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadManager;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;->mDocumentLoadManager:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadManager;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;

    invoke-direct {p2}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;->mSimpleComposerViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;->init(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;)Landroidx/fragment/app/Fragment;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;->mFragment:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method private attachLoadedDoc(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attachLoadedDoc# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;->mNoteInfoManager:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentContract$IView;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getTitle()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getTitle()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentContract$IView;->updateTitle(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentContract$IView;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;->mSimpleComposerViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentContract$IView;->attachComposerView(Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;->mSimpleComposerViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;->initNote()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;->restoreLastState()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;->mNoteInfoManager:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;->attachLoadedDoc(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    return-void
.end method

.method private restoreLastState()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;->mSavedInstance:Landroid/os/Bundle;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;->mSimpleComposerViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;->restoreState(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;->mSavedInstance:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;->mSCVViewModel:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVViewModel;->setOnClearedListener(Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVViewModel$OnClearedListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;->mSimpleComposerViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;->mDocumentLoadManager:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadManager;->onDestroyed()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;->mSimpleComposerViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public requestLoadDocument()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;->mNoteInfoManager:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;->mNoteInfoManager:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;->attachLoadedDoc(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;->mDocumentLoadManager:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadManager;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;->mNoteInfoManager:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter$DocumentLoadListenerImpl;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter$DocumentLoadListenerImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerFragmentPresenter;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadManager;->loadDocument(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$IComposer;Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentLoadContract$LoadListener;)V

    return-void
.end method
