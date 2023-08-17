.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEButtonChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CLICK_DELAY:J

.field private static final TAG:Ljava/lang/String;

.field private static mButtonClickedTime:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "TEButtonChecker"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CTLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEButtonChecker;->TAG:Ljava/lang/String;

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEButtonChecker;->CLICK_DELAY:J

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEButtonChecker;->mButtonClickedTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized isExecutable()Z
    .locals 5

    const-class v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEButtonChecker;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEButtonChecker;->mButtonClickedTime:J

    sub-long/2addr v1, v3

    sget-wide v3, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEButtonChecker;->CLICK_DELAY:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEButtonChecker;->TAG:Ljava/lang/String;

    const-string v2, "isExecutable(), cannot proceed"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEButtonChecker;->mButtonClickedTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
