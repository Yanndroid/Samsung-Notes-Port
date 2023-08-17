.class public Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbySearchAction;
.super Lcom/samsung/android/support/notes/bixby/bixby2/action/AbsBixbyAction;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BixbySearchAction"


# instance fields
.field private mCategory:Ljava/lang/String;

.field private mIsFavorite:Ljava/lang/String;

.field private mIsLocked:Ljava/lang/String;

.field private mKeyword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V
    .locals 4
    .param p2    # Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p2}, Lcom/samsung/android/support/notes/bixby/bixby2/action/AbsBixbyAction;-><init>(Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbySearchAction;->mKeyword:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbySearchAction;->mCategory:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbySearchAction;->mIsFavorite:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbySearchAction;->mIsLocked:Ljava/lang/String;

    const-string p2, "params"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "isFavorite"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v2, "category"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v2, "isLocked"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_3
    const-string v2, "keyword"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unexpected key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BixbySearchAction"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbySearchAction;->mIsFavorite:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/notes/bixby/bixby2/action/AbsBixbyAction;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbySearchAction;->mCategory:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_2
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbySearchAction;->mIsLocked:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_3
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/notes/bixby/bixby2/action/AbsBixbyAction;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbySearchAction;->mKeyword:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "params/type cannot be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x308ae217 -> :sswitch_3
        -0x193cdb2c -> :sswitch_2
        0x302bcfe -> :sswitch_1
        0xf5970e6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public execute(Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;)V
    .locals 8

    const-string v0, "BixbySearchAction"

    const-string v1, "execute()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionNoteListController;->getInstance()Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionNoteListController;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbySearchAction;->mKeyword:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbySearchAction;->mCategory:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbySearchAction;->mIsFavorite:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbySearchAction;->mIsLocked:Ljava/lang/String;

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionNoteListController;->searchNotes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;)V

    return-void
.end method
