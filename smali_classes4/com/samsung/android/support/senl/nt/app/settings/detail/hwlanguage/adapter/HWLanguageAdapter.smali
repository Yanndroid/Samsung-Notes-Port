.class public Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HolderContract;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;",
        "Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HolderContract;"
    }
.end annotation


# instance fields
.field private final mAdapterContract:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/AdapterContract;

.field private final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHWLanguageHolderInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemLocale:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/AdapterContract;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->mComparator:Ljava/util/Comparator;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->mHWLanguageHolderInfos:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/AdapterContract;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->getLocale(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->mSystemLocale:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->mSystemLocale:Ljava/lang/String;

    return-object p0
.end method

.method private getIndexOfLocale(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->mHWLanguageHolderInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->mHWLanguageHolderInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;->getLocale()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public addLanguageInfo(Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->mHWLanguageHolderInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearData()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->mHWLanguageHolderInfos:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->mHWLanguageHolderInfos:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->mHWLanguageHolderInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->mHWLanguageHolderInfos:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->mHWLanguageHolderInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;->getLocale()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->mHWLanguageHolderInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;->getType()I

    move-result p1

    return p1
.end method

.method public getSystemLocale()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->mSystemLocale:Ljava/lang/String;

    return-object v0
.end method

.method public hasAvailableLanguage()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->mHWLanguageHolderInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasDownloadedLanguage()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->mHWLanguageHolderInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isDownloadInProgress(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/AdapterContract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/AdapterContract;->isDownloadInProgress(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isDownloadInQueue(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/AdapterContract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/AdapterContract;->isDownloadInQueue(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isDownloaded(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/AdapterContract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/AdapterContract;->isDownloaded(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isInstallable(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/AdapterContract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/AdapterContract;->isInstallable(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isPreloaded(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/AdapterContract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/AdapterContract;->isPreloaded(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isUpdateAvailable(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/AdapterContract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/AdapterContract;->isUpdateAvailable(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->mHWLanguageHolderInfos:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder;->decorate(Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    :goto_0
    if-nez p3, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder;->decorateState()V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder;->decorateRadioButton()V

    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$layout;->settings_handwriting_recognition_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder;-><init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HolderContract;)V

    return-object p2
.end method

.method public onDelete(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/AdapterContract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/AdapterContract;->onDelete(Ljava/lang/String;)V

    return-void
.end method

.method public onDownload(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/AdapterContract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/AdapterContract;->onDownload(Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadCancel(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->mAdapterContract:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/AdapterContract;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/AdapterContract;->onDownloadCancel(Ljava/lang/String;)V

    return-void
.end method

.method public onHWLanguageChanged(Ljava/lang/String;)V
    .locals 4

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->mSystemLocale:Ljava/lang/String;

    const-string v3, "settings_handwriting_recognition_language"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    invoke-virtual {v0, v3, p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->getIndexOfLocale(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->getIndexOfLocale(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onProgressChanged(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->getIndexOfLocale(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->mHWLanguageHolderInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;->setProgress(I)Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;

    invoke-virtual {v0, p3}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;->setTotal(I)Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public sortHWLanguageHolderInfos()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->mHWLanguageHolderInfos:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->mComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
