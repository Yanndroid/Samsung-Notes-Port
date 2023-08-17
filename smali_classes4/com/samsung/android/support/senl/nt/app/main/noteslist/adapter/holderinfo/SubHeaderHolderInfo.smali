.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubHeaderHolderInfo;
.super Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;
.source "SourceFile"


# instance fields
.field private mId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubHeaderHolderInfo;->mId:J

    return-wide v0
.end method

.method public setId(J)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubHeaderHolderInfo;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubHeaderHolderInfo;->mId:J

    return-object p0
.end method
