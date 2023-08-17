.class public Lcom/samsung/android/app/notes/sync/contentsharing/sessession/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:Lcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;

.field public d:Z


# direct methods
.method public constructor <init>(ILcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/i;->b:I

    iput-boolean v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/i;->d:Z

    iput p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/i;->a:I

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/i;->c:Lcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;

    return-void
.end method
