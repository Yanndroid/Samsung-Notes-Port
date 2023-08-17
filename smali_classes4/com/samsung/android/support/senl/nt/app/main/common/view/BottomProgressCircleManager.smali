.class public Lcom/samsung/android/support/senl/nt/app/main/common/view/BottomProgressCircleManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BottomProgressCircleManager"

.field private static mInstance:Lcom/samsung/android/support/senl/nt/app/main/common/view/BottomProgressCircleManager;


# instance fields
.field private isProgressOn:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BottomProgressCircleManager;->isProgressOn:Z

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/view/BottomProgressCircleManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BottomProgressCircleManager;->mInstance:Lcom/samsung/android/support/senl/nt/app/main/common/view/BottomProgressCircleManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BottomProgressCircleManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/BottomProgressCircleManager;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BottomProgressCircleManager;->mInstance:Lcom/samsung/android/support/senl/nt/app/main/common/view/BottomProgressCircleManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BottomProgressCircleManager;->mInstance:Lcom/samsung/android/support/senl/nt/app/main/common/view/BottomProgressCircleManager;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BottomProgressCircleManager;->isProgressOn:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "BottomProgressCircleManager"

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BottomProgressCircleManager;->isProgressOn:Z

    return-void
.end method

.method public isProgressOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BottomProgressCircleManager;->isProgressOn:Z

    return v0
.end method

.method public show(Lcom/google/android/material/navigation/NavigationBarItemView;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->getItemPosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$layout;->notes_progress_circle_small:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/view/BottomProgressCircleManager;->isProgressOn:Z

    return p1
.end method
