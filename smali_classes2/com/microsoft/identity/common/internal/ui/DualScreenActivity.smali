.class public Lcom/microsoft/identity/common/internal/ui/DualScreenActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private adjustLayoutForDualScreenActivity()V
    .locals 14

    invoke-virtual {p0, p0}, Lcom/microsoft/identity/common/internal/ui/DualScreenActivity;->getRotation(Landroid/app/Activity;)I

    move-result v0

    invoke-virtual {p0, p0}, Lcom/microsoft/identity/common/internal/ui/DualScreenActivity;->isAppSpanned(Landroid/app/Activity;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    new-instance v10, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v10}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    sget v11, Lcom/microsoft/identity/common/R$id;->dual_screen_content:I

    const/4 v6, 0x1

    sget v12, Lcom/microsoft/identity/common/R$id;->dual_screen_layout:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, v10

    move v5, v11

    move v7, v12

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v6, 0x2

    const/4 v8, 0x2

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v6, 0x3

    const/4 v8, 0x3

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v6, 0x4

    const/4 v8, 0x4

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    sget v13, Lcom/microsoft/identity/common/R$id;->dual_screen_empty_view:I

    const/4 v6, 0x1

    const/4 v8, 0x1

    move v5, v13

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v6, 0x2

    const/4 v8, 0x2

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v6, 0x3

    const/4 v8, 0x3

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v6, 0x4

    const/4 v8, 0x4

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    if-eqz v1, :cond_3

    invoke-direct {p0, p0, v0}, Lcom/microsoft/identity/common/internal/ui/DualScreenActivity;->getHinge(Landroid/content/Context;I)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v9, v0, 0x2

    const/4 v6, 0x1

    sget v0, Lcom/microsoft/identity/common/R$id;->vertical_guideline:I

    const/4 v8, 0x2

    move-object v4, v10

    move v5, v11

    move v7, v0

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    move v5, v13

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v9, v0, 0x2

    const/4 v6, 0x4

    sget v0, Lcom/microsoft/identity/common/R$id;->horizontal_guideline:I

    const/4 v8, 0x3

    move-object v4, v10

    move v5, v11

    move v7, v0

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v6, 0x3

    const/4 v8, 0x4

    const/4 v9, 0x0

    move v5, v13

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {v10, v13}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(I)V

    :goto_2
    invoke-virtual {p0, v12}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v10}, Landroidx/constraintlayout/widget/ConstraintLayout;->setConstraintSet(Landroidx/constraintlayout/widget/ConstraintSet;)V

    return-void
.end method

.method private getHinge(Landroid/content/Context;I)Landroid/graphics/Rect;
    .locals 1

    invoke-static {p1}, Lcom/microsoft/device/display/DisplayMask;->fromResourcesRect(Landroid/content/Context;)Lcom/microsoft/device/display/DisplayMask;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/microsoft/device/display/DisplayMask;->getBoundingRectsForRotation(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    return-object p1
.end method

.method private getWindowRect(Landroid/app/Activity;)Landroid/graphics/Rect;
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private initializeContentView()V
    .locals 1

    sget v0, Lcom/microsoft/identity/common/R$layout;->dual_screen_layout:I

    invoke-super {p0, v0}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/ui/DualScreenActivity;->adjustLayoutForDualScreenActivity()V

    return-void
.end method

.method private isDualScreenDevice(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.microsoft.device.display.displaymask"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getRotation(Landroid/app/Activity;)I
    .locals 1

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isAppSpanned(Landroid/app/Activity;)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/ui/DualScreenActivity;->isDualScreenDevice(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/ui/DualScreenActivity;->getRotation(Landroid/app/Activity;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/microsoft/identity/common/internal/ui/DualScreenActivity;->getHinge(Landroid/content/Context;I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/ui/DualScreenActivity;->getWindowRect(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/ui/DualScreenActivity;->adjustLayoutForDualScreenActivity()V

    return-void
.end method

.method public setContentView(I)V
    .locals 2

    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/ui/DualScreenActivity;->initializeContentView()V

    sget v0, Lcom/microsoft/identity/common/R$id;->dual_screen_content:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public setFragment(Landroidx/fragment/app/Fragment;)V
    .locals 2
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/ui/DualScreenActivity;->initializeContentView()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->setTransitionStyle(I)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/microsoft/identity/common/R$id;->dual_screen_content:I

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method
