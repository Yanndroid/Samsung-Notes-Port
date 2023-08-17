.class public Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;
.super Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderCommonHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;

.field private final mAddFolder:Landroid/widget/ImageView;

.field private final mAddFolderIconMarginStart:I

.field private final mCheckBoxMarginStart:I

.field private final mCheckBoxWidth:I

.field private final mDivider:Landroid/view/View;

.field private final mFolderItemContainer:Landroid/view/View;

.field private final mFolderItemLayout:Landroid/view/View;

.field private final mFolderListItemDepthMargin:I

.field private final mFolderListItemMarginStart:I

.field private mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

.field private final mIconLayout:Landroid/view/View;

.field private final mReorder:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;IIIII)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderCommonHolder;-><init>(Landroid/view/View;)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->folder_item_holder:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mFolderItemContainer:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->folder_item_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mFolderItemLayout:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mIconLayout:Landroid/view/View;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->reorder:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mReorder:Landroid/view/View;

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$id;->add_folder:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mAddFolder:Landroid/widget/ImageView;

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$id;->divider:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mDivider:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;

    iput p3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mFolderListItemMarginStart:I

    iput p4, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mFolderListItemDepthMargin:I

    iput p5, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mCheckBoxWidth:I

    iput p6, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mCheckBoxMarginStart:I

    iput p7, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mAddFolderIconMarginStart:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;)Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;

    return-object p0
.end method

