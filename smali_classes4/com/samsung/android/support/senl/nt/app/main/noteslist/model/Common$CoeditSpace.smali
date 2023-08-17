.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common$CoeditSpace;
.super Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CoeditSpace"
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;)V
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->space:Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/SpaceEntry;

    return-void
.end method
