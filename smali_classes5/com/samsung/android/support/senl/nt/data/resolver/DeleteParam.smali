.class public Lcom/samsung/android/support/senl/nt/data/resolver/DeleteParam;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final caller:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final deleteDbEntry:Z

.field private final deleteExpiredNotes:Z

.field private final deleteFile:Z

.field private final mDeleteType:I
    .annotation build Lcom/samsung/android/support/senl/nt/data/common/constants/DeleteType;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;ZZ)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/nt/data/common/constants/DeleteType;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/DeleteParam;->mDeleteType:I

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/DeleteParam;->caller:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/samsung/android/support/senl/nt/data/resolver/DeleteParam;->deleteExpiredNotes:Z

    iput-boolean p4, p0, Lcom/samsung/android/support/senl/nt/data/resolver/DeleteParam;->deleteFile:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/DeleteParam;->deleteDbEntry:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ZZZ)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/nt/data/common/constants/DeleteType;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/DeleteParam;->mDeleteType:I

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/DeleteParam;->caller:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/samsung/android/support/senl/nt/data/resolver/DeleteParam;->deleteExpiredNotes:Z

    iput-boolean p4, p0, Lcom/samsung/android/support/senl/nt/data/resolver/DeleteParam;->deleteFile:Z

    iput-boolean p5, p0, Lcom/samsung/android/support/senl/nt/data/resolver/DeleteParam;->deleteDbEntry:Z

    return-void
.end method


# virtual methods
.method public getCaller()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/DeleteParam;->caller:Ljava/lang/String;

    return-object v0
.end method

.method public getDeleteType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/DeleteParam;->mDeleteType:I

    return v0
.end method

.method public isDeleteDbEntry()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/DeleteParam;->deleteDbEntry:Z

    return v0
.end method

.method public isDeleteExpiredNotes()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/DeleteParam;->deleteExpiredNotes:Z

    return v0
.end method

.method public isDeleteFile()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/DeleteParam;->deleteFile:Z

    return v0
.end method
