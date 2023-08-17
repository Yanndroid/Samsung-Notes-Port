.class public Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;
.super Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingContract;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView$ItemDividerDecoration;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WidgetListSettingView"

.field private static final WIDGET_LIST_VISIBLE_COUNT:I = 0x3


# instance fields
.field private mAdapter:Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;

.field private mAddButton:Landroid/widget/ImageButton;

.field private mNoteListView:Landroidx/recyclerview/widget/RecyclerView;

.field private mPresenter:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;

.field private mPreview:Landroid/view/View;

.field private mPreviewAdapter:Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter;

.field private mPreviewBackground:Landroid/widget/ImageView;

.field private mPreviewEmptyView:Landroid/widget/TextView;

.field private mPreviewListBackground:Landroid/widget/ImageView;

.field private mPreviewListView:Landroidx/recyclerview/widget/RecyclerView;

.field private mPreviewManager:Lcom/samsung/android/app/notes/widget/setting/view/preview/IWidgetPreviewLayoutManager;

.field private mPreviewSettingView:Landroid/widget/ImageView;

.field private mPreviewTitleView:Landroid/widget/TextView;

.field private mTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;)Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mAdapter:Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;)Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPresenter:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;)Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreviewAdapter:Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreviewListView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;)Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->isOneItemList()V

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->updateEmptyAndListVisibility()V

    return-void
.end method

