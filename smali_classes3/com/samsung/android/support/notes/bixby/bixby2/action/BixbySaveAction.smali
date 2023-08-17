.class public Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbySaveAction;
.super Lcom/samsung/android/support/notes/bixby/bixby2/action/AbsBixbyAction;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BixbySaveAction"


# instance fields
.field private mCategory:Ljava/lang/String;

.field private mContent:Ljava/lang/String;

.field private mNoteTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V
    .locals 3
    .param p2    # Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p2}, Lcom/samsung/android/support/notes/bixby/bixby2/action/AbsBixbyAction;-><init>(Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbySaveAction;->mNoteTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbySaveAction;->mContent:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbySaveAction;->mCategory:Ljava/lang/String;

    const-string p2, "params"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "noteTitle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/notes/bixby/bixby2/action/AbsBixbyAction;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbySaveAction;->mNoteTitle:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "content"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/notes/bixby/bixby2/action/AbsBixbyAction;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbySaveAction;->mContent:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "category"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/notes/bixby/bixby2/action/AbsBixbyAction;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbySaveAction;->mCategory:Ljava/lang/String;

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "params/type cannot be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public execute(Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;)V
    .locals 4

    const-string v0, "BixbySaveAction"

    const-string v1, "execute() "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionNoteListController;->getInstance()Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionNoteListController;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbySaveAction;->mNoteTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbySaveAction;->mContent:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbySaveAction;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionNoteListController;->saveNotes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;)V

    return-void
.end method
