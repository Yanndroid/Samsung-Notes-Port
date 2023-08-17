.class public Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyIsNoteEmptyAction;
.super Lcom/samsung/android/support/notes/bixby/bixby2/action/AbsBixbyAction;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BixbyIsNoteEmptyAction"


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V
    .locals 0
    .param p2    # Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p2}, Lcom/samsung/android/support/notes/bixby/bixby2/action/AbsBixbyAction;-><init>(Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;)V
    .locals 2

    const-string v0, "BixbyIsNoteEmptyAction"

    const-string v1, "execute()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionNoteListController;->getInstance()Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionNoteListController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionNoteListController;->isNoteEmpty(Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;)V

    return-void
.end method
