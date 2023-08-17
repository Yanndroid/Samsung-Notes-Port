.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardMeet;
.super Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;
.source "SourceFile"


# instance fields
.field private mIsHost:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 8

    if-eqz p1, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->live_sharing_dialog_host_title:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->live_sharing_dialog_guest_title:I

    :goto_0
    move v3, v0

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$string;->live_sharing_dialog_body:I

    if-eqz p1, :cond_1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->live_sharing_tipcard_host_select_note:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->base_string_join:I

    :goto_1
    move v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/high16 v2, 0x10000000

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;-><init>(IIIIII)V

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardMeet;->mIsHost:Z

    return-void
.end method


# virtual methods
.method public getNeutralButtonResourceId()I
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardMeet;->mIsHost:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->live_sharing_tipcard_host_create_note:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHost()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardMeet;->mIsHost:Z

    return v0
.end method
