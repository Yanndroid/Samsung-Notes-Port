.class public interface abstract Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteData;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addFavorite(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z
.end method

.method public abstract setFavoriteDataChangedListener(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataChangedListener;)V
.end method

.method public abstract setFavoriteList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateFavorite(ILcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z
.end method
