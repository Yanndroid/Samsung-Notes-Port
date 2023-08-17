.class public Lcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog$LogParam;
    }
.end annotation


# static fields
.field private static final APP_TAG:Ljava/lang/String; = "SENL$"

.field private static final mEnablePrint:Z = true

.field private static final mPrefix:Ljava/lang/String; = "[NotesLaunch]"

.field private static snapshotTime:J

.field private static startTime:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Lcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog$LogParam;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog$LogParam;->mTag:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog$LogParam;->mMsg:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog$LogParam;->mSnapshot:Z

    invoke-static {v0, v1, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog;->startTime:J

    sub-long v2, v0, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", time : "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    sput-wide v0, Lcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog;->startTime:J

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    if-eqz p2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", snapshot time : "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog;->startTime:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog;->snapshotTime:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    sput-wide v0, Lcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog;->snapshotTime:J

    sput-wide v0, Lcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog;->startTime:J

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static printLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "SENL$"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[NotesLaunch]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
