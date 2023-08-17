.class public Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpSetAnnotations;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mHandle:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpSetAnnotations;->NoteOpSetAnnotations_construct()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpSetAnnotations;->mHandle:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpSetAnnotations;->mHandle:J

    return-void
.end method

.method private native NoteOpSetAnnotations_construct()J
.end method

.method private native NoteOpSetAnnotations_finalize(J)V
.end method

.method private native NoteOpSetAnnotations_getEndIndex(J)I
.end method

.method private native NoteOpSetAnnotations_getNewAnnotation(J)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private native NoteOpSetAnnotations_getOldAnnotation(J)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private native NoteOpSetAnnotations_setEndIndex(JI)V
.end method

.method private native NoteOpSetAnnotations_setNewAnnotation(JLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private native NoteOpSetAnnotations_setOldAnnotation(JLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method


# virtual methods
.method public getEndIndex()I
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpSetAnnotations;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpSetAnnotations;->NoteOpSetAnnotations_getEndIndex(J)I

    move-result v0

    return v0
.end method

.method public getHandle()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpSetAnnotations;->mHandle:J

    return-wide v0
.end method

.method public getNewAnnotation()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpSetAnnotations;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpSetAnnotations;->NoteOpSetAnnotations_getNewAnnotation(J)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getOldAnnotation()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpSetAnnotations;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpSetAnnotations;->NoteOpSetAnnotations_getOldAnnotation(J)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public setEndIndex(I)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpSetAnnotations;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpSetAnnotations;->NoteOpSetAnnotations_setEndIndex(JI)V

    return-void
.end method

.method public setNewAnnotation(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpSetAnnotations;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpSetAnnotations;->NoteOpSetAnnotations_setNewAnnotation(JLjava/util/Map;)V

    return-void
.end method

.method public setOldAnnotation(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpSetAnnotations;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpSetAnnotations;->NoteOpSetAnnotations_setOldAnnotation(JLjava/util/Map;)V

    return-void
.end method
