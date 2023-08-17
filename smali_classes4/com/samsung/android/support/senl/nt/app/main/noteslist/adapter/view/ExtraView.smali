.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field public static final CATEGORY_COLOR_BLACK:I = 0x0

.field public static final CATEGORY_COLOR_NONE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ExtraView"


# instance fields
.field private mFavoriteView:Landroid/widget/ImageView;

.field private mItemView:Landroid/view/View;

.field private mSdoc:Landroid/widget/LinearLayout;

.field private mSyncNotSupported:Landroid/widget/ImageView;

.field private mTimeView:Landroid/widget/TextView;

.field private mVoiceView:Landroid/widget/ImageView;

.field private mWarningView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->mItemView:Landroid/view/View;

    return-void
.end method

.method private addSdoc(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->mSdoc:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->mItemView:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->is_sdoc:I

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_item_sdoc:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/util/ViewModeUtils;->getInflatedView(Landroid/view/View;II)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->mSdoc:Landroid/widget/LinearLayout;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->mSdoc:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->mSdoc:Landroid/widget/LinearLayout;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->mark_color_view:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->getCategoryColor(Landroid/view/View;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)I

    move-result p1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, p1, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method private getCategoryColor(Landroid/view/View;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)I
    .locals 5

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getDocumentCategoryTree()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/DocumentCategoryTree;->find(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object v0

    const-string v1, "1"

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayNameColor()I

    move-result v4

    if-eqz v4, :cond_0

    if-eq v4, v2, :cond_0

    return v4

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-ne v4, v2, :cond_2

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$color;->category_mark_color_background_uncategorized:I

    :goto_1
    invoke-virtual {p1, p2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    return p1

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCategoryUuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getFolderData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayNameColor()I

    move-result v0

    if-ne v0, v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$color;->category_mark_color_screen_off_memo:I

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayNameColor()I

    move-result p1

    return p1
.end method


# virtual methods
.method public addFavorite()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->mFavoriteView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->mItemView:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->favorite:I

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_favorite:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/util/ViewModeUtils;->getInflatedView(Landroid/view/View;II)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->mFavoriteView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->mFavoriteView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setTooltipText(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->mFavoriteView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->mFavoriteView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "ExtraView"

    const-string v1, "addFavorite"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addSyncNotSupported()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->mSyncNotSupported:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->mItemView:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->sync_not_supported:I

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_sync_not_supported:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/util/ViewModeUtils;->getInflatedView(Landroid/view/View;II)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->mSyncNotSupported:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->notes_icon_sync_not_supported:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->mSyncNotSupported:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setTooltipText(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->mSyncNotSupported:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "ExtraView"

    const-string v1, "addSyncNotSupported"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addTime(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->mTimeView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->mItemView:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->time:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->mTimeView:Landroid/widget/TextView;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->mTimeView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public addVoice()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->mVoiceView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->mItemView:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->voice:I

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_voice:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/util/ViewModeUtils;->getInflatedView(Landroid/view/View;II)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->mVoiceView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->notes_icon_voice:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->mVoiceView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setTooltipText(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->mVoiceView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "ExtraView"

    const-string v1, "addVoice"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addWarning()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->mWarningView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->mItemView:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->warning:I

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->inflate_warning:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/util/ViewModeUtils;->getInflatedView(Landroid/view/View;II)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->mWarningView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->notes_icon_warning:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->mWarningView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setTooltipText(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->mWarningView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "ExtraView"

    const-string v1, "addWarning"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public init()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->mFavoriteView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->mVoiceView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->mSdoc:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->mWarningView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->mSyncNotSupported:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method public setExtraData(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->addTime(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsFavorite()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->addFavorite()V

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsLock()I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isLock(I)Z

    move-result p2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCorrupted()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isWarning(I)Z

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCorrupted()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isSyncNotSupported(I)Z

    move-result v1

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getVrUuid()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getVrUuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->addVoice()V

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isSdoc()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->addSdoc(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->addWarning()V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/ExtraView;->addSyncNotSupported()V

    :cond_4
    :goto_0
    return-void
.end method
