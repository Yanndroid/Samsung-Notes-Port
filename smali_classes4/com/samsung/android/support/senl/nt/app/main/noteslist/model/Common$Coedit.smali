.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common$Coedit;
.super Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common$Note;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Coedit"
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;)V
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;->getMainListEntry()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common$Note;-><init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->coeditNotes:Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;

    return-void
.end method
