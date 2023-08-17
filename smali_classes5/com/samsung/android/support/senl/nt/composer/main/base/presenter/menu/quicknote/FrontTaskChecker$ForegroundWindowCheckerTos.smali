.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$ForegroundWindowCheckerTos;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$ForegroundWindowChecker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForegroundWindowCheckerTos"
.end annotation


# static fields
.field private static final SPLIT_BASE:I = 0x3

.field private static final STAGE_POSITION_BOTTOM:I = 0x40

.field private static final STAGE_POSITION_LEFT:I = 0x8

.field private static final STAGE_POSITION_RIGHT:I = 0x20

.field private static final STAGE_POSITION_TOP:I = 0x10

.field private static final STAGE_TYPE_CELL:I = 0x4

.field private static final STAGE_TYPE_MAIN:I = 0x1

.field private static final STAGE_TYPE_SIDE:I = 0x2

.field private static final STAGE_UNDEFINED:I


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$ForegroundWindowChecker;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/a;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$ForegroundWindowCheckerTos;-><init>()V

    return-void
.end method


# virtual methods
.method public checkSplitScreen(Ljava/util/List;ILcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$WindowsOnForeground;Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 8
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

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

    invoke-virtual {p0, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$ForegroundWindowCheckerTos;->getStagePosition(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result p5

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSplitScreen# i: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " pos: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/app/ActivityManager$RunningTaskInfo;

    if-ltz p5, :cond_0

    aput-object p4, v1, p5

    :cond_0
    :goto_0
    add-int/lit8 p2, p2, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    if-ge p2, p4, :cond_3

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker;->getWindowMode(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result p5

    const/4 v5, 0x6

    if-ne p5, v5, :cond_2

    invoke-virtual {p0, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$ForegroundWindowCheckerTos;->isAlwaysOnTop(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$ForegroundWindowCheckerTos;->getStagePosition(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result p5

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker;->a()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p5, :cond_0

    aget-object v5, v1, p5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    aput-object p4, v1, p5

    goto :goto_0

    :cond_2
    const/4 v5, 0x5

    if-ne p5, v5, :cond_0

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$WindowsOnForeground;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$WindowsOnForeground;)Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-ge p1, v0, :cond_5

    aget-object p2, v1, p1

    if-eqz p2, :cond_4

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$WindowsOnForeground;->getFrontWindows()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public getStagePosition(Landroid/app/ActivityManager$RunningTaskInfo;)I
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$ForegroundWindowCheckerTos;->getWindowConfiguration(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker;->a()Ljava/lang/String;

    move-result-object p1

    const-string v1, "getStagePosition# windowConfiguration is null"

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getStagePosition"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-le p1, v2, :cond_1

    shr-int/lit8 p1, p1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, -0x3

    return v3

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    :goto_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStagePosition# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getWindowConfiguration(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/Object;
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    :try_start_0
    const-class v0, Landroid/app/TaskInfo;

    const-string v1, "getConfiguration"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Configuration;

    const-class v0, Landroid/content/res/Configuration;

    const-string v2, "windowConfiguration"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    :goto_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWindowConfiguration# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public isAlwaysOnTop(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$ForegroundWindowCheckerTos;->getWindowConfiguration(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker;->a()Ljava/lang/String;

    move-result-object p1

    const-string v1, "isAlwaysOnTop# windowConfiguration is null"

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isAlwaysOnTop"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAlwaysOnTop# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public travelTask(Ljava/util/List;ILcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$WindowsOnForeground;Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

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

    if-eq p5, v0, :cond_3

    const/4 v0, 0x5

    if-eq p5, v0, :cond_2

    const/4 v0, 0x6

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

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$ForegroundWindowCheckerTos;->isAlwaysOnTop(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$ForegroundWindowCheckerTos;->checkSplitScreen(Ljava/util/List;ILcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$WindowsOnForeground;Landroid/app/ActivityManager$RunningTaskInfo;I)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$ForegroundWindowChecker;->checkFreeForm(Ljava/util/List;ILcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$WindowsOnForeground;Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$ForegroundWindowChecker;->checkFullScreen(Ljava/util/List;ILcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker$WindowsOnForeground;Landroid/app/ActivityManager$RunningTaskInfo;)V

    :goto_1
    return-void
.end method
