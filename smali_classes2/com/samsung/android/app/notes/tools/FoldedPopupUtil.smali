.class public Lcom/samsung/android/app/notes/tools/FoldedPopupUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/tools/FoldedPopupUtil$IFoldedActivityOptionsCallback;
    }
.end annotation


# static fields
.field public static final POSTURE_LAUNCHED_KEY:Ljava/lang/String; = "posture_launched_key"

.field private static final TAG:Ljava/lang/String; = "FoldedPopupUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Landroid/content/Context;)Landroid/app/ActivityOptions;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/notes/tools/FoldedPopupUtil;->createActivityOptionsForHalfBottom(Landroid/content/Context;)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method private static createActivityOptionsForHalfBottom(Landroid/content/Context;)Landroid/app/ActivityOptions;
    .locals 8

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/DisplayUtils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    shr-int/lit8 v3, v0, 0x1

    int-to-double v4, v1

    const-wide v6, 0x3ff6666666666666L    # 1.4

    div-double/2addr v4, v6

    double-to-int v4, v4

    add-int/2addr v3, v4

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->isNavigationBarHidden(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p0

    :goto_0
    sub-int/2addr v0, p0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Haf opened : "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v4, "FoldedPopupUtil"

    invoke-static {v4, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/ContextCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/ContextCompat;

    move-result-object p0

    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/ContextCompat;->makeLaunchBoundOption(IIII)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public static getFoldedActivityOptions(Landroid/content/Context;Lcom/samsung/android/app/notes/tools/FoldedPopupUtil$IFoldedActivityOptionsCallback;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->getFoldDirection(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lcom/samsung/android/app/notes/tools/FoldedPopupUtil$IFoldedActivityOptionsCallback;->onCompleted(Landroid/app/ActivityOptions;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/notes/tools/FoldedPopupUtil$1;

    invoke-direct {v2, v0, p0, p1}, Lcom/samsung/android/app/notes/tools/FoldedPopupUtil$1;-><init>(ILandroid/content/Context;Lcom/samsung/android/app/notes/tools/FoldedPopupUtil$IFoldedActivityOptionsCallback;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->getFoldState(Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat$FolderStateCallback;)V

    return-void
.end method
