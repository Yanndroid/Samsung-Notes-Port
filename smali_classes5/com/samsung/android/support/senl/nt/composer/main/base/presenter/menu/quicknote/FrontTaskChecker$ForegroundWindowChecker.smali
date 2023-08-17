.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$ForegroundWindowChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForegroundWindowChecker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$ForegroundWindowChecker;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$ForegroundWindowChecker;Ljava/util/List;ILcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$WindowsOnForeground;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$ForegroundWindowChecker;->checkForegroundWindows(Ljava/util/List;ILcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$WindowsOnForeground;)V

    return-void
.end method

.method private checkForegroundWindows(Ljava/util/List;ILcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$WindowsOnForeground;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;I",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$WindowsOnForeground;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker;->getWindowMode(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v6

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkForegroundWindows# pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " windowMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$ForegroundWindowChecker;->travelTask(Ljava/util/List;ILcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$WindowsOnForeground;Landroid/app/ActivityManager$RunningTaskInfo;I)V

    return-void
.end method


# virtual methods
.method public checkFreeForm(Ljava/util/List;ILcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$WindowsOnForeground;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;I",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$WindowsOnForeground;",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ")V"
        }
    .end annotation

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$WindowsOnForeground;->getFreeFormWindows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$ForegroundWindowChecker;->checkForegroundWindows(Ljava/util/List;ILcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$WindowsOnForeground;)V

    return-void
.end method

.method public checkFullScreen(Ljava/util/List;ILcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$WindowsOnForeground;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;I",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$WindowsOnForeground;",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ")V"
        }
    .end annotation

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$WindowsOnForeground;->getFrontWindows()Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p2, p2, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    if-ge p2, p4, :cond_1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker;->getWindowMode(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$WindowsOnForeground;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$WindowsOnForeground;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public checkNextSplitScreen(Ljava/util/List;I[Landroid/app/ActivityManager$RunningTaskInfo;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$WindowsOnForeground;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;I[",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$WindowsOnForeground;",
            ")V"
        }
    .end annotation

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_6

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker;->getWindowMode(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    goto :goto_2

    :cond_0
    const/16 v3, 0xc

    if-ne v1, v3, :cond_2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$ForegroundWindowChecker;->getFrontTaskInfoArrayIndex(I)I

    move-result v1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    array-length v2, p3

    if-ge v1, v2, :cond_5

    aget-object v2, p3, v1

    if-nez v2, :cond_1

    aput-object v0, p3, v1

    goto :goto_1

    :cond_2
    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    invoke-static {p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$WindowsOnForeground;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$WindowsOnForeground;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$ForegroundWindowChecker;->getFrontTaskInfoArrayIndex(I)I

    move-result v1

    aget-object v2, p3, v1

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    aput-object v0, p3, v1

    :cond_5
    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public checkSplitScreen(Ljava/util/List;ILcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$WindowsOnForeground;Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;I",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$WindowsOnForeground;",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            "I)V"
        }
    .end annotation

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$WindowsOnForeground;->getFrontWindows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/app/ActivityManager$RunningTaskInfo;

    const/16 v2, 0xc

    if-ne p5, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$ForegroundWindowChecker;->getFrontTaskInfoArrayIndex(I)I

    move-result p5

    add-int/lit8 p5, p5, 0x1

    aput-object p4, v1, p5

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$ForegroundWindowChecker;->getFrontTaskInfoArrayIndex(I)I

    move-result p5

    aput-object p4, v1, p5

    :goto_0
    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$ForegroundWindowChecker;->checkNextSplitScreen(Ljava/util/List;I[Landroid/app/ActivityManager$RunningTaskInfo;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$WindowsOnForeground;)V

    const/4 p1, 0x0

    :goto_1
    if-ge p1, v0, :cond_2

    aget-object p2, v1, p1

    if-eqz p2, :cond_1

    invoke-virtual {p4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_1

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$WindowsOnForeground;->getFrontWindows()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public getFrontTaskInfoArrayIndex(I)I
    .locals 0

    add-int/lit8 p1, p1, -0x3

    return p1
.end method

.method public travelTask(Ljava/util/List;ILcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$WindowsOnForeground;Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;I",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$WindowsOnForeground;",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p5, v0, :cond_2

    const/16 v0, 0xc

    if-eq p5, v0, :cond_1

    const/4 v0, 0x3

    if-eq p5, v0, :cond_1

    const/4 v0, 0x4

    if-eq p5, v0, :cond_1

    const/4 v0, 0x5

    if-eq p5, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker;->a()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "isFrontTask# unexpected windowMode: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " index: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$ForegroundWindowChecker;->checkFreeForm(Ljava/util/List;ILcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$WindowsOnForeground;Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$ForegroundWindowChecker;->checkSplitScreen(Ljava/util/List;ILcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$WindowsOnForeground;Landroid/app/ActivityManager$RunningTaskInfo;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$ForegroundWindowChecker;->checkFullScreen(Ljava/util/List;ILcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$WindowsOnForeground;Landroid/app/ActivityManager$RunningTaskInfo;)V

    :goto_0
    return-void
.end method
