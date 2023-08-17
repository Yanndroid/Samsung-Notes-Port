.class public Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyDeleteAction;
.super Lcom/samsung/android/support/notes/bixby/bixby2/action/AbsBixbyAction;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BixbyDeleteAction"


# instance fields
.field private mNoteId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V
    .locals 2
    .param p2    # Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p2}, Lcom/samsung/android/support/notes/bixby/bixby2/action/AbsBixbyAction;-><init>(Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyDeleteAction;->mNoteId:Ljava/lang/String;

    const-string p2, "params"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "noteId"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyDeleteAction;->mNoteId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyDeleteAction;->mNoteId:Ljava/lang/String;

    if-eqz p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "mandatory param(s) missing."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "params/type cannot be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public execute(Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "execute() - noteId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyDeleteAction;->mNoteId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BixbyDeleteAction"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;

    invoke-direct {v0}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;-><init>()V

    const-string v2, "failure"

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->setResult(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->setDescription(Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyDeleteAction;->mNoteId:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string p1, "noteId is null"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/notes/bixby/bixby2/action/AbsBixbyAction;->mCallback:Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;->onComplete(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "\\,"

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionNoteListController;->getInstance()Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionNoteListController;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyDeleteAction$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyDeleteAction$1;-><init>(Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyDeleteAction;Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;Lcom/google/gson/Gson;)V

    invoke-virtual {v3, v1, p1, v4}, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionNoteListController;->deleteNotes([Ljava/lang/String;Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;Ljava/lang/Runnable;)V

    return-void
.end method
