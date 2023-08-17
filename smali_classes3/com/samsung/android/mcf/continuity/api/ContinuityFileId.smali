.class public interface abstract Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final THIS_DEVICE:Ljava/lang/String; = "THIS_DEVICE"


# virtual methods
.method public abstract getFileSequence()I
.end method

.method public abstract getSrcBtMac()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getTargetBtMac()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
