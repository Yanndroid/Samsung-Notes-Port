.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SimpleViewNoThumbnailHolder;
.super Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SimpleViewHolder;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SimpleViewNoThumbnailHolder"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SimpleViewHolder;-><init>(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public decorateThumbnail(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mNotesHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->getLockType()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isLock(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->decorateLockNote()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->removeImageView()V

    return-void
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "SimpleViewNoThumbnailHolder"

    return-object v0
.end method
