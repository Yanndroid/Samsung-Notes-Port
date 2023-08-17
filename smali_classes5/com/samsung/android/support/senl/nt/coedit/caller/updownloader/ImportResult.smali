.class public Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public newPath:Ljava/lang/String;

.field public newUuid:Ljava/lang/String;

.field public ret:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;->newUuid:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;->newPath:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;->ret:I

    return-void
.end method
