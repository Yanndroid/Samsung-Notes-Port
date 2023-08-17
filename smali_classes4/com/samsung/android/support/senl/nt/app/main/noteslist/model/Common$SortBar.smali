.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common$SortBar;
.super Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortBar"
.end annotation


# direct methods
.method public constructor <init>(IIZ)V
    .locals 1

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;-><init>(I)V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->sortType:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->orderType:I

    iput-boolean p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->isPinToFavorites:Z

    return-void
.end method