.method private decorateFolderToSyncSwitch(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;->getModeIndex()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->initMS()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getFolderSyncSwitch()Landroidx/appcompat/widget/SwitchCompat;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->isSyncWithMS()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;)V

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private decorateMsSyncIcon(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->ms_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;->getModeIndex()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

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

.method private initMS()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getFolderSyncSwitch()Landroidx/appcompat/widget/SwitchCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private needColorFilter(I)Z
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_folder_home_close:I

    if-eq p1, v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_folder_home:I

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private setArrowIconLayout(Ljava/lang/String;ZZI)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mFolderItemLayout:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->arrow_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setArrow(Landroid/widget/ImageView;)V

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_drawer_open:I

    if-nez p3, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x42b40000    # 90.0f

    goto :goto_0

    :cond_0
    const/high16 v2, -0x3d4c0000    # -90.0f

    goto :goto_0

    :cond_1
    move v3, v1

    :cond_2
    :goto_0
    sget-object v4, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v5, :cond_4

    if-ne v3, v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setRotation(F)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p2, :cond_5

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/app/common/util/FolderUtils;->getFolderHomeDrawable(Z)I

    move-result p1

    goto :goto_3

    :cond_5
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_folder:I

    goto :goto_3

    :cond_6
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$AllNotes;->UUID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_all:I

    :goto_3
    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mFolderItemLayout:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$color;->folder_list_item_icon_default_bg_color:I

    invoke-virtual {p4, v0, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p4

    goto :goto_4

    :cond_7
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_folder:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mFolderItemLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/samsung/android/support/senl/nt/app/common/util/FolderUtils;->getAdjustedFolderDefaultColor(ILandroid/content/res/Resources;)I

    move-result p4

    :goto_4
    invoke-direct {p0, p1, p4}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->setIconLayout(II)V

    const/4 p1, 0x1

    if-eqz p2, :cond_9

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mIconLayout:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->ps_button_tts:I

    new-array v2, p1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mIconLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz p3, :cond_8

    sget p3, Lcom/samsung/android/support/senl/nt/app/R$string;->collapse:I

    goto :goto_5

    :cond_8
    sget p3, Lcom/samsung/android/support/senl/nt/app/R$string;->expand:I

    :goto_5
    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_9
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mIconLayout:Landroid/view/View;

    if-eqz p2, :cond_a

    goto :goto_6

    :cond_a
    const/4 p1, 0x2

    :goto_6
    invoke-virtual {p3, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method private setFolderItemMarginStart(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getDepth()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    move v0, v1

    :cond_0
    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mFolderListItemMarginStart:I

    const/4 v2, 0x3

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getViewType()I

    move-result p1

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mFolderListItemDepthMargin:I

    mul-int/2addr p1, v0

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mCheckBoxMarginStart:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mCheckBoxWidth:I

    add-int/2addr p1, v0

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getViewType()I

    move-result p1

    if-ne p1, v2, :cond_3

    :goto_0
    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mAddFolderIconMarginStart:I

    goto :goto_2

    :cond_3
    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mFolderListItemDepthMargin:I

    mul-int/2addr p1, v0

    :goto_1
    add-int/2addr p1, v1

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->setFolderItemLayoutTransition()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mFolderItemLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mFolderItemLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setHolderInfo(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setTitle(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setTitleView(Landroid/widget/TextView;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mFolderItemContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setFolderItemContainer(Landroid/view/View;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mFolderItemLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setFolderItemLayout(Landroid/view/View;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayNameColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setColor(I)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getViewType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setViewType(I)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getDepth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setDepth(I)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->hasChild()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setHasChild(Z)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getViewType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setViewType(I)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getDepth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setDepth(I)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->hasChild()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setHasChild(Z)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    :goto_0
    return-void
.end method

.method private setIconLayout(II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mFolderItemLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mFolderItemLayout:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->needColorFilter(I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mIconLayout:Landroid/view/View;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setIconLayout(Landroid/view/View;)V

    return-void
.end method

.method private setItemMarginStartWithCheckbox(ZLjava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "addFolder:///"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->setFolderItemMarginStart(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public applySelectedViewHolder(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setHighlightSelectedFolder(Z)V

    return-void
.end method

.method public decorate(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V
    .locals 7

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->isExpanded()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->setExpanded(Z)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->setHolderInfo(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;->getLayoutMode()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getViewType()I

    move-result v1

    const-string v2, ", "

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eq v1, v3, :cond_2

    const/16 v6, 0x3ea

    if-eq v1, v6, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mAddFolder:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    and-int/2addr v0, v5

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mDivider:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mDivider:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->decorateIcon(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mAddFolder:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mDivider:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->decorateIcon(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mFolderItemContainer:Landroid/view/View;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/support/senl/nt/app/R$string;->all_notes:I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mAddFolder:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mIconLayout:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mDivider:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mFolderItemContainer:Landroid/view/View;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/support/senl/nt/app/R$string;->add_category:I

    :goto_1
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$string;->button_string_button:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->decorateReorder(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->decorateTitle(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->decorateMsSyncIcon(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->decorateCount(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->decorateFolderToSyncSwitch(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;->getModeIndex()I

    move-result v0

    if-ne v0, v3, :cond_3

    const/4 v4, 0x1

    :cond_3
    invoke-direct {p0, v4, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->setItemMarginStartWithCheckbox(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;->isDimItem(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->setFolderItemDim(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;->setDragListener(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;)V

    return-void
.end method

.method public decorateCount(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V
    .locals 6

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;->getModeIndex()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$AllNotes;->UUID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const-string v3, "FolderInfo"

    invoke-static {v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v3

    invoke-virtual {v3, v1, v4}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getDocumentCount()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v1, v3

    :goto_0
    sget-object v3, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/app/common/util/FolderUtils;->isIgnoreFolder(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {v3, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setCount(I)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/ContentUtils;->convertToArabicNumber(I)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getViewType()I

    move-result p1

    const/4 v3, 0x3

    if-ne p1, v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_5
    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public decorateIcon(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/FolderUtils;->hasChildFolder(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setHasChild(Z)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->isExpanded()Z

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayNameColor()I

    move-result p1

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->setArrowIconLayout(Ljava/lang/String;ZZI)V

    return-void
.end method

.method public decorateReorder(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;->getModeIndex()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;->getLayoutMode()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;->getLayoutMode()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_5

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mReorder:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    const-string v2, "addFolder:///"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mReorder:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mReorder:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/accessibility/VoiceAssistantTTS;->isVoiceAssistantEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mReorder:Landroid/view/View;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mReorder:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->reorder_folder:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mReorder:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/accessibility/VoiceAssistAsButton;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/base/winset/accessibility/VoiceAssistAsButton;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mReorder:Landroid/view/View;

    const-string v1, ""

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mReorder:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->reorder_folder:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mReorder:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public decorateTitle(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mFolderItemLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_my_folders:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$ScreenOffMemo;->UUID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mFolderItemLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->string_screen_off_memo:I

    goto :goto_0

    :cond_1
    const-string v1, "addFolder:///"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->add_category:I

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$AllNotes;->UUID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->all_notes:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getFolderHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mIconLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$id;->arrow_icon:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$id;->icon:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eq p1, v0, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getViewType()I

    move-result p1

    const/4 v5, 0x2

    if-le p1, v5, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    invoke-interface {v0, v3, v4, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;->onFolderSelected(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;IZ)V

    :cond_4
    :goto_2
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getViewType()I

    move-result p1

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;->onItemLongPressed(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;)Z

    move-result p1

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->setTouchInfo(FFLandroid/view/View;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;->onItemPressReleased()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setCheckBoxStatus(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->setItemMarginStartWithCheckbox(ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-interface {v1, v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;->updateContentDescription(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;)V

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;->isCheckedItem(Ljava/lang/String;)Z

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mFolderItemLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->jumpDrawablesToCurrentState()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mFolderItemLayout:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    :goto_1
    return-void
.end method

.method public setFolderItemDim(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const v0, 0x3ecccccd    # 0.4f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mFolderItemContainer:Landroid/view/View;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->isFolderSyncSwitch()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getFolderSyncSwitch()Landroidx/appcompat/widget/SwitchCompat;

    move-result-object v1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mAddFolder:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->arrow_icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setFolderItemLayoutTransition()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mFolderItemLayout:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;->isAnimateItem(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;->mHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;->isAnimateItem(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    :cond_1
    :goto_0
    return-void
.end method
