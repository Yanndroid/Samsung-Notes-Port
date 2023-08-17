.class public Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat$WindowInsetsDelegateBelowRImpl;,
        Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat$WindowInsetsDelegateImpl;,
        Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat$WindowInsetsImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowInsetCompat"

.field private static mInstance:Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat;


# instance fields
.field private mImpl:Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat$WindowInsetsDelegateImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat$WindowInsetsDelegateImpl;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat$WindowInsetsDelegateImpl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/view/f;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat$WindowInsetsDelegateBelowRImpl;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat$WindowInsetsDelegateBelowRImpl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/view/e;)V

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat$WindowInsetsDelegateImpl;

    return-void
.end method

.method public static bridge synthetic a(IIIIZI)I
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat;->findRotationByWindowInsetsInner(IIIIZI)I

    move-result p0

    return p0
.end method

.method private static findRotationByWindowInsetsInner(IIIIZI)I
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-nez p1, :cond_0

    if-nez p3, :cond_0

    if-nez p0, :cond_0

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-lez p3, :cond_1

    const/4 p5, 0x0

    goto :goto_1

    :cond_1
    if-le p2, p0, :cond_4

    if-eqz p4, :cond_3

    :cond_2
    move p5, v0

    goto :goto_1

    :cond_3
    :goto_0
    move p5, v1

    goto :goto_1

    :cond_4
    if-ge p2, p0, :cond_5

    if-eqz p4, :cond_2

    goto :goto_0

    :cond_5
    const/4 p5, 0x2

    :goto_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "findRotationByWindowInsetsInner# top/bottom/left/right/rotation "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowInsetCompat"

    invoke-static {p1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p5
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat;
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
.method public findRotationByWindowInsets(Landroid/view/WindowInsets;ZI)I
    .locals 1

    if-nez p1, :cond_0

    return p3

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat$WindowInsetsDelegateImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat$WindowInsetsDelegateImpl;->findRotationByWindowInsets(Landroid/view/WindowInsets;ZI)I

    move-result p1

    return p1
.end method

.method public isFullScreenWindow(Landroid/view/WindowInsets;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat$WindowInsetsDelegateImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat$WindowInsetsDelegateImpl;->isFullScreenWindow(Landroid/view/WindowInsets;)Z

    move-result p1

    return p1
.end method

.method public setFitInsetsTypesNavigationBar(Landroid/view/Window;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat$WindowInsetsDelegateImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat$WindowInsetsDelegateImpl;->setFitInsetsTypesNavigationBar(Landroid/view/Window;)V

    return-void
.end method
