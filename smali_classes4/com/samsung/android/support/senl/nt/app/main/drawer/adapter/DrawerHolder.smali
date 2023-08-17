.class public Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnContextClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DrawerHolder"


# instance fields
.field private final mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/AdapterContract;

.field private final mFolderItemLayout:Landroid/view/View;

.field private mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

.field private final mItemDivider:Landroid/view/View;

.field private final mManageLayout:Landroid/widget/TextView;

.field private final mMarginStart:I

.field private final mSelectedHolderLayout:Landroid/view/View;

.field private mSettingIcon:Landroid/widget/ImageView;

.field private final mSettingLayout:Landroid/view/View;

.field private mUpdateBadge:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/AdapterContract;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/AdapterContract;

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->folder_item_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mFolderItemLayout:Landroid/view/View;

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->drawer_setting_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mSettingLayout:Landroid/view/View;

    if-eqz p2, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->drawer_setting_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mSettingIcon:Landroid/widget/ImageView;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->drawer_setting_update_badge:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mUpdateBadge:Landroid/view/View;

    :cond_0
    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->item_divider:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mItemDivider:Landroid/view/View;

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->manage_folder:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mManageLayout:Landroid/widget/TextView;

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->selected_holder:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mSelectedHolderLayout:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnContextClickListener(Landroid/view/View$OnContextClickListener;)V

    iput p3, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mMarginStart:I

    return-void
.end method

