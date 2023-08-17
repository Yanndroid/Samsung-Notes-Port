.class public interface abstract Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenViewInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getParticleSize()F
.end method

.method public abstract getPenColor()I
.end method

.method public abstract getPenName()Ljava/lang/String;
.end method

.method public abstract getPenSizeLevel()I
.end method

.method public abstract isFixedWidth()Z
.end method

.method public abstract setFixedWidth(Z)V
.end method

.method public abstract setParticleSize(F)V
.end method

.method public abstract setPenColor(I)V
.end method

.method public abstract setPenColorEnabled(Z)V
.end method

.method public abstract setPenInfo(Ljava/lang/String;IIFZ)Z
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setPenSizeLevel(I)V
.end method
