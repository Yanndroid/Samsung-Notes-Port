.class public interface abstract Lcom/samsung/android/sdk/mobileservice/place/IMobileServicePlace;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/mobileservice/place/IMobileServicePlace$Stub;,
        Lcom/samsung/android/sdk/mobileservice/place/IMobileServicePlace$Default;
    }
.end annotation


# virtual methods
.method public abstract getCurrentCount()I
.end method

.method public abstract getMaxCount()I
.end method

.method public abstract getPlaceList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract requestPlaceCreate(Landroid/os/Bundle;Lcom/samsung/android/sdk/mobileservice/place/IPlaceResultCallback;)V
.end method

.method public abstract requestPlaceDelete(Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/place/IPlaceResultCallback;)V
.end method

.method public abstract requestPlaceUpdate(Landroid/os/Bundle;Lcom/samsung/android/sdk/mobileservice/place/IPlaceResultCallback;)V
.end method

.method public abstract requestSync(Lcom/samsung/android/sdk/mobileservice/place/IPlaceResultCallback;)V
.end method

.method public abstract searchPlaces(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end method
