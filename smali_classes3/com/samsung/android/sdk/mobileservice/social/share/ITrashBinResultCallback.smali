.class public interface abstract Lcom/samsung/android/sdk/mobileservice/social/share/ITrashBinResultCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/mobileservice/social/share/ITrashBinResultCallback$Stub;,
        Lcom/samsung/android/sdk/mobileservice/social/share/ITrashBinResultCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onFailure(JLjava/lang/String;)V
.end method

.method public abstract onSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation
.end method
