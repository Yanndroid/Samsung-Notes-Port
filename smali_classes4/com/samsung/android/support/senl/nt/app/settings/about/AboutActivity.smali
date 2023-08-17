.class public Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter$Contract;


# static fields
.field private static final KEY_STATE:Ljava/lang/String; = "key_mode"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mOpenSource:Landroid/widget/Button;

.field private final mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;

.field private mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

.field private mUpdate:Landroid/widget/Button;

.field private mUpdateNotice:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "ST$AboutActivity"

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter$Contract;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;)Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;)Landroidx/appcompat/widget/SeslProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->mUpdate:Landroid/widget/Button;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->mUpdateNotice:Landroid/widget/TextView;

    return-object p0
.end method

.method private initAppInfoIcon(Landroid/view/Menu;)V
    .locals 4

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->action_app_info:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$color;->about_notes_app_info_icon_color:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method private initLabs()V
    .locals 2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->version:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/labs/LabsController;->getInstance()Lcom/samsung/android/support/senl/nt/app/labs/LabsController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/labs/LabsController;->setController(Landroid/view/View;)V

    const-string v0, "ST$AboutActivity"

    const-string v1, "init Labs"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initLayout()V
    .locals 4

    const-string v0, "ST$AboutActivity"

    const-string v1, "initLayout# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->app_name_text_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->version:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->update:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->mUpdate:Landroid/widget/Button;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->update_notice:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->mUpdateNotice:Landroid/widget/TextView;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->progress:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SeslProgressBar;

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->open_source:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->mOpenSource:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;->getAppName()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;->getVersionText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->mUpdate:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->mOpenSource:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42180000    # 38.0f

    invoke-static {v2, v0, v3}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilLargeSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilLargeSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->mUpdateNotice:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilLargeSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->mUpdate:Landroid/widget/Button;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilLargeSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->mOpenSource:Landroid/widget/Button;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilLargeSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    return-void
.end method

.method private initToolBar()V
    .locals 2

    const-string v0, "ST$AboutActivity"

    const-string v1, "initToolBar# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method private releaseLabs()V
    .locals 2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->version:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/labs/LabsController;->getInstance()Lcom/samsung/android/support/senl/nt/app/labs/LabsController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/labs/LabsController;->removeController(Landroid/view/View;)V

    return-void
.end method

.method private updateLayout()V
    .locals 8

    const-string v0, "ST$AboutActivity"

    const-string v1, "updateLayout#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->button_layout_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->mUpdate:Landroid/widget/Button;

    aput-object v4, v3, v1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->mOpenSource:Landroid/widget/Button;

    aput-object v1, v3, v2

    invoke-static {p0, v0, v3}, Lcom/samsung/android/support/senl/nt/base/winset/util/ButtonShapeUtil;->updateContainedButtonLayout(Landroid/content/Context;Landroid/view/View;[Landroid/view/View;)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->update_button_bottom_space:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/DisplayUtils;->getWindowSize(Landroid/content/Context;Landroid/content/res/Configuration;)Landroid/graphics/Rect;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-double v4, v1

    const-wide v6, 0x3fb1eb851eb851ecL    # 0.07

    mul-double/2addr v4, v6

    double-to-int v1, v4

    invoke-direct {v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->version_layout_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-array v3, v2, [Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->mUpdate:Landroid/widget/Button;

    aput-object v4, v3, v1

    invoke-static {p0, v0, v3}, Lcom/samsung/android/support/senl/nt/base/winset/util/ButtonShapeUtil;->updateContainedButtonLayout(Landroid/content/Context;Landroid/view/View;[Landroid/view/View;)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->button_layout_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-array v2, v2, [Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->mOpenSource:Landroid/widget/Button;

    aput-object v3, v2, v1

    invoke-static {p0, v0, v2}, Lcom/samsung/android/support/senl/nt/base/winset/util/ButtonShapeUtil;->updateContainedButtonLayout(Landroid/content/Context;Landroid/view/View;[Landroid/view/View;)V

    :cond_1
    :goto_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->activity_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/DisplayUtils;->updateListWidthByScreenSize(Landroid/app/Activity;Landroid/view/View;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->controllIndicatorBar(Landroid/app/Activity;I)Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    sget-object v2, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->Default:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->isValidEvent([Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->setHoldingEventTime()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->open_source:I

    const-string v2, "541"

    if-ne p1, v1, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/labs/LabsController;->getInstance()Lcom/samsung/android/support/senl/nt/app/labs/LabsController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/nt/app/labs/LabsController;->runLabs(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/samsung/android/support/senl/nt/app/settings/about/OpenSourceLicenseActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const-string p1, "5402"

    :goto_0
    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->update:I

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;->isUpdateState()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;->moveToMarket()V

    const-string p1, "5401"

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;->isRetryState()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lc3/h;->e(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->network_error:I

    invoke-static {p1, v1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;->checkNewVersion()V

    const-string p1, "5406"

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->updateLayout()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "ST$AboutActivity"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->executeBaseLogics()V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$layout;->aboutnote_activity:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->initToolBar()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->initLayout()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/connector/MarketConnectorFactory;->createMarketConnector()Lcom/samsung/android/support/senl/nt/app/updater/connector/IMarketConnector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;->setMarketConnector(Lcom/samsung/android/support/senl/nt/app/updater/connector/IMarketConnector;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;->checkNewVersion()V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->stopProgress()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;

    const/4 v1, 0x0

    const-string v2, "key_mode"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;->setState(I)V

    :cond_0
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$color;->task_description_title_color:I

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/util/ContextUtils;->setTaskDescription(Landroid/app/Activity;I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ContextUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/SystemUi;->setNavigationBarTheme(Landroid/view/Window;Z)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->initLabs()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$menu;->about_notes:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->initAppInfoIcon(Landroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "ST$AboutActivity"

    const-string v1, "onDestroy#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;->releaseMarketConnector()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->releaseLabs()V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return v1

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->action_app_info:I

    if-ne v0, v2, :cond_1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/PermissionUtils;->showDetailsSettingsDialog(Landroid/content/Context;)V

    const-string p1, "541"

    const-string v0, "5403"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const-string v0, "ST$AboutActivity"

    const-string v1, "onResume#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->updateLayout()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->setHasBadge(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutPresenter;->getState()I

    move-result v0

    const-string v1, "key_mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public startProgress()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stateChanged(I)V
    .locals 0

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity$3;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopProgress()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity$2;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/about/AboutActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
