.class public Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public copyFailedCount:I

.field public final newPathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final newUuidList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public ret:I

.field public uploadFailedCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;->newUuidList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;->newPathList:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;->copyFailedCount:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;->uploadFailedCount:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportReturnValues;->ret:I

    return-void
.end method
