.class public Lcom/samsung/android/app/notes/sync/importing/core/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/samsung/android/app/notes/sync/importing/core/e;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld1/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/importing/core/e;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/notes/sync/importing/core/e;",
            "Ljava/util/List<",
            "Ld1/d;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/d;->a:Lcom/samsung/android/app/notes/sync/importing/core/e;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/importing/core/d;->b:Ljava/util/List;

    return-void
.end method
