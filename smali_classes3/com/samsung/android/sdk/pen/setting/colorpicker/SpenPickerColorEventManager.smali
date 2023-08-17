.class Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColorEventManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColorEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColorEventManager;->mListeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColorEventManager;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColorEventManager;->mListeners:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public notify(Ljava/lang/String;I[F)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColorEventManager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColorEventListener;

    const/4 v1, 0x0

    aget v5, p3, v1

    const/4 v1, 0x1

    aget v6, p3, v1

    const/4 v1, 0x2

    aget v7, p3, v1

    move-object v3, p1

    move v4, p2

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColorEventListener;->update(Ljava/lang/String;IFFF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public subscribe(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColorEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColorEventManager;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public unsubscribe(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColorEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColorEventManager;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
