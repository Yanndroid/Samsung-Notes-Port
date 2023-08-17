.class Lcom/samsung/android/support/senl/cm/base/framework/sem/view/WindowManagerCompatImplFactory$WindowManagerCompatSemPostOImpl;
.super Lcom/samsung/android/support/senl/cm/base/framework/sem/view/WindowManagerCompatImplFactory$WindowManagerCompatSemImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/framework/sem/view/WindowManagerCompatImplFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowManagerCompatSemPostOImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/WindowManagerCompatImplFactory$WindowManagerCompatSemImpl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/view/n;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/view/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/WindowManagerCompatImplFactory$WindowManagerCompatSemPostOImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public isFreeFormWindow(Landroid/app/Activity;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/WindowManagerCompatImplFactory$WindowManagerCompatSemImpl;->getMultiWindowMode(Landroid/app/Activity;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
