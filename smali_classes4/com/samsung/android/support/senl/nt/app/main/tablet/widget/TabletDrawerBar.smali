.class public Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar$DrawerContract;
    }
.end annotation


# static fields
.field private static final ENTRY:I = 0x0

.field private static final NONE_INFLATE_ICON:I = -0x1

.field private static final NORMAL:I = 0x2

.field private static final RUNNING_ANIMATOR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TabletDrawerBar"


# instance fields
.field private mAllNotesY:F

.field private final mDrawerBar:Landroid/widget/LinearLayout;

.field private final mDrawerBarIconDstY:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mDrawerBarIconList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawerContract:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar$DrawerContract;

.field private mIconYGap:F

.field private final mListAnimation:Lcom/samsung/android/support/senl/nt/app/main/noteslist/util/ListTransition;

.field private mPresenter:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mDrawerBarIconList:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mDrawerBarIconDstY:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/util/ListTransition;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/util/ListTransition;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mListAnimation:Lcom/samsung/android/support/senl/nt/app/main/noteslist/util/ListTransition;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mAllNotesY:F

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mIconYGap:F

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->drawer_bar_layout:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mDrawerBar:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->onInitializeDrawerBar()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;)Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar$DrawerContract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mDrawerContract:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar$DrawerContract;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->calculateDrawerIconGap()V

    return-void
.end method

.method private calculateDrawerIconGap()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mDrawerBarIconList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-nez v1, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mAllNotesY:F

    goto :goto_1

    :cond_0
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_2
    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mAllNotesY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mIconYGap:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    iput v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mIconYGap:F

    :cond_3
    return-void
.end method

.method private inflateDrawerIcon(IIII)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mDrawerBar:Landroid/widget/LinearLayout;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/util/ViewModeUtils;->getInflatedView(Landroid/view/View;II)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$id;->drawer_bar_icon_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$color;->folder_list_item_filter_icon_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mDrawerBar:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;->setDrawerBarIconClickListener(Landroid/view/View;)Z

    :cond_0
    return-object p1
.end method

.method private initDrawerBar()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mDrawerBarIconList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mDrawerBar:Landroid/widget/LinearLayout;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_all_notes:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mDrawerBar:Landroid/widget/LinearLayout;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_shared:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mDrawerBar:Landroid/widget/LinearLayout;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_coedit:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mDrawerBar:Landroid/widget/LinearLayout;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_trash:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mDrawerBar:Landroid/widget/LinearLayout;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->item_divider:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mDrawerBar:Landroid/widget/LinearLayout;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_myfolders:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_icon_old_notes:I

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->initInflatedDrawerBar(I)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_icon_favorite:I

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->initInflatedDrawerBar(I)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_icon_lock:I

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->initInflatedDrawerBar(I)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_icon_import:I

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->initInflatedDrawerBar(I)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_icon_hashtag:I

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->initInflatedDrawerBar(I)V

    return-void
.end method

