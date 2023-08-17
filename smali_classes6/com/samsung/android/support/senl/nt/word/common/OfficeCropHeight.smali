.class public Lcom/samsung/android/support/senl/nt/word/common/OfficeCropHeight;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public current:I

.field public previous:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/word/common/OfficeCropHeight;->previous:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/word/common/OfficeCropHeight;->current:I

    return-void
.end method


# virtual methods
.method public getCurrent()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/word/common/OfficeCropHeight;->current:I

    return v0
.end method

.method public getPrevious()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/word/common/OfficeCropHeight;->previous:I

    return v0
.end method

.method public setCurrent(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/word/common/OfficeCropHeight;->current:I

    return-void
.end method

.method public setPrevious(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/word/common/OfficeCropHeight;->previous:I

    return-void
.end method
