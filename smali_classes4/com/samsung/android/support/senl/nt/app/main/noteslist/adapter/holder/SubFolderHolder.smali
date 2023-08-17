.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;
.super Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SubFolderHolder"


# instance fields
.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mOnContextClickListener:Landroid/view/View$OnContextClickListener;

.field private final mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private final mSubFolderHolderInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubFolderHolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubFolderHolderInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;II)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;-><init>(Landroid/view/View;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;->mSubFolderHolderInfoList:Ljava/util/List;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;->mSubFolderHolderInfoMap:Ljava/util/Map;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;->mOnContextClickListener:Landroid/view/View$OnContextClickListener;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder$4;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder$4;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->getFolderSpanHolderType(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mHolderType:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SubFolderHolder# create, HolderType : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mHolderType:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SubFolderHolder"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

    return-object p0
.end method

.method private decorateFolderBackground(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayNameColor()I

    move-result p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/util/DrawableUtils;->getColorStyle(Landroid/content/Context;I)I

    move-result v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$style;->DefaultFolderColorGrey:I

    if-ne v1, v2, :cond_1

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$color;->sub_folder_icon_default_bg_color:I

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private decorateMsIcon(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->ms_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

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

    if-nez p1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$dimen;->sub_folder_item_ms_icon_size:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private init(Landroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder$5;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder$5;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->sub_folder_color_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$color;->sub_folder_icon_default_bg_color:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method


# virtual methods
.method public decorate(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;Ljava/lang/String;)V
    .locals 5

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->folders:[Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;->getSubFoldersSpan()I

    move-result p2

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    if-ge v0, p2, :cond_4

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;->getSubFolderViewById(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;->init(Landroid/view/View;)V

    array-length v2, p1

    if-ge v0, v2, :cond_2

    aget-object v2, p1, v0

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p3}, Landroid/view/View;->setVisibility(I)V

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->sub_folder_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;->mOnContextClickListener:Landroid/view/View$OnContextClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnContextClickListener(Landroid/view/View$OnContextClickListener;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    aget-object v2, p1, v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;->decorateSubFolderHolder(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;ILandroid/view/View;)V

    aget-object v2, p1, v0

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$id;->sub_folder_color_bg:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;->decorateFolderBackground(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Landroid/view/View;)V

    aget-object v2, p1, v0

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;->decorateMsIcon(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;Landroid/view/View;)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;->mSubFolderHolderInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v0, :cond_3

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;->mSubFolderHolderInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubFolderHolderInfo;

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubFolderHolderInfo;->setIndex(I)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubFolderHolderInfo;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->setEnable(Z)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubFolderHolderInfo;

    invoke-interface {v2, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mIsBottomOfSameViewType:Z

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;->getModeIndex()I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isRecyclebinMode(I)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/samsung/android/support/senl/nt/app/R$dimen;->sub_folder_layout_recycle_bin_margin_bottom:I

    goto :goto_3

    :cond_5
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/samsung/android/support/senl/nt/app/R$dimen;->sub_folder_layout_margin_bottom:I

    :goto_3
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_4

    :cond_6
    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_4
    return-void
.end method

.method public decorateSubFolderHolder(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;ILandroid/view/View;)V
    .locals 10
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "screenOffMemo:///"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->string_screen_off_memo:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$id;->title:I

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/app/common/widget/HoverPopupTextView;

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$id;->count:I

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/android/support/senl/nt/app/R$color;->background_color_white:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v3, v0, v5, v6, v7}, Lcom/samsung/android/support/senl/nt/app/common/widget/HoverPopupTextView;->setTitleOriginalTitle(Ljava/lang/CharSequence;IZZ)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getDocumentCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v0, v5

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/ContentUtils;->convertToArabicNumber(I)Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x3e8

    if-lt v0, v8, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    new-array v8, v7, [Ljava/lang/Object;

    int-to-float v0, v0

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v8, v6

    const-string v0, "%.1fk"

    invoke-static {v5, v0, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :cond_1
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v2, v3, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilSmallSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v2, v4, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilSmallSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;->mSubFolderHolderInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;->mSubFolderHolderInfoList:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubFolderHolderInfo;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubFolderHolderInfo;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayNameColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubFolderHolderInfo;->setColor(I)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubFolderHolderInfo;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubFolderHolderInfo;->setIndex(I)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubFolderHolderInfo;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    move-result-object v2

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getSortType()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants$Sort;->isModifiedType(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getLastModifiedAt()J

    move-result-wide v4

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getCreatedAt()J

    move-result-wide v4

    :goto_0
    invoke-static {v3, v4, v5}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/ContentUtils;->getDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->setDateText(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->setRootCardView(Landroid/view/View;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->getHolderType()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->setHolderType(I)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->setEnable(Z)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubFolderHolderInfo;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;->mSubFolderHolderInfoList:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubFolderHolderInfo;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayNameColor()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubFolderHolderInfo;->setColor(I)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubFolderHolderInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubFolderHolderInfo;->setIndex(I)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubFolderHolderInfo;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    move-result-object v0

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getSortType()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants$Sort;->isModifiedType(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getLastModifiedAt()J

    move-result-wide v3

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getCreatedAt()J

    move-result-wide v3

    :goto_1
    invoke-static {v2, v3, v4}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/ContentUtils;->getDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->setDateText(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->setEnable(Z)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubFolderHolderInfo;

    invoke-interface {p3, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;->mSubFolderHolderInfoMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getSubFolderCount()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;->mSubFolderHolderInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubFolderHolderInfo;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public getSubFolderHolderInfo(I)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubFolderHolderInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;->mSubFolderHolderInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;->mSubFolderHolderInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubFolderHolderInfo;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSubFolderHolderInfo(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubFolderHolderInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;->mSubFolderHolderInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;->mSubFolderHolderInfoList:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubFolderHolderInfo;

    return-object p1
.end method

.method public getSubFolderViewById(I)I
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SubFolderHolder"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    :pswitch_0
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$id;->sub_folder_list_item8:I

    return p1

    :pswitch_1
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$id;->sub_folder_list_item7:I

    return p1

    :pswitch_2
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$id;->sub_folder_list_item6:I

    return p1

    :pswitch_3
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$id;->sub_folder_list_item5:I

    return p1

    :pswitch_4
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$id;->sub_folder_list_item4:I

    return p1

    :pswitch_5
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$id;->sub_folder_list_item3:I

    return p1

    :pswitch_6
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$id;->sub_folder_list_item2:I

    return p1

    :pswitch_7
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$id;->sub_folder_list_item1:I

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public onBindViewHolder()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;->getSubFolderCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;->getSubFolderHolderInfo(I)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubFolderHolderInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

    invoke-interface {v2, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;->onBindViewHolder(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onViewAttachedToWindow(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    :goto_0
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;->getSubFolderCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;->getSubFolderHolderInfo(I)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubFolderHolderInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;->onViewAttachedToWindow(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
