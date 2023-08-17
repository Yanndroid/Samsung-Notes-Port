.class public Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver$HandoffContentObserverListener;,
        Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver$LoadHandoffDataCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HandoffContentObserver"


# instance fields
.field private mHandoffContentObserverListener:Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver$HandoffContentObserverListener;

.field private mLastExecutedHandoffAction:J

.field private mNeedToDataSendingSuccess:Z

.field private mNeedToHandoff:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver;->mNeedToHandoff:Z

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver;->mNeedToDataSendingSuccess:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver;->mLastExecutedHandoffAction:J

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver;)Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver$HandoffContentObserverListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver;->mHandoffContentObserverListener:Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver$HandoffContentObserverListener;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver;J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver;->mLastExecutedHandoffAction:J

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "content://com.samsung.android.mcfds.HandoffProvider/EventChanged"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver;->mHandoffContentObserverListener:Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver$HandoffContentObserverListener;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver$HandoffContentObserverListener;->update()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "content://com.samsung.android.mcfds.HandoffProvider/DataSendingSuccess/com.samsung.android.app.notes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver;->mNeedToDataSendingSuccess:Z

    if-eqz p1, :cond_1

    const-string p1, "HandoffContentObserver"

    const-string p2, "DataSendingSuccess"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver;->mHandoffContentObserverListener:Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver$HandoffContentObserverListener;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver$HandoffContentObserverListener;->sendSuccess()V

    :cond_1
    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver;->mNeedToDataSendingSuccess:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "content://com.samsung.android.mcfds.HandoffProvider/DataReceivingSuccess/com.samsung.android.app.notes"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->getLastModifiedHandoffActionTime()J

    move-result-wide p1

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver;->mNeedToHandoff:Z

    if-eqz v1, :cond_4

    iget-wide v1, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver;->mLastExecutedHandoffAction:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver;->mNeedToHandoff:Z

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver$1;-><init>(Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver;J)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->loadHandoffData(Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver$LoadHandoffDataCallback;)V

    nop

    :cond_4
    :goto_0
    return-void
.end method

.method public setHandoffContentObserverListener(Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver$HandoffContentObserverListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver;->mHandoffContentObserverListener:Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver$HandoffContentObserverListener;

    return-void
.end method

.method public setNeedToDataSendingSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver;->mNeedToDataSendingSuccess:Z

    return-void
.end method

.method public setNeedToHandoff(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver;->mNeedToHandoff:Z

    return-void
.end method
