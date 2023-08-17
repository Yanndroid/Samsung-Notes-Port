.class public Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_QUICK_COLOR_COUNT:I = 0x3

.field private static final DEFAULT_QUICK_SIZE_COUNT:I = 0x1

.field private static final QUICK_COLOR_DELTA_POSITION_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ToolbarPresenter"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCandidateListView:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarContract;

.field private mIsSelectedCandidate:Z

.field private mSelectedIndex:I

.field private mSelectedType:Ljava/lang/String;

.field private mToolbarListView:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarContract;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private loadToolbarList(Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "settings_candidate_toolbar_item_order"

    goto :goto_0

    :cond_0
    const-string v1, "settings_toolbar_item_order"

    :goto_0
    const-string v2, "Settings"

    invoke-static {v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "ToolbarPresenter"

    if-nez v3, :cond_1

    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;->getDefaultToolbarList()Ljava/util/List;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingToolbarPreferenceUtils;->updateCustomizePreference(Ljava/util/List;Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadToolbarList# "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public clearEmptyData(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;->mCandidateListView:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarContract;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;->mToolbarListView:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarContract;

    :goto_0
    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarContract;->clearEmptyItemView()V

    return-void
.end method

.method public getDefaultToolbarList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarContract;->CUSTOM_TOOLBAR_ORDER:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getQuickColorAdapterContract()Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarContract$IAdapter;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;)V

    return-object v0
.end method

.method public getQuickSizeAdapterContract()Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarContract$IAdapter;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter$2;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;)V

    return-object v0
.end method

.method public getSelectedIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;->mSelectedIndex:I

    return v0
.end method

.method public getSelectedType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;->mSelectedType:Ljava/lang/String;

    return-object v0
.end method

.method public getToolbarList(Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;->loadToolbarList(Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public isEmptyExist(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;->mCandidateListView:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarContract;

    :goto_0
    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarContract;->isEmptyExist()Z

    move-result p1

    return p1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;->mToolbarListView:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarContract;

    goto :goto_0
.end method

.method public isSelectedCandidate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;->mIsSelectedCandidate:Z

    return v0
.end method

.method public isSupportBeautifier()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/FeatureInfo;->isBeautifierFeatureEnabled()Z

    move-result v0

    return v0
.end method

.method public isSupportDirectWrite()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerSpenUtils;->canUseSpen(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;->isSupportRecognition()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSupportEasyWritingPad()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/FeatureInfo;->isEnabledEasyWritingPad(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isSupportRecognition()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/collector/util/RecognitionUtil;->isSupported(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onAttachView(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;->mToolbarListView:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarContract;->getToolbarItemOrder()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "8221"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertStatusLog(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;->mToolbarListView:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarContract;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;->mCandidateListView:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarContract;

    const-string v0, "ToolbarPresenter"

    const-string v1, "onDestroy#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDetachView()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;->mCandidateListView:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarContract;->onDetachView()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;->mToolbarListView:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarContract;->onDetachView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public reset()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;->getDefaultToolbarList()Ljava/util/List;

    move-result-object v0

    const-string v1, "settings_toolbar_item_order"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingToolbarPreferenceUtils;->saveToolbarList(Ljava/lang/String;Ljava/util/List;Z)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "settings_candidate_toolbar_item_order"

    invoke-static {v3, v1, v2}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingToolbarPreferenceUtils;->saveToolbarList(Ljava/lang/String;Ljava/util/List;Z)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;->mToolbarListView:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarContract;

    invoke-interface {v1, v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarContract;->reset(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;->mCandidateListView:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarContract;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarContract;->reset(Ljava/util/List;)V

    return-void
.end method

.method public saveOrderList(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;->mCandidateListView:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarContract;->getToolbarItemOrder()Ljava/util/List;

    move-result-object v0

    const-string v1, "settings_candidate_toolbar_item_order"

    invoke-static {v1, v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingToolbarPreferenceUtils;->saveToolbarList(Ljava/lang/String;Ljava/util/List;Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;->mToolbarListView:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarContract;->getToolbarItemOrder()Ljava/util/List;

    move-result-object v0

    const-string v1, "settings_toolbar_item_order"

    invoke-static {v1, v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingToolbarPreferenceUtils;->saveToolbarList(Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method public setSelectedItem(ZILjava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;->mIsSelectedCandidate:Z

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;->mSelectedIndex:I

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;->mSelectedType:Ljava/lang/String;

    return-void
.end method

.method public setView(Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarContract;Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarContract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;->mToolbarListView:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarContract;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarPresenter;->mCandidateListView:Lcom/samsung/android/support/senl/nt/app/settings/detail/customizetoolbar/presenter/ToolbarContract;

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/common/samsunganalytics/SettingsSAConstants;->SCREEN_NONE:Ljava/lang/String;

    const-string p2, "8220"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
