.class public Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat$DisplayCutoutDelegateNotSupported;,
        Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat$DisplayCutoutDelegatePure;,
        Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat$DisplayCutoutDelegateSem;,
        Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat$WindowDisplayCutoutDelegateImpl;,
        Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat$OnApplyWindowInsetsListener;,
        Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat$DisplayCutoutRectsListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayCutoutCompat"

.field private static mInstance:Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;


# instance fields
.field private mImpl:Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat$WindowDisplayCutoutDelegateImpl;

.field private mListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat$DisplayCutoutRectsListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;->mListeners:Landroid/util/SparseArray;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1b

    if-le v0, v2, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isSemDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat$DisplayCutoutDelegateSem;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat$DisplayCutoutDelegateSem;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/view/c;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat$DisplayCutoutDelegatePure;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat$DisplayCutoutDelegatePure;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/view/b;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat$DisplayCutoutDelegateNotSupported;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat$DisplayCutoutDelegateNotSupported;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/view/a;)V

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat$WindowDisplayCutoutDelegateImpl;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;->mListeners:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;Landroid/view/WindowInsets;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;->getBoundingRects(Landroid/view/WindowInsets;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getBoundingRects(Landroid/view/WindowInsets;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowInsets;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat$WindowDisplayCutoutDelegateImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat$WindowDisplayCutoutDelegateImpl;->getBoundingRects(Landroid/view/WindowInsets;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public registerBoundingRectsListener(Landroid/view/View;Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat$DisplayCutoutRectsListener;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat$OnApplyWindowInsetsListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat$OnApplyWindowInsetsListener;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;Lcom/samsung/android/support/senl/cm/base/framework/view/d;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public setDisplayCutoutBGColor(Landroid/app/Activity;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat$WindowDisplayCutoutDelegateImpl;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat$WindowDisplayCutoutDelegateImpl;->setDisplayCutoutBGColor(Landroid/app/Activity;I)V

    return-void
.end method

.method public setDisplayCutoutMode(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat$WindowDisplayCutoutDelegateImpl;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat$WindowDisplayCutoutDelegateImpl;->setDisplayCutoutMode(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public setDisplayCutoutMode(Landroid/app/Activity;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat$WindowDisplayCutoutDelegateImpl;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat$WindowDisplayCutoutDelegateImpl;->setDisplayCutoutMode(Landroid/app/Activity;I)V

    return-void
.end method

.method public unregisterBoundingRectsListener(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/DisplayCutoutCompat;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method
