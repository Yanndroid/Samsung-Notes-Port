.class public interface abstract Lcom/microsoft/identity/common/java/util/IClockSkewManager;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAdjustedReferenceTime()Ljava/util/Date;
.end method

.method public abstract getCurrentClientTime()Ljava/util/Date;
.end method

.method public abstract getSkewMillis()J
.end method

.method public abstract onTimestampReceived(J)V
.end method

.method public abstract toClientTime(J)Ljava/util/Date;
.end method

.method public abstract toReferenceTime(J)Ljava/util/Date;
.end method