.method public static bridge synthetic h(Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->updateNoteListLayout()V

    return-void
.end method

.method private initBackgroundColor()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_setting_background_color_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$dimen;->widget_setting_bg_color_overlay:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    sget v2, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_setting_background_color_round_overlay:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->updateRoundCornerViewHeight(Landroid/view/View;I)V

    return-void
.end method

.method private initItemMoveHelper()V
    .locals 2

    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v1, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView$4;-><init>(Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;)V

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mNoteListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private initPreview()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/widget/util/BaseWidgetUtils;->isFoldSettingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/notes/widget/setting/view/preview/TopWidgetListPreviewManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/notes/widget/setting/view/preview/TopWidgetListPreviewManager;-><init>(Landroid/content/res/Resources;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/notes/widget/setting/view/preview/WidgetListPreviewManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/notes/widget/setting/view/preview/WidgetListPreviewManager;-><init>(Landroid/content/res/Resources;)V

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreviewManager:Lcom/samsung/android/app/notes/widget/setting/view/preview/IWidgetPreviewLayoutManager;

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreviewManager:Lcom/samsung/android/app/notes/widget/setting/view/preview/IWidgetPreviewLayoutManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/notes/widget/setting/view/preview/IWidgetPreviewLayoutManager;->initPreview(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreview:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->initWidgetPreview()V

    return-void
.end method

.method private initPreviewSetting()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreviewSettingView:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$drawable;->widget_ic_setting:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->isSupportSettingByQuickOption()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreviewSettingView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreviewSettingView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private initSettingList()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$layout;->widget_setting_control_list:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    sget v3, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_setting_control_menu_container:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_note_list_add:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mAddButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView$1;-><init>(Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_setting_note_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mNoteListView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreview:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mNoteListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->initItemMoveHelper()V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->isOneItemList()V

    new-instance v0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPresenter:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;->getModel()Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->getNoteList()Ljava/util/List;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView$2;-><init>(Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;)V

    new-instance v4, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView$3;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView$3;-><init>(Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;)V

    invoke-direct {v0, v1, v3, v4}, Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;-><init>(Ljava/util/List;Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$OnStartDragListener;Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter$ItemLayoutHeightListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mAdapter:Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mNoteListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mNoteListView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView$ItemDividerDecoration;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView$ItemDividerDecoration;-><init>(Lcom/samsung/android/app/notes/widget/setting/view/a;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->updateNoteListLayout()V

    return-void
.end method

.method private initWidgetPreview()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreview:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreviewTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreview:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreviewBackground:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreview:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreviewListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreview:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->inside_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreviewListBackground:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreview:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_list_empty_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreviewEmptyView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreview:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_settings:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreviewSettingView:Landroid/widget/ImageView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreviewListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPresenter:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;->getModel()Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->getNoteList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->isDarkTheme()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter;-><init>(Ljava/util/List;Z)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreviewAdapter:Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreviewListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->setListWidgetTitleStyle()V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->updateEmptyAndListVisibility()V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->initPreviewSetting()V

    return-void
.end method

.method private isOneItemList()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPresenter:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;->getModel()Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->getNoteList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mNoteListView:Landroidx/recyclerview/widget/RecyclerView;

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private setEnableBackgroundTransparencySeekbar(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_0

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_setting_background_enabled_text_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_setting_seek_bar_thumb_color:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mOpacityText:Landroid/widget/TextView;

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_setting_background_disabled_text_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_setting_seek_bar_progress_color:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mOpacityText:Landroid/widget/TextView;

    const v3, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mOpacityText:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mOpacityText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private setListWidgetTitleStyle()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/widget/util/BaseWidgetUtils;->isFoldWidgetLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreviewTitleView:Landroid/widget/TextView;

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$style;->ShowNoteTitleTextPhone:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreviewTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$dimen;->widget_title_margin_phone:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreviewTitleView:Landroid/widget/TextView;

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$style;->ShowNoteTitleText:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreviewTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$dimen;->widget_title_margin:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreviewTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreviewTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateAddButtonState()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mAddButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPresenter:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;->getModel()Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->getNoteList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mAddButton:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mAddButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method private updateEmptyAndListVisibility()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPresenter:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;->getModel()Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->getNoteList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreviewEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreviewListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreviewEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreviewListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateNoteListHeight()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mNoteListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPresenter:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;->getModel()Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->getNoteList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mNoteListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateNoteListLayout()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->updateNoteListHeight()V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->updateNoteListOverlay()V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->updateAddButtonState()V

    return-void
.end method

.method private updateNoteListOverlay()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPresenter:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;->getModel()Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetListSettingModel;->getNoteList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v2, v1

    int-to-float v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    sget v2, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_setting_note_list_overlay:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    float-to-int v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->updateRoundCornerViewHeight(Landroid/view/View;I)V

    return-void
.end method

.method private updateWidgetPreview()V
    .locals 3

    const-string v0, "WidgetListSettingView"

    const-string/jumbo v1, "updateWidgetPreview#"

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->isDarkTheme()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v0, :cond_0

    sget v2, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_black_theme_text_color:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_white_theme_text_color:I

    :goto_0
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreviewTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreviewEmptyView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreviewSettingView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreviewAdapter:Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter;->updatePreviewItemColor(Z)V

    return-void
.end method


# virtual methods
.method public getPresenter()Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPresenter:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;

    return-object v0
.end method

.method public init()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->init()V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->initPreview()V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->initSettingList()V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->initBackgroundColor()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->updateWidgetSettingDarkMode()V

    return-void
.end method

.method public setEnableBackgroundColorView(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->setEnableBackgroundColorView(Z)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->setEnableBackgroundTransparencySeekbar(Z)V

    return-void
.end method

.method public setPresenter(Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPresenter:Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetListSettingPresenter;

    return-void
.end method

.method public updateNoteListPreview()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->updateNoteListLayout()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreviewAdapter:Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mAdapter:Lcom/samsung/android/app/notes/widget/setting/view/adapter/NoteListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->isOneItemList()V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->updateEmptyAndListVisibility()V

    return-void
.end method

.method public updateWidgetBackgroundColor()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->isBlackBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_list_bg_color_black:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_bg_color:I

    :goto_0
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateWidgetBackgroundColor# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WidgetListSettingView"

    invoke-static {v2, v1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreviewBackground:Landroid/widget/ImageView;

    sget v2, Lcom/samsung/android/support/senl/nt/homewidget/R$drawable;->widget_list_background_white:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->updateBackgroundColor(Landroid/widget/ImageView;II)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->isBlackBackground()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_inside_background_color_black:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_inside_background_color_white:I

    :goto_1
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreviewListBackground:Landroid/widget/ImageView;

    sget v2, Lcom/samsung/android/support/senl/nt/homewidget/R$drawable;->widget_inside_background:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->updateBackgroundColor(Landroid/widget/ImageView;II)V

    return-void
.end method

.method public updateWidgetPreviewAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreviewBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreviewBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreviewListBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->mPreviewListBackground:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public updateWidgetPreviewTheme()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->updateWidgetBackgroundColor()V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->updateWidgetPreview()V

    return-void
.end method

.method public updateWidgetSettingDarkMode()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->menuEnableUpdate()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->updateWidgetBackgroundColor()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->getPreviewAlpha()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->updateWidgetPreviewAlpha(I)V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/widget/setting/view/WidgetListSettingView;->updateWidgetPreview()V

    return-void
.end method
