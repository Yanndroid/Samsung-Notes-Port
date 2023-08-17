.class public abstract Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mAnchorView:Landroid/view/View;

.field public mPdfPopupMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;

.field public mSharePopupMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;

.field public mWordPopupMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private sendSALog(Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;->SDOC:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;

    if-ne p1, v0, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;->PDF:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;

    if-ne p1, v0, :cond_1

    const-string p1, "2"

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;->DOC:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;

    if-ne p1, v0, :cond_2

    const-string p1, "3"

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;->PPTX:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;

    if-ne p1, v0, :cond_3

    const-string p1, "4"

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;->IMAGE:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;

    if-ne p1, v0, :cond_4

    const-string p1, "5"

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;->TEXT:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;

    if-ne p1, v0, :cond_5

    const-string p1, "6"

    goto :goto_0

    :cond_5
    const-string p1, ""

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->getSALogEventId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "741"

    invoke-static {v1, v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public executeShareSaveNote(Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$Presenter;)V
    .locals 0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$Presenter;->executeShareNote()V

    return-void
.end method

.method public getOnDismissListener()Landroid/widget/PopupWindow$OnDismissListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getSALogEventId()Ljava/lang/String;
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public getTitle(Landroid/app/Activity;)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public hidePopupMenu()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hidePopupMenu#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->mSharePopupMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;->hidePopupMenu()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->mPdfPopupMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;->hidePopupMenu()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->mWordPopupMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;->hidePopupMenu()V

    :cond_2
    return-void
.end method

.method public onItemClick(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$Presenter;Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;)V
    .locals 1

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$Presenter;->stopRecordAndAudio()V

    invoke-interface {p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$Presenter;->setShareType(Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;->DOC:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->shareWord(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$Presenter;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;->PDF:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;

    if-ne p3, p1, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$PdfShareType;->RASTER:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$PdfShareType;

    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$Presenter;->setPdfShareType(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$PdfShareType;)V

    :cond_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->executeShareSaveNote(Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$Presenter;)V

    :goto_0
    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->sendSALog(Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;)V

    return-void
.end method

.method public shareWord(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$Presenter;)V
    .locals 2

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$Presenter;->canShowWordExportOption()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->showWordPopupMenu(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$Presenter;)V

    goto :goto_0

    :cond_0
    const-string p1, "Settings"

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "settings_export"

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->executeShareSaveNote(Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$Presenter;)V

    :goto_0
    return-void
.end method

.method public showPdfPopupMenu(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$Presenter;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "showPdfPopupMenu#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->mPdfPopupMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PdfTypeMenu;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/PdfTypeMenu;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->mPdfPopupMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->mPdfPopupMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu$2;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$Presenter;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;->setOnItemClickListener(Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu$OnItemClickListener;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->mPdfPopupMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->getOnDismissListener()Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->mPdfPopupMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->mAnchorView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->getTitle(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;->showPopupMenu(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public showPopupMenu(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$Presenter;Landroid/view/View;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "showPopupMenu#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->mAnchorView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->mSharePopupMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareTypeMenu;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareTypeMenu;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->mSharePopupMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->mSharePopupMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareTypeMenu;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$Presenter;->getShareMenuList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareTypeMenu;->setMenuList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->mSharePopupMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$Presenter;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;->setOnItemClickListener(Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu$OnItemClickListener;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->mSharePopupMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->getOnDismissListener()Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->mSharePopupMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->getTitle(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, p3, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;->showPopupMenu(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public showWordPopupMenu(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$Presenter;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "showWordPopupMenu#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->mWordPopupMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/WordTypeMenu;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/WordTypeMenu;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->mWordPopupMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->mWordPopupMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu$3;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$Presenter;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;->setOnItemClickListener(Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu$OnItemClickListener;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->mWordPopupMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;

    check-cast p2, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/WordTypeMenu;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->mAnchorView:Landroid/view/View;

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/WordTypeMenu;->showPopupMenu(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method
