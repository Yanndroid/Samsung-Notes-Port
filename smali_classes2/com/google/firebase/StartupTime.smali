.class public abstract Lcom/google/firebase/StartupTime;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(JJJ)Lcom/google/firebase/StartupTime;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v7, Lcom/google/firebase/AutoValue_StartupTime;

    move-object v0, v7

    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/AutoValue_StartupTime;-><init>(JJJ)V

    return-object v7
.end method

.method public static now()Lcom/google/firebase/StartupTime;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/google/firebase/StartupTime;->create(JJJ)Lcom/google/firebase/StartupTime;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract getElapsedRealtime()J
.end method

.method public abstract getEpochMillis()J
.end method

.method public abstract getUptimeMillis()J
.end method