.method private decorateMsSyncIcon(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->ms_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->hasMsSyncIcon(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private initView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mFolderItemLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mSettingLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mItemDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mManageLayout:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private setArrowIconLayout(ZZZI)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mFolderItemLayout:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->arrow_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setArrow(Landroid/widget/ImageView;)V

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_folder:I

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mFolderItemLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {p4, v3}, Lcom/samsung/android/support/senl/nt/app/common/util/FolderUtils;->getAdjustedFolderDefaultColor(ILandroid/content/res/Resources;)I

    move-result p4

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_1

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_drawer_open:I

    if-nez p3, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v4

    if-eqz v4, :cond_0

    const/high16 v4, 0x42b40000    # 90.0f

    goto :goto_0

    :cond_0
    const/high16 v4, -0x3d4c0000    # -90.0f

    goto :goto_0

    :cond_1
    move v5, v3

    :cond_2
    :goto_0
    if-eqz p1, :cond_4

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p2, :cond_3

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/app/common/util/FolderUtils;->getFolderHomeDrawable(Z)I

    move-result v2

    :cond_3
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p4, Lcom/samsung/android/support/senl/nt/app/R$color;->folder_list_item_filter_icon_color:I

    invoke-virtual {p1, p4}, Landroid/content/Context;->getColor(I)I

    move-result p4

    goto :goto_1

    :cond_4
    if-ne v5, v3, :cond_5

    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setRotation(F)V

    const/4 p1, 0x0

    invoke-virtual {v1, v5, p1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-direct {p0, v2, p4, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->setIconLayout(IIZZ)V

    return-void
.end method

.method private setIconLayout(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mFolderItemLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mFolderItemLayout:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$color;->folder_list_item_filter_icon_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mFolderItemLayout:Landroid/view/View;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setIconLayout(Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mFolderItemLayout:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->arrow_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setArrowIconLayout(Landroid/view/View;)V

    return-void
.end method

.method private setIconLayout(IIZZ)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mFolderItemLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mFolderItemLayout:Landroid/view/View;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->icon:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mFolderItemLayout:Landroid/view/View;

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->ps_button_tts:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz p4, :cond_0

    sget p4, Lcom/samsung/android/support/senl/nt/app/R$string;->collapse:I

    goto :goto_0

    :cond_0
    sget p4, Lcom/samsung/android/support/senl/nt/app/R$string;->expand:I

    :goto_0
    invoke-virtual {v4, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    aput-object p4, v3, v1

    invoke-virtual {p2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setIconLayout(Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mFolderItemLayout:Landroid/view/View;

    sget p3, Lcom/samsung/android/support/senl/nt/app/R$id;->arrow_icon:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setArrowIconLayout(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public applyHighlightSelectedHolder(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setHighlightSelectedFolder(Z)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->selected_holder:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->folder_item_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public decorate(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V
    .locals 12

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->initView()V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getViewType()I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$id;->title:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0x3ef

    const/4 v4, 0x0

    if-eq v1, v3, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->decorateCount(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)I

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    if-nez v5, :cond_2

    new-instance v5, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-direct {v5}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;-><init>()V

    invoke-virtual {v5, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mFolderItemLayout:Landroid/view/View;

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setFolderItemLayout(Landroid/view/View;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setViewType(I)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getDepth()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setDepth(I)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->hasChild()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setHasChild(Z)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayNameColor()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setColor(I)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setTitleView(Landroid/widget/TextView;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mSelectedHolderLayout:Landroid/view/View;

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setSelectedHolderLayout(Landroid/view/View;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v5

    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v7, Lcom/samsung/android/support/senl/nt/app/R$id;->drawer_item_container:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setFolderItemContainer(Landroid/view/View;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    goto :goto_1

    :cond_2
    invoke-virtual {v5, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setViewType(I)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getDepth()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setDepth(I)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->hasChild()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setHasChild(Z)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    :goto_1
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "DrawerHolder"

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v1, :cond_9

    if-eq v1, v8, :cond_9

    if-eq v1, v7, :cond_8

    const/4 v8, 0x4

    const/4 v9, 0x0

    if-eq v1, v8, :cond_7

    packed-switch v1, :pswitch_data_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decoreate# unexpected viewType: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_0
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v8, Lcom/samsung/android/support/senl/nt/app/R$id;->item_divider:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setIconLayout(Landroid/view/View;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mItemDivider:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mItemDivider:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    :pswitch_1
    sget v4, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_delete:I

    invoke-direct {p0, v4}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->setIconLayout(I)V

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$string;->recycle_bin_title:I

    goto/16 :goto_5

    :pswitch_2
    sget v4, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_tag:I

    invoke-direct {p0, v4}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->setIconLayout(I)V

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$string;->tags_title:I

    goto/16 :goto_5

    :pswitch_3
    sget v7, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_drawer_coedit:I

    invoke-direct {p0, v7}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->setIconLayout(I)V

    sget v7, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_title:I

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "\u200f"

    goto :goto_2

    :cond_3
    const-string v10, "\u200e"

    :goto_2
    invoke-interface {v8, v7, v10}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/samsung/android/support/senl/nt/app/R$dimen;->co_edit_beta_view_margin_start:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v11, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_beta:I

    invoke-virtual {v5, v11, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    add-int/2addr v9, v10

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    invoke-virtual {v5, v10, v4, v9, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v4, Lcom/samsung/android/support/senl/nt/app/main/common/view/CenterImageSpan;

    invoke-direct {v4, v5}, Lcom/samsung/android/support/senl/nt/app/main/common/view/CenterImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v5, v7, 0x1

    const/16 v9, 0x21

    invoke-interface {v8, v4, v7, v5, v9}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->updateNewBadge(I)V

    goto/16 :goto_9

    :pswitch_4
    sget v3, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_sharednotebooks:I

    invoke-direct {p0, v3}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->setIconLayout(I)V

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->shared_notebooks:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isMDEFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareBaseReadResolver;->getSharedItemCount()I

    move-result v4

    :cond_4
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$id;->count:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/ContentUtils;->convertToArabicNumber(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->updateNewBadge(I)V

    move v3, v4

    goto/16 :goto_9

    :pswitch_5
    sget v4, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_import:I

    invoke-direct {p0, v4}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->setIconLayout(I)V

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$string;->folder_recently_imported:I

    goto/16 :goto_5

    :pswitch_6
    sget v4, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_drawer_lock:I

    invoke-direct {p0, v4}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->setIconLayout(I)V

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$string;->locked_notes:I

    goto/16 :goto_5

    :pswitch_7
    sget v4, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_favorite:I

    invoke-direct {p0, v4}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->setIconLayout(I)V

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$string;->favorite_notes:I

    goto/16 :goto_5

    :pswitch_8
    sget v4, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_old_notes:I

    invoke-direct {p0, v4}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->setIconLayout(I)V

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$string;->upgradable_notes:I

    goto/16 :goto_5

    :pswitch_9
    sget v4, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_all:I

    invoke-direct {p0, v4}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->setIconLayout(I)V

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$string;->all_notes:I

    goto/16 :goto_5

    :pswitch_a
    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mSettingLayout:Landroid/view/View;

    if-nez v7, :cond_5

    const-string p1, "mSettingLayout is null"

    :goto_3
    invoke-static {v6, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mSettingIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mSettingLayout:Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mSettingLayout:Landroid/view/View;

    sget v8, Lcom/samsung/android/support/senl/nt/app/R$id;->drawer_setting_icon:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setIconLayout(Landroid/view/View;)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mSettingLayout:Landroid/view/View;

    sget v8, Lcom/samsung/android/support/senl/nt/app/R$id;->sub_header_drawer_icon:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setDrawerIcon(Landroid/view/View;)V

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_setting:I

    invoke-virtual {v4, v7, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v7, Lcom/samsung/android/support/senl/nt/app/R$color;->folder_list_item_setting_icon_color:I

    invoke-static {v5, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mSettingIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$string;->action_settings:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result v2

    if-eqz v2, :cond_6

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->action_notes_settings_jp:I

    goto :goto_4

    :cond_6
    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->action_notes_settings:I

    :goto_4
    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mSettingIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v2}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->updateNewBadge(I)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;

    move-result-object v2

    new-instance v4, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder$1;

    invoke-direct {v4, p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;I)V

    invoke-virtual {v2, v4}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->setUpdateSettingsBadgeListener(Lcom/samsung/android/support/senl/nt/app/updater/UpdateSettingsBadgeListener;)V

    goto/16 :goto_9

    :cond_7
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mManageLayout:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mManageLayout:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mManageLayout:Landroid/widget/TextView;

    const/high16 v7, 0x41700000    # 15.0f

    invoke-static {v5, v4, v7}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilLargeSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$string;->manage_folder:I

    :goto_5
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_9

    :cond_8
    sget v4, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_my_folders:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->hasChild()Z

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->isExpanded()Z

    move-result v4

    const/4 v5, -0x1

    invoke-direct {p0, v8, v2, v4, v5}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->setArrowIconLayout(ZZZI)V

    :goto_6
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->decorateMsSyncIcon(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    goto :goto_9

    :cond_9
    if-ne v1, v8, :cond_a

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$string;->string_screen_off_memo:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_7

    :cond_a
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getDepth()I

    move-result v2

    const/4 v5, 0x5

    if-le v2, v5, :cond_b

    move v2, v5

    :cond_b
    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mFolderItemLayout:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v8, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/AdapterContract;

    invoke-interface {v8}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/AdapterContract;->isFreeFormWindow()Z

    move-result v8

    if-eqz v8, :cond_c

    iget v8, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mMarginStart:I

    mul-int/2addr v2, v8

    div-int/2addr v2, v7

    goto :goto_8

    :cond_c
    iget v7, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mMarginStart:I

    mul-int/2addr v2, v7

    :goto_8
    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mFolderItemLayout:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->hasChild()Z

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->isExpanded()Z

    move-result v5

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayNameColor()I

    move-result v7

    invoke-direct {p0, v4, v2, v5, v7}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->setArrowIconLayout(ZZZI)V

    goto :goto_6

    :goto_9
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/AdapterContract;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/AdapterContract;->getFolderUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->applyHighlightSelectedHolder(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/AdapterContract;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/AdapterContract;->setDragListener(Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decorate# viewType "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hasChild : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->hasChild()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isExpanded : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->isExpanded()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public decorateCount(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)I
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getViewType()I

    move-result p1

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$id;->title:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$id;->count:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/AdapterContract;

    invoke-interface {v4}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/AdapterContract;->getModel()Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->getDocumentCount(Ljava/lang/String;)I

    move-result v4

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isNeedFolderCount(I)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/AdapterContract;

    invoke-interface {v5}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/AdapterContract;->getModel()Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->getFolderDocumentCount(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    add-int/2addr v4, v1

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/ContentUtils;->convertToArabicNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-gtz v4, :cond_2

    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/AdapterContract;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/AdapterContract;->isFreeFormWindow()Z

    move-result v1

    const/high16 v5, 0x41500000    # 13.0f

    const/high16 v6, 0x41900000    # 18.0f

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v6}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilLargeSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3, v5}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilLargeSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    :goto_2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v3, 0x2

    const/4 v5, 0x1

    const-string v6, ", "

    if-eq p1, v3, :cond_6

    if-eqz p1, :cond_6

    if-ne p1, v5, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x4

    if-ne p1, v3, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->tipcard_button_content_description:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mManageLayout:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$plurals;->plurals_count_items:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->tipcard_button_content_description:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_6
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->folder_string:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$plurals;->plurals_count_items:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_5
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mFolderItemLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return v4
.end method

.method public decorateIcon(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/FolderUtils;->hasChildFolder(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setHasChild(Z)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getViewType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->isExpanded()Z

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayNameColor()I

    move-result p1

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->setArrowIconLayout(ZZZI)V

    return-void
.end method

.method public getDrawerHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    sget-object v2, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->Drawer:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->isValidEvent([Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-wide/16 v4, 0x12c

    invoke-static {v4, v5, v2}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->setHoldingEventTime(JLcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/AdapterContract;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getViewType()I

    move-result v1

    const/16 v2, 0x3e9

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getViewType()I

    move-result v1

    const/16 v2, 0x3f3

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getViewType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eq p1, v1, :cond_2

    move p1, v0

    goto :goto_0

    :cond_2
    move p1, v3

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/AdapterContract;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getViewType()I

    move-result p1

    const/4 v5, 0x2

    if-le p1, v5, :cond_3

    goto :goto_1

    :cond_3
    move v0, v3

    :cond_4
    :goto_1
    invoke-interface {v1, v2, v4, v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/AdapterContract;->onFolderSelected(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;IZ)V

    :cond_5
    :goto_2
    return-void
.end method

.method public onContextClick(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->onLongClick(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    const/4 p1, 0x1

    new-array v0, p1, [Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->Drawer:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->isValidEvent([Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    const-wide/16 v3, 0x12c

    invoke-static {v3, v4, v1}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->setHoldingEventTime(JLcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/AdapterContract;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getViewType()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/AdapterContract;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/AdapterContract;->onItemLongPressed(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;)V

    return p1

    :cond_2
    :goto_0
    return v2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {v0, v1, p2, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setTouchInfo(FFLandroid/view/View;)V

    const/4 p1, 0x0

    return p1
.end method

.method public updateNewBadge(I)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/16 v2, 0x3e9

    if-ne p1, v2, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper;->checkUpdateNewBadge()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mUpdateBadge:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_6

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mUpdateBadge:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_1
    const/16 v2, 0x3ef

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mFolderItemLayout:Landroid/view/View;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->new_badge:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper;->checkMDENewBadge()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_6

    goto :goto_2

    :cond_3
    const/16 v2, 0x3f0

    if-ne p1, v2, :cond_6

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mFolderItemLayout:Landroid/view/View;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->new_badge:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper;->checkCoeditNewBadge()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/badge/NavigateUpHelper;->checkMDENewBadge()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    :cond_5
    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/AdapterContract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/AdapterContract;->updateNewBadge()V

    return-void
.end method
