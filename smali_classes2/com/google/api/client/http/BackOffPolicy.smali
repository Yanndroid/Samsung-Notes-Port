.class public interface abstract Lcom/google/api/client/http/BackOffPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final STOP:J = -0x1L


# virtual methods
.method public abstract getNextBackOffMillis()J
.end method

.method public abstract isBackOffRequired(I)Z
.end method

.method public abstract reset()V
.end method
