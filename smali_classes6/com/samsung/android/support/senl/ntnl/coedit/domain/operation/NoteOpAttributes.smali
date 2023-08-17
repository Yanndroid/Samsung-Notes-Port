.class public Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpAttributes;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mHandle:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpAttributes;->NoteOpAttributes_construct()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpAttributes;->mHandle:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpAttributes;->mHandle:J

    return-void
.end method

.method private native NoteOpAttributes_construct()J
.end method

.method private native NoteOpAttributes_finalize(J)V
.end method

.method private native NoteOpAttributes_getAttributeKeys(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private native NoteOpAttributes_getNewAttributes(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private native NoteOpAttributes_getOldAttributes(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private native NoteOpAttributes_setAttributeKeys(JLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private native NoteOpAttributes_setNewAttributes(JLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private native NoteOpAttributes_setOldAttributes(JLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method


# virtual methods
.method public getAttributeKeys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpAttributes;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpAttributes;->NoteOpAttributes_getAttributeKeys(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHandle()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpAttributes;->mHandle:J

    return-wide v0
.end method

.method public getNewAttributes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpAttributes;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpAttributes;->NoteOpAttributes_getNewAttributes(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOldAttributes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpAttributes;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpAttributes;->NoteOpAttributes_getOldAttributes(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setAttributeKeys(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpAttributes;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpAttributes;->NoteOpAttributes_setAttributeKeys(JLjava/util/List;)V

    return-void
.end method

.method public setNewAttributes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpAttributes;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpAttributes;->NoteOpAttributes_setNewAttributes(JLjava/util/List;)V

    return-void
.end method

.method public setOldAttributes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpAttributes;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpAttributes;->NoteOpAttributes_setOldAttributes(JLjava/util/List;)V

    return-void
.end method
