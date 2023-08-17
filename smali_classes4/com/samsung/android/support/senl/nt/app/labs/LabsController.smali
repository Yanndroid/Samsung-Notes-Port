.class public Lcom/samsung/android/support/senl/nt/app/labs/LabsController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final LABS_ENABLE_COUNT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "LabsController"

.field private static mInstance:Lcom/samsung/android/support/senl/nt/app/labs/LabsController;


# instance fields
.field private mLabsEnableCount:I

.field private mPrevToast:Landroid/widget/Toast;

.field private mViewId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/LabsController;->mLabsEnableCount:I

    return-void
.end method

.method private changeViewForActivated(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v0, -0x7f010000

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/support/senl/nt/app/labs/LabsController;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/labs/LabsController;->mInstance:Lcom/samsung/android/support/senl/nt/app/labs/LabsController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/labs/LabsController;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/labs/LabsController;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/labs/LabsController;->mInstance:Lcom/samsung/android/support/senl/nt/app/labs/LabsController;

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/labs/LabsController;->mInstance:Lcom/samsung/android/support/senl/nt/app/labs/LabsController;

    return-object v0
.end method

.method private isAvailable()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isEngMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/SamsungNotesLabs.cfg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/labs/LabsController;->setLaboratoryMode(Z)V

    return v0
.end method

.method private releaseToast()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/LabsController;->mPrevToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/LabsController;->mPrevToast:Landroid/widget/Toast;

    :cond_0
    return-void
.end method

.method private setLaboratoryMode(Z)V
    .locals 1

    const-string v0, "dDxo#DEo(Ea#lo^isExdGL@AX!@dov$u*gDW)-+FGx"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/common/util/EnvironmentUtils;->setLaboratoryMode(ZLjava/lang/String;)V

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/labs/LabsController;->releaseToast()V

    :cond_0
    return-void
.end method

.method private show(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/labs/LabsController;->releaseToast()V

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/labs/LabsController;->mPrevToast:Landroid/widget/Toast;

    return-void
.end method

.method private showCount(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Labs count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/labs/LabsController;->mLabsEnableCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/labs/LabsController;->show(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private showState(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/EnvironmentUtils;->isRunningLaboratoryMode()Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Labs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const-string v3, "enabled"

    goto :goto_0

    :cond_0
    const-string v3, "disabled"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/labs/LabsController;->show(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/labs/LabsController;->changeViewForActivated(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/LabsController;->mViewId:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/EnvironmentUtils;->isRunningLaboratoryMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/LabsController;->mLabsEnableCount:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/labs/LabsController;->setLaboratoryMode(Z)V

    goto :goto_0

    :cond_1
    if-lez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/labs/LabsController;->showCount(Landroid/content/Context;)V

    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/labs/LabsController;->mLabsEnableCount:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/labs/LabsController;->mLabsEnableCount:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/LabsController;->mLabsEnableCount:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/labs/LabsController;->setLaboratoryMode(Z)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/labs/LabsController;->showState(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    if-ge v0, v2, :cond_4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/LabsController;->mLabsEnableCount:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/labs/LabsController;->showCount(Landroid/content/Context;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public removeController(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/labs/LabsController;->releaseToast()V

    return-void
.end method

.method public runLabs(Landroid/content/Context;)Z
    .locals 5

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/EnvironmentUtils;->isRunningLaboratoryMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/support/senl/nt/app/labs/LabsActivity;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/ContextCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/ContextCompat;

    move-result-object v2

    const/16 v3, 0x1f4

    const/16 v4, 0x3e8

    invoke-virtual {v2, v1, v1, v3, v4}, Lcom/samsung/android/support/senl/cm/base/framework/content/ContextCompat;->makeLaunchBoundOption(IIII)Landroid/app/ActivityOptions;

    move-result-object v1

    const/high16 v2, 0x1c000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setController(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/labs/LabsController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "LabsController"

    if-eqz v0, :cond_1

    const-string v0, "view has foreground"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/LabsController;->mViewId:I

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/EnvironmentUtils;->isRunningLaboratoryMode()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/labs/LabsController;->changeViewForActivated(Landroid/view/View;Z)V

    if-eqz v0, :cond_2

    const/4 p1, 0x4

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/labs/LabsController;->mLabsEnableCount:I

    const-string p1, "set Labs control view"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
