.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common$Note;
.super Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Note"
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)V
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->notes:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->uuid:Ljava/lang/String;

    return-void
.end method
