.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common$SubHeader;
.super Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubHeader"
.end annotation


# direct methods
.method public constructor <init>(J)V
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;-><init>(I)V

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;->id:J

    return-void
.end method
