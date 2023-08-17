.class public interface abstract Lcom/samsung/android/scs/ai/sdkcommon/image/IImageService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/scs/ai/sdkcommon/image/IImageService$Stub;,
        Lcom/samsung/android/scs/ai/sdkcommon/image/IImageService$Default;
    }
.end annotation


# virtual methods
.method public abstract detectBoundaries(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract detectLargestBoundary(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method
