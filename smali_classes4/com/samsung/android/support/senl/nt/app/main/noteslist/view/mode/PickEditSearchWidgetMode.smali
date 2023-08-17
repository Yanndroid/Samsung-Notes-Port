.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditSearchWidgetMode;
.super Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditSearchMode;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "PickEditSearchWidgetMode"


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditSearchMode;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ModeParams;)V

    return-void
.end method


# virtual methods
.method public getModeIndex()I
    .locals 1

    const/16 v0, 0x19

    return v0
.end method

.method public getSearchCallerModeIndex()I
    .locals 1

    const/16 v0, 0x18

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "PickEditSearchWidgetMode"

    return-object v0
.end method

.method public handleActionDone()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditMode;->sendNoteListToWidget()V

    return-void
.end method

.method public mOnBackKeyListener()Lcom/samsung/android/support/senl/nt/app/common/listener/OnBackKeyListener;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditSearchWidgetMode$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditSearchWidgetMode$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditSearchWidgetMode;)V

    return-object v0
.end method

.method public onBindViewHolder(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;Landroid/widget/CheckBox;Landroid/widget/TextView;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditMode;->onBindViewHolder(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;Landroid/widget/CheckBox;Landroid/widget/TextView;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditMode;->onBindViewHolder(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)V

    return-void
.end method

.method public onDataChanged(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->setNoNotesLayoutVisibility()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->recalculateCheckedData()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getCheckedDataCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->setEditCustomToolbarTitle(I)V

    return-void
.end method

.method public onItemChecked(Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditMode;->onItemCheckedForWidget(Ljava/lang/String;Z)V

    return-void
.end method

.method public onLayout()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditSearchMode;->onLayout()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mActionMenuController:Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->enableEditCustomToolbarTitle()V

    return-void
.end method

.method public onNoteSelected(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->isUuidInCheckedDimedNotes(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditMode;->onNoteSelected(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)V

    return-void
.end method

.method public onSelectAll()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditMode;->onSelectAllForListWidget(Z)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;Landroid/widget/CheckBox;Landroid/widget/TextView;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditMode;->onViewAttachedToWindow(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;Landroid/widget/CheckBox;Landroid/widget/TextView;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditMode;->onViewAttachedToWindow(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)V

    return-void
.end method

.method public setBottomNavigationDoneViewEnabled()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->getCheckedDataCount()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditMode;->setBottomNavigationDoneViewEnabled(Z)V

    return-void
.end method
