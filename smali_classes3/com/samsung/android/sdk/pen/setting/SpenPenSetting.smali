.class public interface abstract Lcom/samsung/android/sdk/pen/setting/SpenPenSetting;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;
.end method

.method public abstract setInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V
    .param p1    # Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setPenInfoChangedListener(Lcom/samsung/android/sdk/pen/setting/pencommon/PenInfoChangedListener;)V
.end method

.method public abstract setPenInfoList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;",
            ">;)V"
        }
    .end annotation
.end method
