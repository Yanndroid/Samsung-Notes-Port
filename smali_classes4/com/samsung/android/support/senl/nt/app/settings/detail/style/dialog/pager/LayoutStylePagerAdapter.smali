.class public Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter$Contract;
    }
.end annotation


# static fields
.field private static final MSG_RIPPLE_DURATION:I = 0x1

.field private static final POSITION_PAGE_STYLE:Ljava/lang/Integer;

.field private static final POSITION_VIEW_STYLE:Ljava/lang/Integer;

.field private static final RIPPLE_DURATION:I = 0x64

.field private static final TAG:Ljava/lang/String; = "LayoutStylePagerAdapter"


# instance fields
.field private mContainer:Landroid/view/ViewGroup;

.field private mContract:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter$Contract;

.field private final mHandlerMessage:Landroid/os/Handler;

.field private mPageSize:I

.field private final mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;->POSITION_PAGE_STYLE:Ljava/lang/Integer;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;->POSITION_VIEW_STYLE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;->mHandlerMessage:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter$2;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;->updatePageSize()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;->registerSharedPreferenceListener()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;)Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter$Contract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;->mContract:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter$Contract;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;->restartRippleDuration()V

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;->updatePageSize()V

    return-void
.end method

.method private findStylePageByPosition(I)Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/page/Page;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;->mContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/page/Page;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/page/Page;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/page/Page;->getPageIdx()I

    move-result v4

    if-ne v4, p1, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private getPageFromPosition(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/page/Page;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;->mContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;->mContainer:Landroid/view/ViewGroup;

    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;->findStylePageByPosition(I)Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/page/Page;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    sget-object v1, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;->POSITION_PAGE_STYLE:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p2, v2, :cond_2

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/page/LayoutStylePage;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/page/LayoutStylePage;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;->POSITION_VIEW_STYLE:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p2, v2, :cond_3

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/page/LayoutSettingsPage;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/page/LayoutSettingsPage;-><init>(Landroid/content/Context;I)V

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    return-object v0
.end method

.method private isSupportViewStylePage()Z
    .locals 3

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "settings_preferred_note_style"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private restartRippleDuration()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;->stopRippleDuration()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;->startRippleDuration()V

    return-void
.end method

.method private startRippleDuration()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;->mHandlerMessage:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private stopRippleDuration()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;->mHandlerMessage:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private updatePageSize()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;->isSupportViewStylePage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;->mPageSize:I

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;->mPageSize:I

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, -0x2

    return p1
.end method

.method public getPageName(I)Ljava/lang/CharSequence;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;->findStylePageByPosition(I)Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/page/Page;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/page/Page;->getPageName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "instantiateItem# position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LayoutStylePagerAdapter"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;->getPageFromPosition(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/page/Page;

    move-result-object p2

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public registerSharedPreferenceListener()V
    .locals 2

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public setContract(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter$Contract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;->mContract:Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter$Contract;

    return-void
.end method

.method public unregisterSharedPreferenceListener()V
    .locals 2

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/dialog/pager/LayoutStylePagerAdapter;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method
