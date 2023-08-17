.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/executors/NoneExecutor;
.super Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/executors/AbsExecutor;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "NoneExecutor"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/executors/NoneExecutor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/executors/AbsExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/executors/NoneExecutor;->TAG:Ljava/lang/String;

    const-string p2, "execute to do nothing"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