.method private initInflatedDrawerBar(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mDrawerBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private onInitializeDrawerBar()V
    .locals 21

    const-string v0, "TabletDrawerBar"

    const-string v1, "onInitializeDrawerBar"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->hasBaseLogic(I)Z

    move-result v1

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_all_notes:I

    const-wide/16 v3, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->setDrawerBarIcon(JIIIII)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->isOldNotesFolderNeed()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v4, -0x2

    sget v6, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_old_notes:I

    sget v7, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_icon_old_notes:I

    sget v8, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_old_notes:I

    sget v9, Lcom/samsung/android/support/senl/nt/app/R$string;->upgradable_notes:I

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->setDrawerBarIcon(JIIIII)V

    :cond_0
    const-string v2, "FolderInfo"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-static {v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v4

    const-string v5, "favorite:///"

    invoke-virtual {v4, v5, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v4

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->getFavoriteItemCount(I)I

    move-result v4

    :goto_0
    if-lez v4, :cond_2

    const-wide/16 v6, -0x3

    sget v8, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_favorite:I

    sget v9, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_icon_favorite:I

    sget v10, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_favorite:I

    sget v11, Lcom/samsung/android/support/senl/nt/app/R$string;->favorite_notes:I

    const/4 v12, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->setDrawerBarIcon(JIIIII)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v4

    const-string v5, "lock:///"

    invoke-virtual {v4, v5, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v4

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getNoteLockRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;->getAllLockedDataCount(I)I

    move-result v4

    :goto_1
    if-lez v4, :cond_4

    const-wide/16 v6, -0x5

    sget v8, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_lock:I

    sget v9, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_icon_lock:I

    sget v10, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_drawer_lock:I

    sget v11, Lcom/samsung/android/support/senl/nt/app/R$string;->locked_notes:I

    const/4 v12, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->setDrawerBarIcon(JIIIII)V

    :cond_4
    if-eqz v1, :cond_5

    invoke-static {v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v4

    const-string v5, "recentlyImported:///"

    invoke-virtual {v4, v5, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v4

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getRecentlyImportedCount()I

    move-result v4

    :goto_2
    if-lez v4, :cond_6

    const-wide/16 v6, -0x6

    sget v8, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_import:I

    sget v9, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_icon_import:I

    sget v10, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_import:I

    sget v11, Lcom/samsung/android/support/senl/nt/app/R$string;->folder_recently_imported:I

    const/4 v12, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->setDrawerBarIcon(JIIIII)V

    :cond_6
    const-wide/16 v14, -0x8

    sget v16, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_coedit:I

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    move-object/from16 v13, p0

    invoke-direct/range {v13 .. v20}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->setDrawerBarIcon(JIIIII)V

    if-eqz v1, :cond_7

    invoke-static {v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "tag:///"

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getSortParam()Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->getAllWithTag(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_3
    if-lez v0, :cond_8

    const-wide/16 v2, -0x9

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_hashtag:I

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_icon_hashtag:I

    sget v6, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_tag:I

    sget v7, Lcom/samsung/android/support/senl/nt/app/R$string;->tags_title:I

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->setDrawerBarIcon(JIIIII)V

    :cond_8
    const-wide/16 v10, -0x7

    sget v12, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_trash:I

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->setDrawerBarIcon(JIIIII)V

    const-wide/16 v1, -0xb

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$id;->item_divider:I

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->setDrawerBarIcon(JIIIII)V

    const-wide/16 v9, -0x4

    sget v11, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_myfolders:I

    const/4 v12, -0x1

    const/4 v15, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v15}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->setDrawerBarIcon(JIIIII)V

    return-void
.end method

.method private setDrawerBar(Z)V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/presenter/DrawerPresenter;->getModel()Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;->getDrawerDisplayDataList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getViewType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-wide/16 v3, -0xb

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$id;->item_divider:I

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v9, -0x1

    if-eqz p1, :cond_3

    goto/16 :goto_1

    :pswitch_1
    const-wide/16 v3, -0x7

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_trash:I

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v9, -0x1

    if-eqz p1, :cond_3

    goto/16 :goto_1

    :pswitch_2
    const-wide/16 v3, -0x9

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_hashtag:I

    sget v6, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_icon_hashtag:I

    sget v7, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_tag:I

    sget v9, Lcom/samsung/android/support/senl/nt/app/R$string;->tags_title:I

    if-eqz p1, :cond_3

    goto :goto_1

    :pswitch_3
    const-wide/16 v3, -0x8

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_coedit:I

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v9, -0x1

    if-eqz p1, :cond_3

    goto :goto_1

    :pswitch_4
    const-wide/16 v3, -0x13

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_shared:I

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v9, -0x1

    if-eqz p1, :cond_3

    goto :goto_1

    :pswitch_5
    const-wide/16 v3, -0x6

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_import:I

    sget v6, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_icon_import:I

    sget v7, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_import:I

    sget v9, Lcom/samsung/android/support/senl/nt/app/R$string;->folder_recently_imported:I

    if-eqz p1, :cond_3

    goto :goto_1

    :pswitch_6
    const-wide/16 v3, -0x5

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_lock:I

    sget v6, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_icon_lock:I

    sget v7, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_drawer_lock:I

    sget v9, Lcom/samsung/android/support/senl/nt/app/R$string;->locked_notes:I

    if-eqz p1, :cond_3

    goto :goto_1

    :pswitch_7
    const-wide/16 v3, -0x3

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_favorite:I

    sget v6, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_icon_favorite:I

    sget v7, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_favorite:I

    sget v9, Lcom/samsung/android/support/senl/nt/app/R$string;->favorite_notes:I

    if-eqz p1, :cond_3

    goto :goto_1

    :pswitch_8
    const-wide/16 v3, -0x2

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_old_notes:I

    sget v6, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_icon_old_notes:I

    sget v7, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_old_notes:I

    sget v9, Lcom/samsung/android/support/senl/nt/app/R$string;->upgradable_notes:I

    if-eqz p1, :cond_3

    goto :goto_1

    :pswitch_9
    const-wide/16 v3, -0x1

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_all_notes:I

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v9, -0x1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_2
    const-wide/16 v3, -0x4

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_myfolders:I

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v9, -0x1

    if-eqz p1, :cond_3

    :goto_1
    move v10, v1

    goto :goto_2

    :cond_3
    move v10, v2

    :goto_2
    move-object v0, p0

    move-wide v1, v3

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v9

    move v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->setDrawerBarIcon(JIIIII)V

    goto/16 :goto_0

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x3ea
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

.method private setDrawerBarIcon(JIIIII)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mDrawerBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    if-eq p4, v1, :cond_0

    :goto_0
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->inflateDrawerIcon(IIII)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    if-nez p7, :cond_2

    if-eq p4, v1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    const-wide/16 p5, -0x13

    cmp-long p3, p1, p5

    if-nez p3, :cond_3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getPreferenceMDESupported()Z

    move-result p3

    if-nez p3, :cond_3

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_3
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mDrawerBarIconList:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p3, p5, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p3, 0x2

    if-eq p7, p3, :cond_5

    if-nez p7, :cond_4

    goto :goto_2

    :cond_4
    const/4 p3, 0x4

    goto :goto_3

    :cond_5
    :goto_2
    const/4 p3, 0x0

    :goto_3
    invoke-virtual {v0, p3}, Landroid/view/View;->setVisibility(I)V

    if-ne p4, v1, :cond_6

    const-wide/16 p3, -0xb

    cmp-long p3, p1, p3

    if-eqz p3, :cond_6

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->setNonInflateIconColorFilter(JLandroid/view/View;)V

    :cond_6
    :goto_4
    return-void
.end method

.method private setNonInflateIconColorFilter(JLandroid/view/View;)V
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$id;->all_notes:I

    :goto_0
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    goto :goto_1

    :cond_0
    const-wide/16 v0, -0x13

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$id;->shared:I

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x8

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$id;->coedit:I

    goto :goto_0

    :cond_2
    const-wide/16 v0, -0x7

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$id;->trash:I

    goto :goto_0

    :cond_3
    const-wide/16 v0, -0x4

    cmp-long p1, p1, v0

    if-nez p1, :cond_4

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$id;->myfolders:I

    goto :goto_0

    :goto_1
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$color;->folder_list_item_filter_icon_color:I

    invoke-virtual {p3, v0}, Landroid/content/Context;->getColor(I)I

    move-result p3

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public getAllNotesY()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mAllNotesY:F

    return v0
.end method

.method public getDividerHeight()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mDrawerBarIconList:Ljava/util/LinkedHashMap;

    const-wide/16 v1, -0xb

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getIconDstY()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mDrawerBarIconDstY:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIconHeight()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mDrawerBarIconList:Ljava/util/LinkedHashMap;

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getIconList()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mDrawerBarIconList:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getIconYGap()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mIconYGap:F

    return v0
.end method

.method public getVisibility()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mDrawerBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    return v0
.end method

.method public onDataChanged(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mDrawerBarIconList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->initDrawerBar()V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->setDrawerBar(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mDrawerBarIconList:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setDrawerBarAnimator(Landroid/view/View$OnClickListener;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mListAnimation:Lcom/samsung/android/support/senl/nt/app/main/noteslist/util/ListTransition;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->root_cardview:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/transition/TransitionSet;->excludeTarget(IZ)Landroidx/transition/Transition;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mDrawerBar:Landroid/widget/LinearLayout;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->drawer_button:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mDrawerBar:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;)V

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->nextLayoutChanged(Landroid/view/View;Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mDrawerBar:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->calculateDrawerIconGap()V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setDrawerIconDimDragStatus(ZLjava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const v0, 0x3ecccccd    # 0.4f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mDrawerBarIconList:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mDrawerBarIconList:Ljava/util/LinkedHashMap;

    const-wide/16 v4, -0x7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mDrawerBarIconList:Ljava/util/LinkedHashMap;

    const-wide/16 v4, -0x4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p2, :cond_3

    sget-object v3, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public setDrawerPresenter(Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar$DrawerContract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/tablet/presenter/TabletDrawerPresenter;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mDrawerContract:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar$DrawerContract;

    return-void
.end method

.method public setToolTipText(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mDrawerBar:Landroid/widget/LinearLayout;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->drawer_button:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->drawer_description:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mDrawerBar:Landroid/widget/LinearLayout;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_all_notes:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->all_notes:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mDrawerBar:Landroid/widget/LinearLayout;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_shared:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->shared_notebooks:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mDrawerBar:Landroid/widget/LinearLayout;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_coedit:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_title:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mDrawerBar:Landroid/widget/LinearLayout;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_trash:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->trash:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mDrawerBar:Landroid/widget/LinearLayout;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->icon_myfolders:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_my_folders:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mDrawerBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public updateNewBadge(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->mDrawerBar:Landroid/widget/LinearLayout;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->drawer_button_new_badge:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
