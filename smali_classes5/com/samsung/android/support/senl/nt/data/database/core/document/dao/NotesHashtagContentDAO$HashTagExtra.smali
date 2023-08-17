.class public final Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HashTagExtra"
.end annotation


# static fields
.field public static final DELETE:I = 0x2

.field public static final INSERT:I = 0x0

.field public static final UPDATE:I = 0x1

.field public static final UPDATE_LAST_ADDED_TIME:I = 0x3


# instance fields
.field private final mContentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;

.field private final mEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;

.field private final mOperation:I


# direct methods
.method public constructor <init>(ILcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;->mOperation:I

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;->mContentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;->mEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;

    return-void
.end method


# virtual methods
.method public getContentEntity()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;->mContentEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagContentEntity;

    return-object v0
.end method

.method public getEntity()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;->mEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesHashtagEntity;

    return-object v0
.end method

.method public getOperation()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/dao/NotesHashtagContentDAO$HashTagExtra;->mOperation:I

    return v0
.end method
